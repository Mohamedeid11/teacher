@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.edit') }} {{ (last(request()->segments()) == 'year') ? trans('cruds.category.fields.grade') : trans('cruds.material.title')}}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.categories.update", [$category->id]) }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                <label class="required" for="name">{{ (last(request()->segments()) == 'year') ?  trans('cruds.category.fields.grade') : trans('cruds.material.fields.name') }}</label>
                <input class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}" type="text" name="name" id="name" value="{{ old('name', $category->name) }}" required>
                @if($errors->has('name'))
                    <span class="text-danger">{{ $errors->first('name') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.category.fields.name_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="parent_id">{{ (last(request()->segments()) == 'year') ?  trans('cruds.category.fields.educational_stage') : trans('cruds.category.fields.grade') }} </label>
                <select class="form-control select2 {{ $errors->has('parent') ? 'is-invalid' : '' }}" name="parent_id" id="parent_id">
                    @foreach($parents as $id => $entry)
                        <option value="{{ $id }}" {{ (old('parent_id') ? old('parent_id') : $category->parent->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('parent'))
                    <span class="text-danger">{{ $errors->first('parent') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.category.fields.parent_helper') }}</span>
            </div>
            <div class="form-group">
                <div class="form-check {{ $errors->has('is_published') ? 'is-invalid' : '' }}">
                    <input type="hidden" name="is_published" value="0">
                    <input class="form-check-input" type="checkbox" name="is_published" id="is_published" value="1" {{ $category->is_published || old('is_published', 0) === 1 ? 'checked' : '' }}>
                    <label class="form-check-label" for="is_published">{{ trans('cruds.category.fields.is_published') }}</label>
                </div>
                @if($errors->has('is_published'))
                    <span class="text-danger">{{ $errors->first('is_published') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.category.fields.is_published_helper') }}</span>
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
