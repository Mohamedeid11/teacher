@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.homeScore.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.home-scores.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.homeScore.fields.id') }}
                        </th>
                        <td>
                            {{ $homeScore->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homeScore.fields.home') }}
                        </th>
                        <td>
                            {{ $homeScore->home->title ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homeScore.fields.student') }}
                        </th>
                        <td>
                            {{ $homeScore->student->name ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homeScore.fields.score') }}
                        </th>
                        <td>
                            {{ $homeScore->score }}
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.home-scores.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection