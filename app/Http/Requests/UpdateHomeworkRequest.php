<?php

namespace App\Http\Requests;

use App\Models\Homework;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class UpdateHomeworkRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('homework_edit');
    }

    public function rules()
    {
        return [
            'title' => [
                'string',
                'min:5',
                'required',
            ],
            'description' => [
                'required',
            ],
            'questions.*' => [
                'integer',
            ],
            'questions' => [
                'array',
            ],
        ];
    }
}
