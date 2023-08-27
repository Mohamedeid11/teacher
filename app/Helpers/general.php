<?php
use Illuminate\Support\Str;



if ( !function_exists('upload_file') ) {

    function upload_file ( $id , $directory , $file , $old_file = null)
    {
        if( $old_file ) {
           deleteImage($old_file) ;
        }
		
		$newName = $id.'-'.Str::random(3).'.'.$file->getClientOriginalExtension();
		
		$path = storage_path('app/public/uploads/'.now()->year.'/'.now()->monthName).'/'.$directory;
		$file->move( $path,$newName );
		return $path.'/'.$newName;
    }



	function deleteImage( $path )
    {
		$fullPath = ( isset( explode ( '/public/storage/',$path)[1] ) ? explode ( '/public/storage/',$path)[1] : '' );

		if( Storage::disk('public')->exists($fullPath) ){
			Storage::disk('public')->delete($fullPath);
		}

		return true;

    }
}
