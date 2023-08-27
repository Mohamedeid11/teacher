@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('cruds.homeQustion.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.home-qustions.store") }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label class="required" for="homework">{{ trans('cruds.homeQustion.fields.homework') }}</label>
                <div style="padding-bottom: 4px">
                    <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>
                    <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>
                </div>
                <select class="form-control select2 {{ $errors->has('homework') ? 'is-invalid' : '' }}" name="homework[]" id="homework" multiple required>
                    @foreach($homework as $id => $homework)
                        <option value="{{ $id }}" {{ in_array($id, old('homework', [])) ? 'selected' : '' }}>{{ $homework }}</option>
                    @endforeach
                </select>
                @if($errors->has('homework'))
                    <span class="text-danger">{{ $errors->first('homework') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homeQustion.fields.homework_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="questions">{{ trans('cruds.homeQustion.fields.question') }}</label>
                <div style="padding-bottom: 4px">
                    <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>
                    <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>
                </div>
                <select class="form-control select2 {{ $errors->has('questions') ? 'is-invalid' : '' }}" name="questions[]" id="questions" multiple required>
                    @foreach($questions as $id => $question)
                        <option value="{{ $id }}" {{ in_array($id, old('questions', [])) ? 'selected' : '' }}>{{ $question }}</option>
                    @endforeach
                </select>
                @if($errors->has('questions'))
                    <span class="text-danger">{{ $errors->first('questions') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.homeQustion.fields.question_helper') }}</span>
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