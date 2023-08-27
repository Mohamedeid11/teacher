<?php

namespace App\Http\Requests;

use App\Models\User;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class UpdateUserRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('user_edit');
    }

    public function rules()
    {
        return [
            'name' => [
                'string',
                'required',
                'regex:/^[\pL\s\-]+$/u',
                'max:35',
            ],
            'email' => [
                'required',
                'unique:users,email,' . request()->route('user')->id,
            ],
            'roles.*' => [
                'integer',
            ],
            'roles' => [
                'required',
                'array',
            ],
            'gifts.*' => [
                'integer',
            ],
            'gifts' => [
                'array',
            ],
            'quizzes.*' => [
                'integer',
            ],
            'quizzes' => [
                'array',
            ],
            'points' => [
                'nullable',
                'integer',
                'min:-2147483648',
                'max:2147483647',
                'numeric',
                'gt:-1',
            ],
        ];
    }
}
