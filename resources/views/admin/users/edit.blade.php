@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.edit') }} {{ trans('cruds.user.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.users.update", [$user->id]) }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                <label class="required" for="name">{{ trans('cruds.user.fields.name') }}</label>
                <input class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}" type="text" name="name" id="name" value="{{ old('name', $user->name) }}" required>
                @if($errors->has('name'))
                    <span class="text-danger">{{ $errors->first('name') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.user.fields.name_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="email">{{ trans('cruds.user.fields.email') }}</label>
                <input class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}" type="email" name="email" id="email" value="{{ old('email', $user->email) }}" required>
                @if($errors->has('email'))
                    <span class="text-danger">{{ $errors->first('email') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.user.fields.email_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="password">{{ trans('cruds.user.fields.password') }}</label>
                <input class="form-control {{ $errors->has('password') ? 'is-invalid' : '' }}" type="password" name="password" id="password">
                @if($errors->has('password'))
                    <span class="text-danger">{{ $errors->first('password') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.user.fields.password_helper') }}</span>
            </div>
            <div class="form-group">
                <div class="form-check {{ $errors->has('approved') ? 'is-invalid' : '' }}">
                    <input type="hidden" name="approved" value="0">
                    <input class="form-check-input" type="checkbox" name="approved" id="approved" value="1" {{ $user->approved || old('approved', 0) === 1 ? 'checked' : '' }}>
                    <label class="form-check-label" for="approved">{{ trans('cruds.user.fields.approved') }}</label>
                </div>
                @if($errors->has('approved'))
                    <span class="text-danger">{{ $errors->first('approved') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.user.fields.approved_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="roles">{{ trans('cruds.user.fields.roles') }}</label>
                <div style="padding-bottom: 4px">
{{--                    <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>--}}
{{--                    <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>--}}
                </div>
                <select class="form-control select2 {{ $errors->has('roles') ? 'is-invalid' : '' }}" name="roles[]" id="roles"  required>
                    @foreach($roles as $id => $role)
                        <option value="{{ $id }}" {{ (in_array($id, old('roles', [])) || $user->roles->contains($id)) ? 'selected' : '' }}>{{ $role }}</option>
                    @endforeach
                </select>
                @if($errors->has('roles'))
                    <span class="text-danger">{{ $errors->first('roles') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.user.fields.roles_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="gifts">{{ trans('cruds.user.fields.gifts') }}</label>
                <div style="padding-bottom: 4px">
                    <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>
                    <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>
                </div>
                <select class="form-control select2 {{ $errors->has('gifts') ? 'is-invalid' : '' }}" name="gifts[]" id="gifts" multiple>
                    @foreach($gifts as $id => $gift)
                        <option value="{{ $id }}" {{ (in_array($id, old('gifts', [])) || $user->gifts->contains($id)) ? 'selected' : '' }}>{{ $gift }}</option>
                    @endforeach
                </select>
                @if($errors->has('gifts'))
                    <span class="text-danger">{{ $errors->first('gifts') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.user.fields.gifts_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="grade_id">{{ trans('cruds.user.fields.grade') }}</label>
                <select class="form-control select2 {{ $errors->has('grade') ? 'is-invalid' : '' }}" name="grade_id" id="grade_id">
                    @foreach($grades as $id => $entry)
                        <option value="{{ $id }}" {{ (old('grade_id') ? old('grade_id') : $user->grade->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('grade'))
                    <span class="text-danger">{{ $errors->first('grade') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.user.fields.grade_helper') }}</span>
            </div>
{{--            <div class="form-group">--}}
{{--                <label for="quizzes">{{ trans('cruds.user.fields.quiz') }}</label>--}}
{{--                <div style="padding-bottom: 4px">--}}
{{--                    <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>--}}
{{--                    <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>--}}
{{--                </div>--}}
{{--                <select class="form-control select2 {{ $errors->has('quizzes') ? 'is-invalid' : '' }}" name="quizzes[]" id="quizzes" multiple>--}}
{{--                    @foreach($quizzes as $id => $quiz)--}}
{{--                        <option value="{{ $id }}" {{ (in_array($id, old('quizzes', [])) || $user->quizzes->contains($id)) ? 'selected' : '' }}>{{ $quiz }}</option>--}}
{{--                    @endforeach--}}
{{--                </select>--}}
{{--                @if($errors->has('quizzes'))--}}
{{--                    <span class="text-danger">{{ $errors->first('quizzes') }}</span>--}}
{{--                @endif--}}
{{--                <span class="help-block">{{ trans('cruds.user.fields.quiz_helper') }}</span>--}}
{{--            </div>--}}
            <div class="form-group">
                <label for="points">{{ trans('cruds.user.fields.points') }}</label>
                <input class="form-control {{ $errors->has('points') ? 'is-invalid' : '' }}" type="number" name="points" id="points" value="{{ old('points', $user->points) }}" step="1">
                @if($errors->has('points'))
                    <span class="text-danger">{{ $errors->first('points') }}</span>
                @endif
                <span class="help-block">{{ trans('cruds.user.fields.points_helper') }}</span>
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
