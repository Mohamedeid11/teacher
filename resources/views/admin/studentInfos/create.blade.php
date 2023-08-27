@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('cruds.studentInfo.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.student-infos.store") }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label class="required" for="student_id">{{ trans('cruds.studentInfo.fields.student') }}</label>
                <select class="form-control select2 {{ $errors->has('student') ? 'is-invalid' : '' }}" name="student_id" id="student_id" required>
                    @foreach($students as $id => $entry)
                        <option value="{{ $id }}" {{ old('student_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('student'))
                    <span class="text-danger">{{ $errors->first('student') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.studentInfo.fields.student_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="whatsapp">{{ trans('cruds.studentInfo.fields.whatsapp') }}</label>
                <input class="form-control {{ $errors->has('whatsapp') ? 'is-invalid' : '' }}" type="text" name="whatsapp" id="whatsapp" value="{{ old('whatsapp', '') }}">
                @if($errors->has('whatsapp'))
                    <span class="text-danger">{{ $errors->first('whatsapp') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.studentInfo.fields.whatsapp_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="phone">{{ trans('cruds.studentInfo.fields.phone') }}</label>
                <input class="form-control {{ $errors->has('phone') ? 'is-invalid' : '' }}" type="text" name="phone" id="phone" value="{{ old('phone', '') }}" required>
                @if($errors->has('phone'))
                    <span class="text-danger">{{ $errors->first('phone') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.studentInfo.fields.phone_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="grade_id">{{ trans('cruds.studentInfo.fields.grade') }}</label>
                <select class="form-control select2 {{ $errors->has('grade') ? 'is-invalid' : '' }}" name="grade_id" id="grade_id" required>
                    @foreach($grades as $id => $entry)
                        <option value="{{ $id }}" {{ old('grade_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('grade'))
                    <span class="text-danger">{{ $errors->first('grade') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.studentInfo.fields.grade_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="parent_id">{{ trans('cruds.studentInfo.fields.parent') }}</label>
                <select class="form-control select2 {{ $errors->has('parent') ? 'is-invalid' : '' }}" name="parent_id" id="parent_id">
                    @foreach($parents as $id => $entry)
                        <option value="{{ $id }}" {{ old('parent_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('parent'))
                    <span class="text-danger">{{ $errors->first('parent') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.studentInfo.fields.parent_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="parent_phone">{{ trans('cruds.studentInfo.fields.parent_phone') }}</label>
                <input class="form-control {{ $errors->has('parent_phone') ? 'is-invalid' : '' }}" type="text" name="parent_phone" id="parent_phone" value="{{ old('parent_phone', '') }}" required>
                @if($errors->has('parent_phone'))
                    <span class="text-danger">{{ $errors->first('parent_phone') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.studentInfo.fields.parent_phone_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="parent_name">{{ trans('cruds.studentInfo.fields.parent_name') }}</label>
                <input class="form-control {{ $errors->has('parent_name') ? 'is-invalid' : '' }}" type="text" name="parent_name" id="parent_name" value="{{ old('parent_name', '') }}" required>
                @if($errors->has('parent_name'))
                    <span class="text-danger">{{ $errors->first('parent_name') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.studentInfo.fields.parent_name_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="parent_job">{{ trans('cruds.studentInfo.fields.school') }}</label>
                <input class="form-control {{ $errors->has('parent_job') ? 'is-invalid' : '' }}" type="text" name="parent_job" id="parent_job" value="{{ old('parent_job', '') }}">
                @if($errors->has('parent_job'))
                    <span class="text-danger">{{ $errors->first('parent_job') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.studentInfo.fields.parent_job_helper') }}</span>
            </div>
            <div class="form-group">
                <button class="btn btn-danger" type="submit">
                    {{ trans('global.save') }}
                </button>
            </div>
        </form>
    </div>
</div>



@endsection
