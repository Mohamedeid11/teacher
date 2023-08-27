<?php

namespace App\Http\Controllers\Api\V1\Users;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Http\Resources\ProfileResource;
use App\Models\User;
use App\Models\Role;
use App\Models\Category;
use App\Models\StudentInfo;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Validator;

class ProfileController extends Controller
{


    public function index()
    {
        return new ProfileResource( auth('sanctum')->user() );
    }

    public function updateInfo ( Request $request )
    {

        try {
            //Validated
            $validateUser = Validator::make($request->all(),
            [
                'name'         =>'required',
                'email'        =>'required|email|unique:users,email,'.auth('sanctum')->user()->id,
                'whatsapp'     =>'required',
                'phone'        =>'required',
                'parent_name'  =>'required',
                'parent_phone' =>'required',
                'grade'        =>'required',
                //'role'        =>'required',

            ]);

            if($validateUser->fails()){
                return response()->json([
                    'status' => false,
                    'message' => 'validation error',
                    'errors' => $validateUser->errors()
                ], 401);
            }

            $user = User::where('id' , auth('sanctum')->user()->id )->update([
                'name' => $request->name,
                'email' => $request->email,
                'grade_id' => $request->grade,
            ]);

            $studentInfo = StudentInfo::where('student_id' , auth('sanctum')->user()->id );
            if ( $studentInfo->count() > 0 ) {
                $studentInfo->update([
                    'whatsapp'     =>$request->whatsapp,
                    'phone'        =>$request->phone,
                    'parent_name'  => $request->parent_name,
                    'parent_job'   => $request->parent_job, 
                    'parent_phone' =>$request->parent_phone,
                    'grade_id'     =>$request->grade,
                ]);
            }else {
                StudentInfo::create([
                    'student_id'   =>auth('sanctum')->user()->id,
                    'whatsapp'     =>$request->whatsapp,
                    'phone'        =>$request->phone,
                    'parent_name'  => $request->parent_name,
                    'parent_job'   => $request->parent_job,
                    'parent_phone' =>$request->parent_phone,
                    'grade_id'     =>$request->grade,
                ]);				
            }
			
			if( isset($request->role) && $request->role != 'Admin' && !empty($request->role) )
			{
				$role_id = Role::where('title' ,$request->role)->pluck('id')->first();				
				auth('sanctum')->user()->roles()->sync($role_id);
			}
				
            return response()->json([
                'status' => true,
                'message' => __('msg.updated-successfully'),
            ]);

        } catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
    }

	public function getGrades(  Request $request )
	{

		try {
			$parent = ( isset ( $request->parent_id ) && $request->parent_id  > 0 ? $request->parent_id : null  );

			$grades = Category::where(['parent_id'=> $parent ,'is_published' => 1 ])
				->select('id' , 'name' )->get();

			if( $grades->count() > 0 )
				return response()->json([
						'status' => true,
						'grades' => $grades,
					]);

			return response()->json([
					'status' => false,
					'message' => __('not-found'),
				],404);

		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
	}


	public function uploadPhoto( Request $request )
	{
		try {
			$validateUser = Validator::make($request->all(),
            [
                'photo'         =>'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);
			
			if($validateUser->fails()){
                return response()->json([
                    'status' => false,
                    'message' => 'validation error',
                    'errors' => $validateUser->errors()
                ], 401);
            }
			
			
			
			if( $request->hasFile('photo') ) 
			{
				
				$photo = upload_file ( auth('sanctum')->user()->id , 'users', $request->file('photo')) ;
				
				$user = User::where('id' , auth('sanctum')->user()->id  )->update( ['photo' => $photo  ]);
				
				return response()->json([
                    'status' => true,
                    'message' => __('msg.updated-successfully'),
                    'photo' => auth('sanctum')->user()->photo ,
                ]);
			}
			
		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }
	}
	
	
	
	public function logout(Request $request) {
        auth()->user()->tokens()->delete();

        return [
            'message' => 'Logged out'
        ];
    }
}
