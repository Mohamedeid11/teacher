<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;


class QuestionsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */

   
	
	public function toArray($request)
    {
        return [
			
			'id'  			 => $this->id ,
			'question_text'  => $this->question_text ,
			'photo'  		 => $this->photo,
			'points'  		 => $this->points,
			'options'  		 => $this->options()->select('id' , 'option_text' )->get(),
           
        ];
    }


}
