<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyCategoryRequest;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use App\Models\Category;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CategoryController extends Controller
{
    public function index($cat_type = null)
    {

        abort_if(Gate::denies('category_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $categories = Category::with(['parent'])->where('cat_type' , $cat_type)->get();

        return view('admin.categories.index', compact('categories'));
    }

    public function create($cat_type = null)
    {
        abort_if(Gate::denies('category_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        if ($cat_type == 'material')
        {
            $parents = Category::where('cat_type' , 'year')->where('parent_id', '!=' , null)->NotDeleted()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');
        }else{
            $parents = Category::where('parent_id' , null)->NotDeleted()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');
        }


        return view('admin.categories.create', compact('parents','cat_type'));
    }


    public function store(StoreCategoryRequest $request)
    {
        $category = new Category();

        $category->name = $request->name;
        $category->parent_id = $request->parent_id;
        $category->is_published = $request->is_published;
        $category->cat_type = $request->cat_type;

        $category->save();

        return redirect()->route("admin.categoryIndex",['cat_type' => $category->cat_type]);
    }

    public function edit(Category $category, $id , $cat_type = null )
    {
        abort_if(Gate::denies('category_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        if (isset($cat_type)){
            $category = Category::findOrFail($id);

            if ($cat_type == 'material')
            {
                $parents = Category::where('cat_type' , 'year')->where('parent_id', '!=' , null)->NotDeleted()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

            }else{
                $parents = Category::where('parent_id' , null)->NotDeleted()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');
            }
        }

        $category->load('parent');


        return view('admin.categories.edit', compact('category', 'parents'));
    }

    public function update(UpdateCategoryRequest $request, Category $category)
    {
        $category->update($request->all());

        return redirect()->route("admin.categoryIndex",['cat_type' => $category->cat_type]);
    }

    public function show(Category $category)
    {
        abort_if(Gate::denies('category_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $category->load('parent', 'gradeTests');

        return view('admin.categories.show', compact('category'));
    }

    public function destroy(Category $category)
    {
        abort_if(Gate::denies('category_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $category->delete();

        return back();
    }

    public function massDestroy(MassDestroyCategoryRequest $request)
    {
        Category::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
