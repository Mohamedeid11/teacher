<?php


namespace App\Http\Controllers\Api\V1\Users;


use App\Http\Controllers\Controller;
use App\Http\Requests\QaTopicCreateRequest;
use App\Http\Requests\QaTopicReplyRequest;
use App\Models\QaTopic;
use App\Models\User;
use Auth;
use Carbon\Carbon;

use App\Http\Resources\TopicResource;

use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Validator;

class MessengerController extends Controller
{

	public function inbox()
    {
        $topics = QaTopic::where('receiver_id', auth('sanctum')->user()->id )
            ->orderBy('created_at', 'DESC')
            ->limit(10)->get();


		if( $topics )
			return response()->json([
				'status'   => true,
				'subjects' =>  TopicResource::collection( $topics ),
			]);


		return response()->json([
				'status' => false,
				'msg' => 'Not found',
			]);

    }

    public function showOutbox()
    {

        try {

            $student_id = auth('sanctum')->user()->id;

            $topics = QaTopic::where('creator_id', $student_id)
                ->orderBy('created_at', 'DESC')
                ->limit(10)->get();

            if ( $topics )
            {
                return response()->json([
                    'status' => true,
                    'subjects' => TopicResource::collection($topics),
                ]);

            }else{
                return response()->json([
                    'status' => false,
                    'msg' => 'Not found',
                ]);
            }
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }

    }

    public function storeTopic(Request $request)
    {

        try {

            $admin_id = User::where('id' , 1)->first();
            $student_id = auth('sanctum')->user()->id;

            $topic = QaTopic::create([
                'subject'     => $request->subject,
                'content'     => $request->content_text,
                'creator_id' => $student_id,
                'receiver_id' => $admin_id->id,
            ]);

            $topic->messages()->create([
                'sender_id' => $student_id,
                'content'   => $request->content_text,
            ]);

            if ( $topic )
            {
                return response()->json([
                    'status' => true,
                    'msg' => 'Your Message Sent successfully',
                ]);
//                return new TopicResource($topic);


            }else{
                return response()->json([
                    'status' => false,
                    'msg' => 'Message Did not Sent',
                ]);
            }

        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }

    }



    public function showMessages(Request $request)
    {
        try {
            $topic = QaTopic::findOrFail($request->topic_id);

            $student_id = auth('sanctum')->user()->id;


//            $this->checkAccessRights($topic);
            foreach ($topic->messages as $message) {
                if ($message->sender_id != $student_id && $message->read_at == null) {
                    $message->read_at = Carbon::now();
                    $message->save();
                }
            }
            if ( $topic )
            {
                return response()->json([
                    'status' => true,
                    'msg' =>  new TopicResource($topic),
                ]);

            }else{
                return response()->json([
                    'status' => false,
                    'msg' => 'No messages',
                ]);
            }

        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }


    }

}
