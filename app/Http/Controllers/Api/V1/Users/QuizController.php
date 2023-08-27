<?php

namespace App\Http\Controllers\Api\V1\Users;

use App\Http\Controllers\Controller;
use App\Http\Resources\GetQuizResource;
use App\Http\Resources\QuizResource;
use App\Http\Resources\QuizResultsResource;
use App\Http\Resources\TestResultsResource;

use App\Http\Resources\QuestionsResource;

use App\Models\Question;
use App\Models\QuestionOption;
use App\Models\Test;
use App\Models\TestAnswer;
use App\Models\TestResult;
use App\Models\User;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;


class QuizController extends Controller
{


	public function index( Request $request )
	{

		try {
			$quizzes = Test::where(['is_published' => 1 , 'grade_id' => $request->grade_id ])
						->select('id' , 'title','duration')->paginate(6);


			if( $quizzes->count() > 0 )
				return response()->json([
					'status' => true,
					'quizzes' => $quizzes,
				]);

			return response()->json([
					'status' => false,
					'message' => __('not-found'),
				],404);

		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }

	}

    public function getGradeId()
    {
        $user_id = auth('sanctum')->user()->id;

        $grade = User::select('grade_id')->where('id',$user_id )->first();

        return $grade->grade_id;
    }

	public function unit()
	{
		try {
            $grade_id = $this->getGradeId();
            $unit = Test::IsPublished()->where('grade_id' , $grade_id )
                ->select('unit')->groupBy('tests.unit')->get();

			if( $unit )
				return response()->json([
					'status' => true,
					'unit' => $unit,
				]);

			return response()->json([
					'status' => false,
					'message' => __('not-found'),
				],404);

		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }

	}


    public function lesson( Request $request )
    {
        try {

            $grade_id = $this->getGradeId();

            $lesson = Test::IsPublished()->where('grade_id' ,$grade_id)->where('unit' ,$request->unit)
                ->select('lesson')->groupBy('tests.lesson')->get();

            if( $lesson )
                return response()->json([
                    'status' => true,
                    'lesson' => $lesson,
                ]);

            return response()->json([
                'status' => false,
                'message' => __('not-found'),
            ],404);

        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }

    }

    public function allQuizzes( Request $request )
    {

        try {

            $grade_id = $this->getGradeId();

            $quizzes = Test::IsPublished()->where('grade_id' ,$grade_id)->where('unit' ,$request->unit)
                ->where('lesson' , $request->lesson)->select('id' , 'title' , 'duration')->get();


            if( $quizzes ){
                return response()->json([
                    'status' => true,
                    'quizzes' => QuizResource::collection($quizzes ),
                ]);
            }

        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }

    }

    public function Quiz( Request $request )
    {
        try {
            $quiz = Test::where('id' ,$request->test_id)->select('id','title' , 'description')->first();
			
            $questions = Question::with('options')->where('test_id' , $request->test_id )->paginate(1);
            if ( $quiz )
            {
                return response()->json([
                    'status' => true,
					'quiz'=> $quiz,
					
					'questions' =>  QuestionsResource::collection($questions ),

					'links' => [
						'lastPage' => $questions->lastPage(),
						'perPage' => $questions->perPage(),
						'currentPage' => $questions->currentPage(),
						'nextPageUrl' => $questions->nextPageUrl(),
						'previousPageUrl' => $questions->previousPageUrl(),
					],
                ]);

            }
        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

    public function assignQuizToStudent(Request $request)
    {
        try {
            $student_id = auth('sanctum')->user()->id;

            $testResults = TestResult::where(['test_id' =>$request->test_id , 'student_id' => $student_id])->get();

            if ( $testResults->count() > 0 ){
                return response()->json([
                    'status' => false,
                    'message' => "This Test is Assigned Before"
                ], 500);
            }else{

                $questions = Question::with('test','options')->where('test_id' , $request->test_id)->get();

//                $points =$questions->sum('points');

                $testResult = new TestResult();

                $testResult->test_id = $request->test_id;
                $testResult->student_id = $student_id;
//                $testResult->score = $points;

                $testResult->save();
                return (new TestResultsResource($testResult))
                    ->response()
                    ->setStatusCode(Response::HTTP_CREATED);
            }

        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

    public function MyQuizzes()
    {
        try {
            $student_id = auth('sanctum')->user()->id;

            $testResults = TestResult::with('test')->where('student_id' , $student_id)->get();

            $quizzes = Test::IsPublished()->whereIn('id' ,$testResults->pluck('test_id')->toArray())->select('id' , 'title' , 'duration')->get();

            if( $quizzes->count() > 0 ){
                return response()->json([
                    'status' => true,
                    'quizzes' => QuizResource::collection($quizzes ),
                ]);
            }else{
                return response()->json([
                    'status' => false,
                    'messages' => 'There is no Quizzes for this student please assign ',
                ]);
            }

        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

    public function testAnswer(Request $request)
    {
        $array = [];
        $student_id = auth('sanctum')->user()->id;

        foreach ($request->option_id as $option_id)
        {
            $options = QuestionOption::where('id',$option_id)->first();
            $questions = Question::where('id',$options->question_id)->first();
            $test_result = TestResult::where('student_id',$student_id)->where('test_id',$questions->test_id)->first();

            if (!isset($test_result))
            {
                return response()->json([
                    'status' => false,
                    'message' => "Please assign the student to the test first"
                ], 500);

            }else{

                //checking if the user has answered this question before
                $question_id = TestAnswer::select('question_id')->where('test_result_id' , $test_result->id)->get();

                if (in_array($options->question_id ,$question_id->pluck('question_id')->toArray() ))
                {
                    return response()->json([
                        'status' => false,
                        'message' => "You have answered those questions before"
                    ], 500);

                }else{
                    //here to update the user score

                    if ($options->is_correct == 1)
                    {
                        $user = User::findOrFail($student_id);

                        $score = $test_result->score + $questions->points;
                        $user_points = $user->points + $questions->points;

                        if ($test_result->count() > 0){
                            $test_result->update([
                                'score' => $score
                            ]);

                            $user->update([
                                'points' => $user_points
                            ]);
                        }
                    }

                }

            }

            array_push($array , array(
                'test_result_id' => $test_result->id,
                'question_id' => $options->question_id,
                'option_id' => $option_id,
                'is_correct' => $options->is_correct,
            ));

        }

        $testAnswer = TestAnswer::insert($array);

        if( $testAnswer ){
            return response()->json([
                'status' => true,
                'message' => __('questions-answered-successfully'),
            ]);
        }

    }

    public function getResults(Request $request )
    {
        try {

            $quiz = Test::where('id' ,$request->test_id)->select('id','title' , 'description')->first();
            $questions = Question::where('test_id' , $request->test_id)->get();

            $student_id = auth('sanctum')->user()->id;
            $test_result = TestResult::where('student_id',$student_id)->where('test_id',$request->test_id)->first();

            if ( $quiz )
            {
                return response()->json([
                    'status' => true,
                    'total_points_quiz' => $questions->sum('points'),
                    'total_points_student' => $test_result->score,
                    'questions' => QuizResultsResource::collection($questions),

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
