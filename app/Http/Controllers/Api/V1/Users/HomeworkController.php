<?php

namespace App\Http\Controllers\Api\V1\Users;

use App\Http\Controllers\Controller;

use App\Models\Homework;
use App\Models\Question;
use App\Models\HomeworkAnswers;
use App\Models\HomeScore;
use App\Models\QuestionOption;

use App\Http\Resources\QuestionsResource;

use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Yajra\DataTables\Facades\DataTables;

class HomeworkController extends Controller
{
    public function index(Request $request)
    {
		try {
			$homeworks = Homework::where('grade_id' , auth('sanctum')->user()->grade->id )
				->select( 'id','title' , 'created_at')->orderBy('created_at', 'DESC')->get();


			if( $homeworks->count() > 0 ) {


				return response()->json([
					'status'   => true,
					'homework' =>  $homeworks,
				]);

			}

			return response()->json([
				'status' => false,
				'msg' => 'Not found',
			]);

		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

	public function questions(Request $request)
    {

		try {

			$homework  = Homework::find( $request->homework_id );

			$questions = $homework->questions()->select( 'id','question_text' ,'photo')->paginate(1);


			return response()->json([
				'status'   => true,
				'questions' =>  QuestionsResource::collection($questions ),

				'links' => [
					'lastPage' => $questions->lastPage(),
					'perPage' => $questions->perPage(),
					'currentPage' => $questions->currentPage(),
					'nextPageUrl' => $questions->nextPageUrl(),
					'previousPageUrl' => $questions->previousPageUrl(),
				],
			]);

		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
	}

	public function assignToHomework(Request $request)
    {
		
		try {
			
			$checkHomeScroe = $homeScore = HomeScore::where([
								'home_id'		=> $request->homework_id,
								'student_id'	=> auth('sanctum')->user()->id,
							])->count();
														
			if( $checkHomeScroe == 0 )
					$homeScore = HomeScore::create([
						'home_id'		=> $request->homework_id,
						'student_id'	=> auth('sanctum')->user()->id,
						'score'			=> 0
					]);
					
			if( $homeScore )				
				return response()->json([
					'status'   => true,
					'message' =>"Added Successfully" ,
				]);
				
			return response()->json([
					'status'   => false,
					'message' =>"There is an error" ,
				]);
				
		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
		
	}
	
	
	
	public function addAnswer(Request $request)
    {
		
		try {
				$homework_id = $request->homework_id ;
				
				//homeScore as like session
				$homeScoreID = HomeScore::where([
								'home_id'		=> $request->homework_id ,
								'student_id'	=> auth('sanctum')->user()->id,
							])->pluck('id')->first();
							
				$homeworkScore = 3;
				
				foreach ( $request->option_id as $option )
				{
					$optionInfo = QuestionOption::find( $option );
					
					$checkAnswerdBefor = HomeworkAnswers::where([
								'home_scores_id'=> $homeScoreID,
								'question_id'	=> $optionInfo->question->id,					
							])->count();
					
					if($checkAnswerdBefor  < 1 )
					{		
						if( $option == $optionInfo->question->options()->where('is_correct' ,1 )->pluck('id')->first() )
						{
							HomeworkAnswers::create([
									'is_correct'	 => 1,
									'home_scores_id' => $homeScoreID,
									'question_id'	 => $optionInfo->question->id,
									'option_id'		 => $option ,
							]);							
						}
						else{
							HomeworkAnswers::create([
									'is_correct'	 => 0,
									'home_scores_id' => $homeScoreID,
									'question_id'	 => $optionInfo->question->id,
									'option_id'		 => $option ,
							]);	

							if( $homeworkScore > 0 )
								$homeworkScore = $homeworkScore - 1 ;							
						}
						HomeScore::where('id' , $homeScoreID )->update(['score'=>$homeworkScore]);
					}
				}
				
			return response()->json([
				'status'   => true,
				'message' =>"Added Successfully",
			]);
			
				
		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
		
	}
}
