<?php

namespace App\Http\Controllers\Api\V1\Users;

use App\Http\Controllers\Controller;
use App\Http\Resources\GiftResource;
use App\Http\Resources\RankResource;
use App\Models\Gift;
use App\Models\User;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class GiftController extends Controller
{

	public function index( Request $request )
	{

		try {
			$gifts = Gift::where('is_active' , 1)->select('id' , 'name' ,'image' ,'points')->orderBy('id', 'desc')->paginate(6);

			return response()->json([
				'status' => true,
				'gifts' => $gifts,
			]);

		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }

	}

	public function my_gift( Request $request )
	{

		try {
			$gifts = auth('sanctum')->user()->gifts()->select('id' , 'name' ,'image' ,'points')->orderBy('id', 'desc')->paginate(6);


			if ($gifts->count() > 0 )
				return response()->json([
					'status' => true,
					'gifts' => $gifts,
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



	public function rank( Request $request )
	{

		try {
            $numbers = [];

			$users = User::where('id' ,'!=', 1)->where( 'grade_id' ,auth('sanctum')->user()->grade->id )->select('id' , 'name','points')->orderBy('points', 'desc')->get();
			
			$users = $users->each(function ($user, $index) {
				$user->sequence_number = $index + 1;
			});

			return response()->json([
				'status' => true,
				'students' =>  RankResource::collection($users),
			]);

		} catch (\Throwable $th) {
            return response()->json([
                'status' => false,
                'message' => $th->getMessage()
            ], 500);
        }

	}
}
