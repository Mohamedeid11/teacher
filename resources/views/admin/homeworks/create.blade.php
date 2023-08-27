@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('cruds.homework.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.homeworks.store") }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label class="required" for="title">{{ trans('cruds.homework.fields.title') }}</label>
                <input class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}" type="text" name="title" id="title" value="{{ old('title', '') }}" required>
                @if($errors->has('title'))
                    <span class="text-danger">{{ $errors->first('title') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homework.fields.title_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="description">{{ trans('cruds.homework.fields.description') }}</label>
                <textarea class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}" name="description" id="description" required>{{ old('description') }}</textarea>
                @if($errors->has('description'))
                    <span class="text-danger">{{ $errors->first('description') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homework.fields.description_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required"  for="grade_id">{{ trans('cruds.homework.fields.grade') }}</label>
                <select class="form-control select2 {{ $errors->has('grade') ? 'is-invalid' : '' }}" name="grade_id" id="grade_id" required >
                    @foreach($grades as $id => $entry)
                        <option value="{{ $id }}" {{ old('grade_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('grade'))
                    <span class="text-danger">{{ $errors->first('grade') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homework.fields.grade_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="questions">{{ trans('cruds.homework.fields.questions') }}</label>
                <div style="padding-bottom: 4px">
                    <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>
                    <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>
                </div>
                <select class="form-control select2 {{ $errors->has('questions') ? 'is-invalid' : '' }}" name="questions[]" id="questions" multiple>
                    @foreach($questions as $id => $question)
                        <option value="{{ $id }}" {{ in_array($id, old('questions', [])) ? 'selected' : '' }}>{{ $question }}</option>
                    @endforeach
                </select>
                @if($errors->has('questions'))
                    <span class="text-danger">{{ $errors->first('questions') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homework.fields.questions_helper') }}</span>
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