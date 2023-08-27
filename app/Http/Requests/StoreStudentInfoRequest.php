<?php

namespace App\Http\Requests;

use App\Models\StudentInfo;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StoreStudentInfoRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('student_info_create');
    }

    public function rules()
    {
        return [
            'student_id' => [
                'required',
                'integer',
            ],
            'whatsapp' => [
                'string',
                'min:5',
                'max:20',
                'nullable',
            ],
            'phone' => [
                'string',
                'min:5',
                'max:15',
                'required',
            ],
            'grade_id' => [
                'required',
                'integer',
            ],
            'parent_phone' => [
                'string',
                'required',
            ],
            'parent_name' => [
                'string',
                'min:5',
                'max:191',
                'required',
            ],
            'parent_job' => [
                'string',
                'min:5',
                'max:191',
                'nullable',
            ],
        ];
    }
}
