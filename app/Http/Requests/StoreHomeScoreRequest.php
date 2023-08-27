<?php

namespace App\Http\Requests;

use App\Models\HomeScore;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StoreHomeScoreRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('home_score_create');
    }

    public function rules()
    {
        return [
            'home_id' => [
                'required',
                'integer',
            ],
            'student_id' => [
                'required',
                'integer',
            ],
            'score' => [
                'numeric',
                'required',
            ],
        ];
    }
}
