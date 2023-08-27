<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class QuizResource extends JsonResource
{
    public function toArray($request)
    {
       return [
			'test_id'       => $this->id,
            'test_title'    => $this->title,
            'duration'      => $this->duration,
			'points'		=> $this->questions->sum('points'),
        ];
    }

    public function with($request) {
        return   __('author');
    }
}
