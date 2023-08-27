<?php

namespace App\Http\Requests;

use App\Models\Gift;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StoreGiftRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('gift_create');
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
                'required',
            ],
            'points' => [
                'numeric',
                'required',
                'min:0',
            ],
        ];
    }
}
