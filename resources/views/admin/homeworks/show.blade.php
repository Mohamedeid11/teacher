@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.homework.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.homeworks.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.homework.fields.id') }}
                        </th>
                        <td>
                            {{ $homework->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homework.fields.title') }}
                        </th>
                        <td>
                            {{ $homework->title }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homework.fields.description') }}
                        </th>
                        <td>
                            {{ $homework->description }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homework.fields.grade') }}
                        </th>
                        <td>
                            {{ $homework->grade->name ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homework.fields.questions') }}
                        </th>
                        <td>
                            @foreach($homework->questions as $key => $questions)
                                <span class="label label-info">{{ $questions->question_text }}</span>
                            @endforeach
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.homeworks.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection