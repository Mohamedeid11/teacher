<?php

namespace App\Http\Resources;

use App\Models\User;
use Illuminate\Http\Resources\Json\JsonResource;


class TopicResource extends JsonResource
{


	public function toArray( $request )
    {
        return [
            'id' 		=> $this->id,
            'subject' 	=> $this->subject,
            'content' 	=> $this->messages->value('content'),
			'unreads'   => $this->hasUnreads(),
			'created_at' => $this->created_at->diffForHumans(),
        ];
    }


}
