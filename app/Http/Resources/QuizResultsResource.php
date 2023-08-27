<?php

namespace App\Http\Resources;

use App\Http\Resources\QuestionOptionsResource;
use App\Models\QuestionOption;
use App\Models\TestAnswer;
use App\Models\TestResult;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\StudentAnswerResource;



class QuizResultsResource extends JsonResource
{
    public function toArray($request)
    {
        $student_id = auth('sanctum')->user()->id;
        $test_result = TestResult::where('student_id',$student_id)->where('test_id',$request->test_id)->first();

        $student_answer = TestAnswer::where('test_result_id' ,$test_result->id)->where('question_id', $this->id)->select('option_id')->get();

        return [
			'question_id'       => $this->id,
            'question_text'    => $this->question_text,
            'question_points'    => $this->points,
            'question_photo'    => $this->photo,
            'options' => QuestionOptionsResource::collection($this->options),
            'student_answer' => StudentAnswerResource::collection($student_answer),
        ];
    }

    public function with($request) {
        return   __('author');
    }
}
