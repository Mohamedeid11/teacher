<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyHomeScoreRequest;
use App\Http\Requests\StoreHomeScoreRequest;
use App\Http\Requests\UpdateHomeScoreRequest;
use App\Models\HomeScore;
use App\Models\Homework;
use App\Models\User;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class HomeScoreController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('home_score_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homeScores = HomeScore::with(['home', 'student'])->get();

        return view('admin.homeScores.index', compact('homeScores'));
    }

    public function create()
    {
        abort_if(Gate::denies('home_score_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homes = Homework::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $students = User::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        return view('admin.homeScores.create', compact('homes', 'students'));
    }

    public function store(StoreHomeScoreRequest $request)
    {
        $homeScore = HomeScore::create($request->all());

        return redirect()->route('admin.home-scores.index');
    }

    public function edit(HomeScore $homeScore)
    {
        abort_if(Gate::denies('home_score_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homes = Homework::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $students = User::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $homeScore->load('home', 'student');

        return view('admin.homeScores.edit', compact('homeScore', 'homes', 'students'));
    }

    public function update(UpdateHomeScoreRequest $request, HomeScore $homeScore)
    {
        $homeScore->update($request->all());

        return redirect()->route('admin.home-scores.index');
    }

    public function show(HomeScore $homeScore)
    {
        abort_if(Gate::denies('home_score_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homeScore->load('home', 'student');

        return view('admin.homeScores.show', compact('homeScore'));
    }

    public function destroy(HomeScore $homeScore)
    {
        abort_if(Gate::denies('home_score_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $homeScore->delete();

        return back();
    }

    public function massDestroy(MassDestroyHomeScoreRequest $request)
    {
        HomeScore::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
