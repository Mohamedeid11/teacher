<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyStudentInfoRequest;
use App\Http\Requests\StoreStudentInfoRequest;
use App\Http\Requests\UpdateStudentInfoRequest;
use App\Models\Category;
use App\Models\StudentInfo;
use App\Models\User;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Yajra\DataTables\Facades\DataTables;

class StudentInfoController extends Controller
{
    public function index(Request $request)
    {

        abort_if(Gate::denies('student_info_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        if ($request->ajax()) {
            $query = StudentInfo::with(['student', 'grade', 'parent'])->select(sprintf('%s.*', (new StudentInfo())->table));
            $table = Datatables::of($query);

            $table->addColumn('placeholder', '&nbsp;');
            $table->addColumn('actions', '&nbsp;');

            $table->editColumn('actions', function ($row) {
                $viewGate = 'student_info_show';
                $editGate = 'student_info_edit';
                $deleteGate = 'student_info_delete';
                $crudRoutePart = 'student-infos';

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
            $table->addColumn('student_name', function ($row) {
                return $row->student ? $row->student->name : '';
            });

            $table->editColumn('whatsapp', function ($row) {
                return $row->whatsapp ? $row->whatsapp : '';
            });
            $table->addColumn('grade_name', function ($row) {
                return $row->grade ? $row->grade->name : '';
            });

            $table->addColumn('parent_name', function ($row) {
                return $row->parent ? $row->parent->name : '';
            });

            $table->editColumn('parent_job', function ($row) {
                return $row->parent_job ? $row->parent_job : '';
            });

            $table->rawColumns(['actions', 'placeholder', 'student', 'grade', 'parent']);

            return $table->make(true);
        }

        return view('admin.studentInfos.index');
    }

    public function create()
    {
        abort_if(Gate::denies('student_info_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        //$students = User::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');
		$students = User::whereHas(
			'roles', function($q){
				$q->where('title', 'Student')->orWhere('title', 'VIP Students');
			}
		)->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $grades = Category::where('cat_type' , 'year')->where('parent_id', '!=' , null)->NotDeleted()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        //$parents = User::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

		$parents = User::whereHas(
			'roles', function($q){
				$q->where('title', 'Parent');
			}
		)->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        return view('admin.studentInfos.create', compact('grades', 'parents', 'students'));
    }

    public function store(StoreStudentInfoRequest $request)
    {
        $studentInfo = StudentInfo::create($request->all());

        return redirect()->route('admin.student-infos.index');
    }

    public function edit(StudentInfo $studentInfo)
    {
        abort_if(Gate::denies('student_info_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        //$students = User::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

		$students = User::whereHas(
			'roles', function($q){
                $q->where('title', 'Student')->orWhere('title', 'VIP Students');
			}
		)->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');


        $grades = Category::where('cat_type' , 'year')->where('parent_id', '!=' , null)->NotDeleted()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        //$parents = User::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

		$parents = User::whereHas(
			'roles', function($q){
				$q->where('title', 'Parent');
			}
		)->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $studentInfo->load('student', 'grade', 'parent');

        return view('admin.studentInfos.edit', compact('grades', 'parents', 'studentInfo', 'students'));
    }

    public function update(UpdateStudentInfoRequest $request, StudentInfo $studentInfo)
    {
        $studentInfo->update($request->all());

        return redirect()->route('admin.student-infos.index');
    }

    public function show(StudentInfo $studentInfo)
    {
        abort_if(Gate::denies('student_info_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $studentInfo->load('student', 'grade', 'parent');

        return view('admin.studentInfos.show', compact('studentInfo'));
    }

    public function destroy(StudentInfo $studentInfo)
    {
        abort_if(Gate::denies('student_info_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $studentInfo->delete();

        return back();
    }

    public function massDestroy(MassDestroyStudentInfoRequest $request)
    {
        StudentInfo::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
