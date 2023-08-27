<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyHomeQustionRequest;
use App\Http\Requests\StoreHomeQustionRequest;
use App\Http\Requests\UpdateHomeQustionRequest;
use App\Models\HomeQustion;
use App\Models\Homework;
use App\Models\Question;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Yajra\DataTables\Facades\DataTables;

class HomeQustionsController extends Controller
{
    public function index(Request $request)
    {
        abort_if(Gate::denies('home_qustion_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        if ($request->ajax()) {
            $query = HomeQustion::with(['homework', 'questions'])->select(sprintf('%s.*', (new HomeQustion())->table));
            $table = Datatables::of($query);

            $table->addColumn('placeholder', '&nbsp;');
            $table->addColumn('actions', '&nbsp;');

            $table->editColumn('actions', function ($row) {
                $viewGate = 'home_qustion_show';
                $editGate = 'home_qustion_edit';
                $deleteGate = 'home_qustion_delete';
                $crudRoutePart = 'home-qustions';

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
            $table->editColumn('homework', function ($row) {
                $labels = [];
                foreach ($row->homework as $homework) {
                    $labels[] = sprintf('<span class="label label-info label-many">%s</span>', $homework->title);
                }

                return implode(' ', $labels);
            });
            $table->editColumn('question', function ($row) {
                $labels = [];
                foreach ($row->questions as $question) {
                    $labels[] = sprintf('<span class="label label-info label-many">%s</span>', $question->question_text);
                }

                return implode(' ', $labels);
            });

            $table->rawColumns(['actions', 'placeholder', 'homework', 'question']);

            return $table->make(true);
        }

        return view('admin.homeQustions.index');
    }

    public function create()
    {
        abort_if(Gate::denies('home_qustion_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homework = Homework::pluck('title', 'id');

        $questions = Question::pluck('question_text', 'id');

        return view('admin.homeQustions.create', compact('homework', 'questions'));
    }

    public function store(StoreHomeQustionRequest $request)
    {
        $homeQustion = HomeQustion::create($request->all());
        $homeQustion->homework()->sync($request->input('homework', []));
        $homeQustion->questions()->sync($request->input('questions', []));

        return redirect()->route('admin.home-qustions.index');
    }

    public function edit(HomeQustion $homeQustion)
    {
        abort_if(Gate::denies('home_qustion_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homework = Homework::pluck('title', 'id');

        $questions = Question::pluck('question_text', 'id');

        $homeQustion->load('homework', 'questions');

        return view('admin.homeQustions.edit', compact('homeQustion', 'homework', 'questions'));
    }

    public function update(UpdateHomeQustionRequest $request, HomeQustion $homeQustion)
    {
        $homeQustion->update($request->all());
        $homeQustion->homework()->sync($request->input('homework', []));
        $homeQustion->questions()->sync($request->input('questions', []));

        return redirect()->route('admin.home-qustions.index');
    }

    public function show(HomeQustion $homeQustion)
    {
        abort_if(Gate::denies('home_qustion_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homeQustion->load('homework', 'questions');

        return view('admin.homeQustions.show', compact('homeQustion'));
    }

    public function destroy(HomeQustion $homeQustion)
    {
        abort_if(Gate::denies('home_qustion_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homeQustion->delete();

        return back();
    }

    public function massDestroy(MassDestroyHomeQustionRequest $request)
    {
        HomeQustion::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
