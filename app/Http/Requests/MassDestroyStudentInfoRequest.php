<?php

namespace App\Http\Requests;

use App\Models\StudentInfo;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Symfony\Component\HttpFoundation\Response;

class MassDestroyStudentInfoRequest extends FormRequest
{
    public function authorize()
    {
        abort_if(Gate::denies('student_info_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return true;
    }

    public function rules()
    {
        return [
            'ids'   => 'required|array',
            'ids.*' => 'exists:student_infos,id',
        ];
    }
}
