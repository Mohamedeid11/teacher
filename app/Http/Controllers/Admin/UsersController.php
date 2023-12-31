<?php

namespace App\Http\Controllers\Admin;

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
use Yajra\DataTables\Facades\DataTables;

class UsersController extends Controller
{
    use CsvImportTrait;

    public function index(Request $request)
    {
        abort_if(Gate::denies('user_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        if ($request->ajax()) {
            $query = User::with(['roles', 'gifts', 'grade', 'quizzes'])->select(sprintf('%s.*', (new User())->table));
            $table = Datatables::of($query);

            $table->addColumn('placeholder', '&nbsp;');
            $table->addColumn('actions', '&nbsp;');

            $table->editColumn('actions', function ($row) {
                $viewGate = 'user_show';
                $editGate = 'user_edit';
                $deleteGate = 'user_delete';
                $crudRoutePart = 'users';

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
            $table->editColumn('name', function ($row) {
                return $row->name ? $row->name : '';
            });
            $table->editColumn('email', function ($row) {
                return $row->email ? $row->email : '';
            });

            $table->editColumn('approved', function ($row) {
                return '<input type="checkbox" disabled ' . ($row->approved ? 'checked' : null) . '>';
            });
            $table->editColumn('roles', function ($row) {
                $labels = [];
                foreach ($row->roles as $role) {
                    $labels[] = sprintf('<span class="label label-info label-many">%s</span>', $role->title);
                }

                return implode(' ', $labels);
            });
            /*$table->editColumn('gifts', function ($row) {
                $labels = [];
                foreach ($row->gifts as $gift) {
                    $labels[] = sprintf('<span class="label label-info label-many">%s</span>', $gift->name);
                }

                return implode(' ', $labels);
            });*/
            $table->addColumn('grade_name', function ($row) {
                return $row->grade ? $row->grade->name : '';
            });
//
//            $table->editColumn('quiz', function ($row) {
//                $labels = [];
//                foreach ($row->quizzes as $quiz) {
//                    $labels[] = sprintf('<span class="label label-info label-many">%s</span>', $quiz->title);
//                }
//
//                return implode(' ', $labels);
//            });
            $table->editColumn('points', function ($row) {
                return $row->points ? $row->points : '';
            });

            $table->rawColumns(['actions', 'placeholder', 'approved', 'roles', 'grade', 'quiz']);
            //$table->rawColumns(['actions', 'placeholder', 'approved', 'roles', 'gifts', 'grade', 'quiz']);

            return $table->make(true);
        }

        return view('admin.users.index');
    }

    public function create()
    {
        abort_if(Gate::denies('user_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::pluck('title', 'id');

        $gifts = Gift::pluck('name', 'id');

        $grades = Category::where('cat_type' , 'year')->where('parent_id', '!=' , null)->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $quizzes = Test::pluck('title', 'id');

        return view('admin.users.create', compact('gifts', 'grades', 'quizzes', 'roles'));
    }

    public function store(StoreUserRequest $request)
    {
        $user = User::create($request->all());
        $user->roles()->sync($request->input('roles', []));
        $user->gifts()->sync($request->input('gifts', []));
        $user->quizzes()->sync($request->input('quizzes', []));

        return redirect()->route('admin.users.index');
    }

    public function edit(User $user)
    {
        abort_if(Gate::denies('user_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::pluck('title', 'id');

        $gifts = Gift::pluck('name', 'id');

        $grades = Category::where('cat_type' , 'year')->where('parent_id', '!=' , null)->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $quizzes = Test::pluck('title', 'id');

        $user->load('roles', 'gifts', 'grade', 'quizzes');

        return view('admin.users.edit', compact('gifts', 'grades', 'quizzes', 'roles', 'user'));
    }

    public function update(UpdateUserRequest $request, User $user)
    {
        $user->update($request->all());
        $user->roles()->sync($request->input('roles', []));
        $user->gifts()->sync($request->input('gifts', []));
        $user->quizzes()->sync($request->input('quizzes', []));

        return redirect()->route('admin.users.index');
    }

    public function show(User $user)
    {
        abort_if(Gate::denies('user_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $user->load('roles', 'gifts', 'grade', 'quizzes', 'userUserAlerts');

        return view('admin.users.show', compact('user'));
    }

    public function destroy(User $user)
    {
        abort_if(Gate::denies('user_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');
        $user->delete();
        $user->userInfo->delete();

        return back();
    }

    public function massDestroy(MassDestroyUserRequest $request)
    {
        User::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
