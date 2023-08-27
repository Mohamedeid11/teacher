@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.studentInfo.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.student-infos.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.id') }}
                        </th>
                        <td>
                            {{ $studentInfo->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.student') }}
                        </th>
                        <td>
                            {{ $studentInfo->student->name ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.whatsapp') }}
                        </th>
                        <td>
                            {{ $studentInfo->whatsapp }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.phone') }}
                        </th>
                        <td>
                            {{ $studentInfo->phone }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.grade') }}
                        </th>
                        <td>
                            {{ $studentInfo->grade->name ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.parent') }}
                        </th>
                        <td>
                            {{ $studentInfo->parent->name ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.parent_phone') }}
                        </th>
                        <td>
                            {{ $studentInfo->parent_phone }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.parent_name') }}
                        </th>
                        <td>
                            {{ $studentInfo->parent_name }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.studentInfo.fields.parent_job') }}
                        </th>
                        <td>
                            {{ $studentInfo->parent_job }}
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.student-infos.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection