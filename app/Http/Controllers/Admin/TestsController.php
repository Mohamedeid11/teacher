<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyTestRequest;
use App\Http\Requests\StoreTestRequest;
use App\Http\Requests\UpdateTestRequest;
use App\Models\Category;
use App\Models\Course;
use App\Models\Lesson;
use App\Models\Test;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Yajra\DataTables\Facades\DataTables;

class TestsController extends Controller
{
    public function index(Request $request)
    {
        abort_if(Gate::denies('test_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        if ($request->ajax()) {
            $query = Test::with(['grade'])->select(sprintf('%s.*', (new Test())->table));
            $table = Datatables::of($query);

            $table->addColumn('placeholder', '&nbsp;');
            $table->addColumn('actions', '&nbsp;');

            $table->editColumn('actions', function ($row) {
                $viewGate = 'test_show';
                $editGate = 'test_edit';
                $deleteGate = 'test_delete';
                $crudRoutePart = 'tests';

                return view('partials.datatablesActions', compact(
                'viewGate',
                'editGate',
                'deleteGate',
                'crudRoutePart',
                'row'
            ));
            });

            $table->editColumn('id', function ($row) {
                return $row->id ? $row->id : '';
            });

            $table->editColumn('title', function ($row) {
                return $row->title ? $row->title : '';
            });

            $table->editColumn('is_published', function ($row) {
                return '<input type="checkbox" disabled ' . ($row->is_published ? 'checked' : null) . '>';
            });
            $table->addColumn('grade_name', function ($row) {
                return $row->grade ? $row->grade->name : '';
            });

            $table->addColumn('unit', function ($row) {
                return $row->unit ?? '';
            });

            $table->addColumn('lesson', function ($row) {
                return $row->lesson ?? '';
            });

            $table->rawColumns(['actions', 'placeholder','is_published', 'grade']);

            return $table->make(true);
        }

        return view('admin.tests.index');
    }

    public function create()
    {
        abort_if(Gate::denies('test_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $courses = Course::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $lessons = Lesson::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $grades = Category::where('cat_type', 'year')->where('parent_id' , '>' , 0)->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $materials = Category::where('cat_type', 'material')->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        return view('admin.tests.create', compact('courses', 'grades', 'materials', 'lessons'));
    }

    public function store(StoreTestRequest $request)
    {
        $test = Test::create($request->all());

        return redirect()->route('admin.tests.index');
    }

    public function edit(Test $test)
    {
        abort_if(Gate::denies('test_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $courses = Course::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $lessons = Lesson::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $grades = Category::where('cat_type', 'year')->where('parent_id' , '>' , 0)->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $materials = Category::where('cat_type', 'material')->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $test->load('course', 'lesson', 'grade');

        return view('admin.tests.edit', compact('courses', 'grades','materials', 'lessons', 'test'));
    }

    public function update(UpdateTestRequest $request, Test $test)
    {
        $test->update($request->all());

        return redirect()->route('admin.tests.index');
    }

    public function show(Test $test)
    {
        abort_if(Gate::denies('test_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $test->load( 'course', 'lesson', 'grade');

        //return view('admin.tests.show', compact('test'));
        return view('admin.tests.quizz', compact('test'));
    }

    public function destroy(Test $test)
    {
        abort_if(Gate::denies('test_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $test->delete();

        return back();
    }

    public function massDestroy(MassDestroyTestRequest $request)
    {
        Test::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
