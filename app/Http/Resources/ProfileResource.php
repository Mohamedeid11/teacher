<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProfileResource extends JsonResource
{
    public function toArray($request)
    {

        return [
            'name'      => $this->name,
            'email'     => $this->email,
            'photo'     => $this->photo,
            'points'    => ( $this->points != null ? $this->points : 0 ),
            'role'      => [
                        'id'    => $this->roles[0]->id,
                        'title' => $this->roles[0]->title
            ],
            'grade'     => [
                        'id' => (isset($this->grade->id) ? $this->grade->id: '' ),
//                        'name' => (isset($this->grade->name) ? $this->userInfo->grade->name: '' ),
                        'name' =>  (isset($this->grade->name)) ? $this->grade->name : ( isset($this->userInfo->grade->name) ? $this->userInfo->grade->name : '' ),
                     ],
            'whatsapp'      => (isset( $this->userInfo->whatsapp ) ? $this->userInfo->whatsapp: '' ),
            'phone'         => (isset( $this->userInfo->phone ) ?  $this->userInfo->phone: '' ),
            'parent_phone'  => (isset( $this->userInfo->parent_phone ) ?  $this->userInfo->parent_phone: '' ),
            'parent_name'   => (isset( $this->userInfo->parent_name ) ?  $this->userInfo->parent_name: '' ),
            'parent_job'    => (isset( $this->userInfo->parent_job ) ?  $this->userInfo->parent_job: '' ),

        ];
    }

    public function with($request) {
        return   __('author');
    }
}
