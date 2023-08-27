<?php

/*Route::group(['prefix' => 'v1', 'as' => 'api.', 'namespace' => 'Api\V1\Admin', 'middleware' => ['auth:sanctum']], function () {
    // Users
    Route::apiResource('users', 'UsersApiController');

    // Courses
    Route::post('courses/media', 'CoursesApiController@storeMedia')->name('courses.storeMedia');
    Route::apiResource('courses', 'CoursesApiController');

    // Tests
    Route::apiResource('tests', 'TestsApiController');

    // Questions
    Route::post('questions/media', 'QuestionsApiController@storeMedia')->name('questions.storeMedia');
    Route::apiResource('questions', 'QuestionsApiController');
});
*/

Route::group(['prefix' => 'v1', 'as' => 'api.', 'namespace' => 'Api\V1\Users'], function () {
    Route::post('auth/register', 'AuthController@createUser');
    Route::post('auth/login', 'AuthController@loginUser');
    Route::post('auth/delete', 'AuthController@destroy');
});

// PROFILEو
Route::group(['prefix' => 'v1/user/profile', 'as' => 'api.', 'namespace' => 'Api\V1\Users', 'middleware' => ['auth:sanctum']],  function () {

    Route::get('/', 'ProfileController@index');

    Route::post('/update', 'ProfileController@updateInfo');

	Route::post('/grade', 'ProfileController@getGrades');

	Route::post('/upload-photo', 'ProfileController@uploadPhoto');

	Route::post('/logout', 'ProfileController@logout');

});

//GIFTS
Route::group(['prefix' => 'v1/user/gift', 'as' => 'api.', 'namespace' => 'Api\V1\Users', 'middleware' => ['auth:sanctum']],  function () {

	Route::post('/get-all', 'GiftController@index');
	Route::post('/my-gift', 'GiftController@my_gift');
	Route::post('/rank', 'GiftController@rank');

});

Route::group(['prefix' => 'v1/user/quiz', 'as' => 'api.', 'namespace' => 'Api\V1\Users', 'middleware' => ['auth:sanctum']],  function () {
	Route::get('/get-all', 'QuizController@index');
	Route::get('/get-unit', 'QuizController@unit');
	Route::post('/get-lesson', 'QuizController@lesson');
	Route::post('/get-all-quiz', 'QuizController@allQuizzes');
	Route::post('/get-quiz', 'QuizController@Quiz');
	Route::post('/assign-quiz', 'QuizController@assignQuizToStudent');
	Route::get('/my-quizzes', 'QuizController@MyQuizzes');
	Route::post('/test-answer', 'QuizController@testAnswer');
	Route::get('/quiz-results', 'QuizController@getResults');
});

Route::group(['prefix' => 'v1/user/children', 'as' => 'api.', 'namespace' => 'Api\V1\Users', 'middleware' => ['auth:sanctum']],  function () {

	Route::get('/my', 'ChildrenController@MyChildren');
	//Route::get('/get-quiz', 'QuizController@quiz');
});


/*messages*/
Route::group(['prefix' => 'v1/user/messenger', 'as' => 'api.', 'namespace' => 'Api\V1\Users', 'middleware' => ['auth:sanctum']],  function () {

	Route::post('/inbox' , 'MessengerController@inbox');
	Route::get('/outbox' , 'MessengerController@showOutbox');
	Route::post('/send-messages' , 'MessengerController@storeTopic');
	Route::get('/get-messages' , 'MessengerController@showMessages');
});

/*messages*/
Route::group(['prefix' => 'v1/user/homework', 'as' => 'api.', 'namespace' => 'Api\V1\Users', 'middleware' => ['auth:sanctum']],  function () {

	Route::get('/index' , 'HomeworkController@index');
	Route::get('/questions' , 'HomeworkController@questions');

	Route::post('/assign-to-homework' , 'HomeworkController@assignToHomework');

	Route::post('/add-answer' , 'HomeworkController@addAnswer');

});
