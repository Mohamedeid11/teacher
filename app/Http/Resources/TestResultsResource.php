<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TestResultsResource extends JsonResource
{
    public function toArray($request)
    {
        return parent::toArray($request);

    }

    public function with($request) {
        return   __('author');
    }
}
