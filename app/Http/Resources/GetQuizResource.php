<?php

namespace App\Http\Resources;

use App\Http\Resources\QuestionOptionsResource;
use Illuminate\Http\Resources\Json\JsonResource;


class GetQuizResource extends JsonResource
{
    public function toArray($request)
    {
       return [
			'question_id'       => $this->id,
            'question_text'    => $this->question_text,
            'question_points'    => $this->points,
           'question_photo'    => $this->photo,
           'options' => QuestionOptionsResource::collection($this->options),
        ];
    }

    public function with($request) {
        return   __('author');
    }
}
