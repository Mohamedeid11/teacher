@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('cruds.homeScore.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.home-scores.store") }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label class="required" for="home_id">{{ trans('cruds.homeScore.fields.home') }}</label>
                <select class="form-control select2 {{ $errors->has('home') ? 'is-invalid' : '' }}" name="home_id" id="home_id" required>
                    @foreach($homes as $id => $entry)
                        <option value="{{ $id }}" {{ old('home_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('home'))
                    <span class="text-danger">{{ $errors->first('home') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homeScore.fields.home_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="student_id">{{ trans('cruds.homeScore.fields.student') }}</label>
                <select class="form-control select2 {{ $errors->has('student') ? 'is-invalid' : '' }}" name="student_id" id="student_id" required>
                    @foreach($students as $id => $entry)
                        <option value="{{ $id }}" {{ old('student_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('student'))
                    <span class="text-danger">{{ $errors->first('student') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homeScore.fields.student_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="score">{{ trans('cruds.homeScore.fields.score') }}</label>
                <input class="form-control {{ $errors->has('score') ? 'is-invalid' : '' }}" type="number" name="score" id="score" value="{{ old('score', '') }}" step="0.01" required>
                @if($errors->has('score'))
                    <span class="text-danger">{{ $errors->first('score') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homeScore.fields.score_helper') }}</span>
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