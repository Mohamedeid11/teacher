@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.edit') }} {{ trans('cruds.test.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.tests.update", [$test->id]) }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            {{--
            <div class="form-group">
                <label for="course_id">{{ trans('cruds.test.fields.course') }}</label>
                <select class="form-control select2 {{ $errors->has('course') ? 'is-invalid' : '' }}" name="course_id" id="course_id">
                    @foreach($courses as $id => $entry)
                        <option value="{{ $id }}" {{ (old('course_id') ? old('course_id') : $test->course->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
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
                        <option value="{{ $id }}" {{ (old('lesson_id') ? old('lesson_id') : $test->lesson->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
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
                <input class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}" type="text" name="title" id="title" value="{{ old('title', $test->title) }}">
                @if($errors->has('title'))
                    <span class="text-danger">{{ $errors->first('title') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.title_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="description">{{ trans('cruds.test.fields.description') }}</label>
                <textarea class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}" name="description" id="description">{{ old('description', $test->description) }}</textarea>
                @if($errors->has('description'))
                    <span class="text-danger">{{ $errors->first('description') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.description_helper') }}</span>
            </div>
            <div class="form-group">
                <div class="form-check {{ $errors->has('is_published') ? 'is-invalid' : '' }}">
                    <input type="hidden" name="is_published" value="0">
                    <input class="form-check-input" type="checkbox" name="is_published" id="is_published" value="1" {{ $test->is_published || old('is_published', 0) === 1 ? 'checked' : '' }}>
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
                        <option value="{{ $id }}" {{ (old('grade_id') ? old('grade_id') : $test->grade->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('grade'))
                    <span class="text-danger">{{ $errors->first('grade') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.test.fields.grade_helper') }}</span>
            </div>

            <div class="form-group">
                <label class="required" for="material_id">{{ trans('cruds.material.title') }}</label>

                <select class="form-control select2 {{ $errors->has('material') ? 'is-invalid' : '' }}" name="material_id" id="material_id" required>
                    @foreach($materials as $id => $material)
                        <option value="{{ $id }}" {{($test->material_id == $id) ? 'selected' : ' '}} >{{ $material }}</option>
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
                    <option value="unit-1" {{ $test->unit  === 'unit-1' ? 'selected' : '' }}>Unit 1</option>
                    <option value="unit-2" {{ $test->unit  === 'unit-2' ? 'selected' : '' }}>Unit 2</option>
                    <option value="unit-3" {{ $test->unit  === 'unit-3' ? 'selected' : '' }}>Unit 3</option>
                    <option value="unit-4" {{ $test->unit  === 'unit-4' ? 'selected' : '' }}>Unit 4</option>
                    <option value="unit-5" {{ $test->unit  === 'unit-5' ? 'selected' : '' }}>Unit 5</option>
                    <option value="unit-6" {{ $test->unit  === 'unit-6' ? 'selected' : '' }}>Unit 6</option>
                    <option value="unit-7" {{ $test->unit  === 'unit-7' ? 'selected' : '' }}>Unit 7</option>
                    <option value="unit-8" {{ $test->unit  === 'unit-8' ? 'selected' : '' }}>Unit 8</option>
                    <option value="unit-9" {{ $test->unit  === 'unit-9' ? 'selected' : '' }}>Unit 9</option>
                    <option value="unit-10" {{ $test->unit === 'unit-10' ? 'selected' : '' }}>Unit 10</option>
                </select>
                @if($errors->has('unit'))
                    <span class="text-danger">{{ $errors->first('unit') }}</span>
                @endif
            </div>

            <div class="form-group">
                <label class="required" for="lesson">{{ trans('cruds.test.fields.lesson') }}</label>
                <select class="form-control select2 {{ $errors->has('lesson') ? 'is-invalid' : '' }}" name="lesson" id="lesson" required>
                    <option value="" selected></option>
                    <option value="lesson-1" {{ $test->lesson  === 'lesson-1' ? 'selected' : '' }}>Lesson 1</option>
                    <option value="lesson-2" {{ $test->lesson  === 'lesson-2' ? 'selected' : '' }}>Lesson 2</option>
                    <option value="lesson-3" {{ $test->lesson  === 'lesson-3' ? 'selected' : '' }}>Lesson 3</option>
                    <option value="lesson-4" {{ $test->lesson  === 'lesson-4' ? 'selected' : '' }}>Lesson 4</option>
                    <option value="lesson-5" {{ $test->lesson  === 'lesson-5' ? 'selected' : '' }}>Lesson 5</option>
                    <option value="lesson-6" {{ $test->lesson  === 'lesson-6' ? 'selected' : '' }}>Lesson 6</option>
                    <option value="lesson-7" {{ $test->lesson  === 'lesson-7' ? 'selected' : '' }}>Lesson 7</option>
                    <option value="lesson-8" {{ $test->lesson  === 'lesson-8' ? 'selected' : '' }}>Lesson 8</option>
                    <option value="lesson-9" {{ $test->lesson  === 'lesson-9' ? 'selected' : '' }}>Lesson 9</option>
                    <option value="lesson-10" {{ $test->lesson  === 'lesson-10' ? 'selected' : '' }}>Lesson 10</option>
                </select>
                @if($errors->has('lesson'))
                    <span class="text-danger">{{ $errors->first('lesson') }}</span>
                @endif
            </div>

            <div class="form-group">
                <label for="duration">{{ trans('cruds.test.fields.duration') }}</label>

                <select id="durationList" class="form-control select2 {{ $errors->has('duration') ? 'is-invalid' : '' }}"   name="duration" >
                    <option value="01:00" {{ $test->duration  == '01:00' ? 'selected' : '' }}  >01:00</option>
                    <option value="02:00" {{ $test->duration  == '02:00' ? 'selected' : '' }} >02:00</option>
                    <option value="03:00" {{ $test->duration  == '03:00' ? 'selected' : '' }} >03:00</option>
                    <option value="04:00" {{ $test->duration  == '04:00' ? 'selected' : '' }} >04:00</option>
                    <option value="05:00" {{ $test->duration  == '05:00' ? 'selected' : '' }} >05:00</option>
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
