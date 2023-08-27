@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{($category->cat_type == 'year') ?  trans('cruds.category.fields.educational_stage') : trans('cruds.category.fields.grade') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{  route("admin.categoryIndex",['cat_type' => $category->cat_type]) }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.category.fields.id') }}
                        </th>
                        <td>
                            {{ $category->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{($category->cat_type == 'year') ? trans('cruds.category.fields.grade') : trans('cruds.material.title') }}
                        </th>
                        <td>
                            {{ $category->name }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{($category->cat_type == 'year') ?  trans('cruds.category.fields.educational_stage') : trans('cruds.category.fields.grade') }}
                        </th>
                        <td>
                            {{ $category->parent->name ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.category.fields.is_published') }}
                        </th>
                        <td>
                            <input type="checkbox" disabled="disabled" {{ $category->is_published ? 'checked' : '' }}>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route("admin.categoryIndex",['cat_type' => $category->cat_type]) }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>
{{--
<div class="card">
    <div class="card-header">
        {{ trans('global.relatedData') }}
    </div>
    <ul class="nav nav-tabs" role="tablist" id="relationship-tabs">
        <li class="nav-item">
            <a class="nav-link" href="#grade_tests" role="tab" data-toggle="tab">
                {{ trans('cruds.test.title') }}
            </a>
        </li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane" role="tabpanel" id="grade_tests">
            @includeIf('admin.categories.relationships.gradeTests', ['tests' => $category->gradeTests])
        </div>
    </div>
</div>
--}}
@endsection
