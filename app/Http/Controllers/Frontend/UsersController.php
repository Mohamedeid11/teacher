<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\CsvImportTrait;
use App\Http\Requests\MassDestroyUserRequest;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Models\Category;
use App\Models\Gift;
use App\Models\Role;
use App\Models\Test;
use App\Models\User;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class UsersController extends Controller
{
    use CsvImportTrait;

    public function index()
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $users = User::with(['roles', 'gifts', 'grade', 'quizzes'])->get();

        return view('frontend.users.index', compact('users'));
    }

    public function create()
    {
        abort_if(Gate::denies('user_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::pluck('title', 'id');

        $gifts = Gift::pluck('name', 'id');

        $grades = Category::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $quizzes = Test::pluck('title', 'id');

        return view('frontend.users.create', compact('gifts', 'grades', 'quizzes', 'roles'));
    }

    public function store(StoreUserRequest $request)
    {
        $user = User::create($request->all());
        $user->roles()->sync($request->input('roles', []));
        $user->gifts()->sync($request->input('gifts', []));
        $user->quizzes()->sync($request->input('quizzes', []));

        return redirect()->route('frontend.users.index');
    }

    public function edit(User $user)
    {
        abort_if(Gate::denies('user_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::pluck('title', 'id');

        $gifts = Gift::pluck('name', 'id');

        $grades = Category::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $quizzes = Test::pluck('title', 'id');

        $user->load('roles', 'gifts', 'grade', 'quizzes');

        return view('frontend.users.edit', compact('gifts', 'grades', 'quizzes', 'roles', 'user'));
    }

    public function update(UpdateUserRequest $request, User $user)
    {
        $user->update($request->all());
        $user->roles()->sync($request->input('roles', []));
        $user->gifts()->sync($request->input('gifts', []));
        $user->quizzes()->sync($request->input('quizzes', []));

        return redirect()->route('frontend.users.index');
    }

    public function show(User $user)
    {
        abort_if(Gate::denies('user_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $user->load('roles', 'gifts', 'grade', 'quizzes', 'userUserAlerts');

        return view('frontend.users.show', compact('user'));
    }

    public function destroy(User $user)
    {
        abort_if(Gate::denies('user_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $user->delete();

        return back();
    }

    public function massDestroy(MassDestroyUserRequest $request)
    {
        User::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
