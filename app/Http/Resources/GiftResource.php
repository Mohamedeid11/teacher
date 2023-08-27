<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class GiftResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'name'      => $this->name,
            'image'     => $this->image,
            'points'    => $this->points,    
        ];
    }

    public function with($request) {
        return   __('author');
    }
}
