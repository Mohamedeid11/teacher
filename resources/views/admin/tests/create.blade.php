@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('cruds.test.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.tests.store") }}" enctype="multipart/form-data">
            @csrf
            {{--
            <div class="form-group">
                <label for="course_id">{{ trans('cruds.test.fields.course') }}</label>
                <select class="form-control select2 {{ $errors->has('course') ? 'is-invalid' : '' }}" name="course_id" id="course_id">
                    @foreach($courses as $id => $entry)
                        <option value="{{ $id }}" {{ old('course_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('course'))
                    <span class="text-danger">{{ $errors->first('course') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.course_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="lesson_id">{{ trans('cruds.test.fields.lesson') }}</label>
                <select class="form-control select2 {{ $errors->has('lesson') ? 'is-invalid' : '' }}" name="lesson_id" id="lesson_id">
                    @foreach($lessons as $id => $entry)
                        <option value="{{ $id }}" {{ old('lesson_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('lesson'))
                    <span class="text-danger">{{ $errors->first('lesson') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.lesson_helper') }}</span>
            </div>
            --}}
            <div class="form-group">
                <label for="title">{{ trans('cruds.test.fields.title') }}</label>
                <input class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}" type="text" name="title" id="title" value="{{ old('title', '') }}">
                @if($errors->has('title'))
                    <span class="text-danger">{{ $errors->first('title') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.title_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="description">{{ trans('cruds.test.fields.description') }}</label>
                <textarea class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}" name="description" id="description">{{ old('description') }}</textarea>
                @if($errors->has('description'))
                    <span class="text-danger">{{ $errors->first('description') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.description_helper') }}</span>
            </div>
            <div class="form-group">
                <div class="form-check {{ $errors->has('is_published') ? 'is-invalid' : '' }}">
                    <input type="hidden" name="is_published" value="0">
                    <input class="form-check-input" type="checkbox" name="is_published" id="is_published" value="1" {{ old('is_published', 0) == 1 ? 'checked' : '' }}>
                    <label class="form-check-label" for="is_published">{{ trans('cruds.test.fields.is_published') }}</label>
                </div>
                @if($errors->has('is_published'))
                    <span class="text-danger">{{ $errors->first('is_published') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.is_published_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="grade_id">{{ trans('cruds.test.fields.grade') }}</label>
                <select class="form-control select2 {{ $errors->has('grade') ? 'is-invalid' : '' }}" name="grade_id" id="grade_id" required>
                    @foreach($grades as $id => $entry)
                        <option value="{{ $id }}" {{ old('grade') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('grade'))
                    <span class="text-danger">{{ $errors->first('grade') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.grade_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="material_id">{{ trans('cruds.material.title') }}</label>
                <select class="form-control select2 {{ $errors->has('grade') ? 'is-invalid' : '' }}" name="material_id" id="material_id" required>
                    @foreach($materials as $id => $material)
                        <option value="{{ $id }}" {{ old('material') == $id ? 'selected' : '' }}>{{ $material }}</option>
                    @endforeach
                </select>
                @if($errors->has('grade'))
                    <span class="text-danger">{{ $errors->first('grade') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.grade_helper') }}</span>
            </div>

            <div class="form-group">
                <label class="required" for="unit">{{ trans('cruds.test.fields.unit') }}</label>
                <select class="form-control select2 {{ $errors->has('unit') ? 'is-invalid' : '' }}" name="unit" id="unit" required>
                    <option value="" selected></option>
                    <option value="unit-1">Unit 1</option>
                    <option value="unit-2">Unit 2</option>
                    <option value="unit-3">Unit 3</option>
                    <option value="unit-4">Unit 4</option>
                    <option value="unit-5">Unit 5</option>
                    <option value="unit-6">Unit 6</option>
                    <option value="unit-7">Unit 7</option>
                    <option value="unit-8">Unit 8</option>
                    <option value="unit-9">Unit 9</option>
                    <option value="unit-10">Unit 10</option>
                </select>
                @if($errors->has('unit'))
                    <span class="text-danger">{{ $errors->first('unit') }}</span>
                @endif
            </div>

            <div class="form-group">
                <label class="required" for="lesson">{{ trans('cruds.test.fields.lesson') }}</label>
                <select class="form-control select2 {{ $errors->has('lesson') ? 'is-invalid' : '' }}" name="lesson" id="lesson" required>
                    <option value="" selected></option>
                    <option value="lesson-1">Lesson 1</option>
                    <option value="lesson-2">Lesson 2</option>
                    <option value="lesson-3">Lesson 3</option>
                    <option value="lesson-4">Lesson 4</option>
                    <option value="lesson-5">Lesson 5</option>
                    <option value="lesson-6">Lesson 6</option>
                    <option value="lesson-7">Lesson 7</option>
                    <option value="lesson-8">Lesson 8</option>
                    <option value="lesson-9">Lesson 9</option>
                    <option value="lesson-10">Lesson 10</option>
                </select>
                @if($errors->has('lesson'))
                    <span class="text-danger">{{ $errors->first('lesson') }}</span>
                @endif
            </div>

            <div class="form-group">
                <label for="duration">{{ trans('cruds.test.fields.duration') }}</label>

                <select id="durationList" class="form-control select2 {{ $errors->has('duration') ? 'is-invalid' : '' }}"   name="duration" >
                    <option value="" selected > {{trans('global.pleaseSelect') }}</option>
                    <option value="01:00" >01:00</option>
                    <option value="02:00" >02:00</option>
                    <option value="03:00" >03:00</option>
                    <option value="04:00" >04:00</option>
                    <option value="05:00" >05:00</option>
                </select>
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
