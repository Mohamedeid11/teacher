<?php

namespace App\Http\Controllers\Api\V1\Users;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\StudentInfo;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

use App\Http\Resources\ChildrenResource;

class ChildrenController extends Controller
{
	
	public function MyChildren( Request $request )
	{
					
		try {
			$role = auth('sanctum')->user()->roles[0];
			if( $role->title == 'Parent' ) {
				
				$childrens = StudentInfo::where('parent_id' , auth('sanctum')->user()->id )->get();			
				
				return response()->json([
					'status' => true,
					'childrens' => ChildrenResource::collection($childrens),
				]);				
			}
			
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
	
	
	
}