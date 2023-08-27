@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.gift.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.gifts.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.gift.fields.id') }}
                        </th>
                        <td>
                            {{ $gift->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.gift.fields.name') }}
                        </th>
                        <td>
                            {{ $gift->name }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.gift.fields.image') }}
                        </th>
                        <td>
                             <img src="{{ $gift->image }}" style="max-width:200px;" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.gift.fields.points') }}
                        </th>
                        <td>
                            {{ $gift->points }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.gift.fields.is_active') }}
                        </th>
                        <td>
                            <input type="checkbox" disabled="disabled" {{ $gift->is_active ? 'checked' : '' }}>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.gifts.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection