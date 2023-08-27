<?php

namespace App\Http\Requests;

use App\Models\Gift;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class UpdateGiftRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('gift_edit');
    }

    public function rules()
    {
        return [
            'name' => [
                'string',
                'min:2',
                'max:191',
                'required',
            ],
            'image' => [
                'image',
				'mimes:jpeg,png,jpg,gif,svg',
				'max:2048',
            ],
            'points' => [
                'numeric',
                'required',
                'min:0',
            ],
        ];
    }
}
