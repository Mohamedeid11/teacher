<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class StudentAnswerResource extends JsonResource
{
    public function toArray($request)
    {

       return [
			'option_id'   => $this->option_id,
			'option_text'   => $this->option->option_text,
			'is_correct'   => $this->option->is_correct,
        ];
    }
}
