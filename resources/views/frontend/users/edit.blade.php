@extends('layouts.frontend')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">

            <div class="card">
                <div class="card-header">
                    {{ trans('global.edit') }} {{ trans('cruds.user.title_singular') }}
                </div>

                <div class="card-body">
                    <form method="POST" action="{{ route("frontend.users.update", [$user->id]) }}" enctype="multipart/form-data">
                        @method('PUT')
                        @csrf
                        <div class="form-group">
                            <label class="required" for="name">{{ trans('cruds.user.fields.name') }}</label>
                            <input class="form-control" type="text" name="name" id="name" value="{{ old('name', $user->name) }}" required>
                            @if($errors->has('name'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('name') }}
                                </div>
                            @endif
                            <span class="help-block">{{ trans('cruds.user.fields.name_helper') }}</span>
                        </div>
                        <div class="form-group">
                            <label class="required" for="email">{{ trans('cruds.user.fields.email') }}</label>
                            <input class="form-control" type="email" name="email" id="email" value="{{ old('email', $user->email) }}" required>
                            @if($errors->has('email'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('email') }}
                                </div>
                            @endif
                            <span class="help-block">{{ trans('cruds.user.fields.email_helper') }}</span>
                        </div>
                        <div class="form-group">
                            <label class="required" for="password">{{ trans('cruds.user.fields.password') }}</label>
                            <input class="form-control" type="password" name="password" id="password">
                            @if($errors->has('password'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('password') }}
                                </div>
                            @endif
                            <span class="help-block">{{ trans('cruds.user.fields.password_helper') }}</span>
                        </div>
                        <div class="form-group">
                            <div>
                                <input type="hidden" name="approved" value="0">
                                <input type="checkbox" name="approved" id="approved" value="1" {{ $user->approved || old('approved', 0) === 1 ? 'checked' : '' }}>
                                <label for="approved">{{ trans('cruds.user.fields.approved') }}</label>
                            </div>
                            @if($errors->has('approved'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('approved') }}
                                </div>
                            @endif
                            <span class="help-block">{{ trans('cruds.user.fields.approved_helper') }}</span>
                        </div>
                        <div class="form-group">
                            <label class="required" for="roles">{{ trans('cruds.user.fields.roles') }}</label>
                            <div style="padding-bottom: 4px">
                                <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>
                                <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>
                            </div>
                            <select class="form-control select2" name="roles[]" id="roles" multiple required>
                                @foreach($roles as $id => $role)
                                    <option value="{{ $id }}" {{ (in_array($id, old('roles', [])) || $user->roles->contains($id)) ? 'selected' : '' }}>{{ $role }}</option>
                                @endforeach
                            </select>
                            @if($errors->has('roles'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('roles') }}
                                </div>
                            @endif
                            <span class="help-block">{{ trans('cruds.user.fields.roles_helper') }}</span>
                        </div>
                        <div class="form-group">
                            <label for="gifts">{{ trans('cruds.user.fields.gifts') }}</label>
                            <div style="padding-bottom: 4px">
                                <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>
                                <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>
                            </div>
                            <select class="form-control select2" name="gifts[]" id="gifts" multiple>
                                @foreach($gifts as $id => $gift)
                                    <option value="{{ $id }}" {{ (in_array($id, old('gifts', [])) || $user->gifts->contains($id)) ? 'selected' : '' }}>{{ $gift }}</option>
                                @endforeach
                            </select>
                            @if($errors->has('gifts'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('gifts') }}
                                </div>
                            @endif
                            <span class="help-block">{{ trans('cruds.user.fields.gifts_helper') }}</span>
                        </div>
                        <div class="form-group">
                            <label for="grade_id">{{ trans('cruds.user.fields.grade') }}</label>
                            <select class="form-control select2" name="grade_id" id="grade_id">
                                @foreach($grades as $id => $entry)
                                    <option value="{{ $id }}" {{ (old('grade_id') ? old('grade_id') : $user->grade->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                                @endforeach
                            </select>
                            @if($errors->has('grade'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('grade') }}
                                </div>
                            @endif
                            <span class="help-block">{{ trans('cruds.user.fields.grade_helper') }}</span>
                        </div>
                        <div class="form-group">
                            <label for="quizzes">{{ trans('cruds.user.fields.quiz') }}</label>
                            <div style="padding-bottom: 4px">
                                <span class="btn btn-info btn-xs select-all" style="border-radius: 0">{{ trans('global.select_all') }}</span>
                                <span class="btn btn-info btn-xs deselect-all" style="border-radius: 0">{{ trans('global.deselect_all') }}</span>
                            </div>
                            <select class="form-control select2" name="quizzes[]" id="quizzes" multiple>
                                @foreach($quizzes as $id => $quiz)
                                    <option value="{{ $id }}" {{ (in_array($id, old('quizzes', [])) || $user->quizzes->contains($id)) ? 'selected' : '' }}>{{ $quiz }}</option>
                                @endforeach
                            </select>
                            @if($errors->has('quizzes'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('quizzes') }}
                                </div>
                            @endif
                            <span class="help-block">{{ trans('cruds.user.fields.quiz_helper') }}</span>
                        </div>
                        <div class="form-group">
                            <label for="points">{{ trans('cruds.user.fields.points') }}</label>
                            <input class="form-control" type="number" name="points" id="points" value="{{ old('points', $user->points) }}" step="1">
                            @if($errors->has('points'))
                                <div class="invalid-feedback">
                                    {{ $errors->first('points') }}
                                </div>
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

        </div>
    </div>
</div>
@endsection