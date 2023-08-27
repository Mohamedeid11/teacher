<?php

namespace App\Http\Requests;

use App\Models\HomeScore;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Symfony\Component\HttpFoundation\Response;

class MassDestroyHomeScoreRequest extends FormRequest
{
    public function authorize()
    {
        abort_if(Gate::denies('home_score_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return true;
    }

    public function rules()
    {
        return [
            'ids'   => 'required|array',
            'ids.*' => 'exists:home_scores,id',
        ];
    }
}
