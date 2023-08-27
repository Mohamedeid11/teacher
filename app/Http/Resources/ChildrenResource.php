<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ChildrenResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'student_id'    => $this->student_id,
			'name'			=> $this->student->name,
			'grade'			=> [
								'id' => $this->grade->id,
								'name' => $this->grade->name,
								],
			'points'		=>  ( $this->student->points > 0 ? $this->student->points : 0),
        ];
    }

    public function with($request) {
        return   __('author');
    }
}
