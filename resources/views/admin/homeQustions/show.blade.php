@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.homeQustion.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.home-qustions.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.homeQustion.fields.id') }}
                        </th>
                        <td>
                            {{ $homeQustion->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homeQustion.fields.homework') }}
                        </th>
                        <td>
                            @foreach($homeQustion->homework as $key => $homework)
                                <span class="label label-info">{{ $homework->title }}</span>
                            @endforeach
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.homeQustion.fields.question') }}
                        </th>
                        <td>
                            @foreach($homeQustion->questions as $key => $question)
                                <span class="label label-info">{{ $question->question_text }}</span>
                            @endforeach
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.home-qustions.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection