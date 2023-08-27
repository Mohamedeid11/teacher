<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyHomeworkRequest;
use App\Http\Requests\StoreHomeworkRequest;
use App\Http\Requests\UpdateHomeworkRequest;
use App\Models\Category;
use App\Models\Homework;
use App\Models\Question;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Yajra\DataTables\Facades\DataTables;

class HomeworkController extends Controller
{
    public function index(Request $request)
    {
        abort_if(Gate::denies('homework_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        if ($request->ajax()) {
            $query = Homework::with(['grade', 'questions'])->select(sprintf('%s.*', (new Homework())->table));
            $table = Datatables::of($query);

            $table->addColumn('placeholder', '&nbsp;');
            $table->addColumn('actions', '&nbsp;');

            $table->editColumn('actions', function ($row) {
                $viewGate = 'homework_show';
                $editGate = 'homework_edit';
                $deleteGate = 'homework_delete';
                $crudRoutePart = 'homeworks';

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
            $table->editColumn('description', function ($row) {
                return $row->description ? $row->description : '';
            });
            $table->addColumn('grade_name', function ($row) {
                return $row->grade ? $row->grade->name : '';
            });

            $table->rawColumns(['actions', 'placeholder', 'grade']);

            return $table->make(true);
        }

        return view('admin.homeworks.index');
    }

    public function create()
    {
        abort_if(Gate::denies('homework_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $grades = Category::where('parent_id','!=', null)->where('cat_type','year')->NotDeleted()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $questions = Question::pluck('question_text', 'id');

        return view('admin.homeworks.create', compact('grades', 'questions'));
    }

    public function store(StoreHomeworkRequest $request)
    {
        $homework = Homework::create($request->all());
        $homework->questions()->sync($request->input('questions', []));

        return redirect()->route('admin.homeworks.index');
    }

    public function edit(Homework $homework)
    {
        abort_if(Gate::denies('homework_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $grades = Category::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $questions = Question::pluck('question_text', 'id');

        $homework->load('grade', 'questions');

        return view('admin.homeworks.edit', compact('grades', 'homework', 'questions'));
    }

    public function update(UpdateHomeworkRequest $request, Homework $homework)
    {
        $homework->update($request->all());
        $homework->questions()->sync($request->input('questions', []));

        return redirect()->route('admin.homeworks.index');
    }

    public function show(Homework $homework)
    {
        abort_if(Gate::denies('homework_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homework->load('grade', 'questions');

        return view('admin.homeworks.show', compact('homework'));
    }

    public function destroy(Homework $homework)
    {
        abort_if(Gate::denies('homework_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homework->delete();

        return back();
    }

    public function massDestroy(MassDestroyHomeworkRequest $request)
    {
        Homework::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
