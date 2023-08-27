@extends('layouts.admin')
@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>{{__('global.quiz-details')}}</h1>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">{{__('global.quiz-details')}}</h3>
        </div>

        <div class="card-body">
            <div class="row">
                <div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">
                    <div class="row">
{{--                        <div class="col-12 col-sm-4">--}}
{{--                          <div class="info-box bg-light">--}}
{{--                            <div class="info-box-content">--}}
{{--                              <span class="info-box-text text-center text-muted">{{__('global.total-questions')}}</span>--}}
{{--                              <span class="info-box-number text-center text-muted mb-0">2300</span>--}}
{{--                            </div>--}}
{{--                          </div>--}}
{{--                        </div>--}}
{{--                        <div class="col-12 col-sm-4">--}}
{{--                          <div class="info-box bg-light">--}}
{{--                            <div class="info-box-content">--}}
{{--                              <span class="info-box-text text-center text-muted">{{__('global.students-number')}}</span>--}}
{{--                              <span class="info-box-number text-center text-muted mb-0">2000</span>--}}
{{--                            </div>--}}
{{--                          </div>--}}
{{--                        </div>--}}
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <h4>
                                 {{__('global.questions')}} <i class="fa-fw nav-icon fas fa-question"></i>
                            </h4>
                            @foreach( $test->questions as $question )
                            <div class="row post">
								<div class="{{ strlen($question->photo) > 16  ? 'col-8' : 'row' }}" >
									<div class="row">
										<div class="col-12 user-block">
										  <span class="question">
											<a id="question_text"> {{ $question->question_text }} <span style="font-size: 30px;color: #2ed70d;font-weight: bolder;" >{{$question->points}}</span></a>

										  </span>
										</div>
                                        <div class="row">
                                            <div class="col-12 p-2 option_question_{{$question->id}}"  option_question_div = {{$question->id}}>
                                                @foreach( $question->options as  $option )
                                                    <form>
                                                        <input  type="hidden" name="_token" value="{{ csrf_token() }}">
                                                        <label class="m-2"> {{$option->option_text}} </label>
                                                        <button class="is_correct btn btn-sm  {{($option->is_correct == 1) ? 'btn-success' : 'btn-secondary' }} is_correct_class_{{$option->is_correct}} "  type="button"  name="is_correct" value="{{$option->id}}" option_question_id="{{ $option->question_id }}"> {{ trans('cruds.question.fields.is_correct') }}</button>
                                                        <a href="{{ route('admin.questionOptions.delete', $option->id) }}" id="confirmation" onclick="return confirm({{ trans('global.areYouSure') }})" class="btn btn-sm btn-danger"> {{__('global.delete')}} </a>
                                                    </form>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
								</div>
                            @if( strlen($question->photo) > 16 )
									<div class="col-4" >
                                        <img src="{{$question->photo }}" style="width:100%;padding: 5px;" />
									</div>
								@endif
								<br/>
								<div class="col-12">
									<div class="text-right">
										<button  class="btn btn-sm btn-primary  add-option" question_id = "{{$question->id}}" data-toggle="modal" data-target="#add-option">
											<i class="fas fa-plus"></i>  {{__('global.add-answer')}}
										</button>
										<button  class="btn btn-sm btn-info edit-question" data-toggle="modal" edit_question_id="{{$question->id}}" edit_points="{{ $question->points }}" question_text="{{ $question->question_text }}"  edit_have_image="{{ strlen($question->photo) > 16  ? 'yes' : 'no' }}" data-target="#edit-question">
											<i class="fas fa-edit"></i>  {{__('global.edit-question')}}
										</button>
                                        <button  class="btn btn-sm btn-danger delete-question" data-toggle="modal"  value="{{$question->id}}" delete_question_id="{{$question->id}}"  have-image="{{ strlen($question->photo) > 16  ? 'yes' : 'no' }}" data-target="#delete-question">
                                            <i class="fas fa-trash"></i>  {{__('global.delete')}}
                                        </button>
									</div>
								</div>
                            </div>

                            @endforeach
                        </div>

                        <div class="col-12">
                            <div class="text-right mt-5 mb-3">
                                <button  class="btn btn-sm btn-primary" data-toggle="modal" data-target="#add-question">
                                    <i class="fas fa-plus"></i>  {{__('global.add-question')}}
                                </button>
                                <div class="text-center">
                                    <a href="{{route('admin.tests.index')}}" class="text-center text-bold text-white btn btn-dark" style="width: 100px;">
                                          Finish
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="quiz-info col-12 col-md-12 col-lg-4 order-1 order-md-2">
                    <h3 class="text-primary">
                        <i class="fas fa-flask"></i> {{ $test->title }}
                    </h3>

                    <p class="text-muted"> {{ $test->description }} </p>
                    <br/>
                    <div class="text-muted">
                        <p class="text-sm">
                          <b class="d-block"> {{ trans('cruds.test.fields.grade') }} :</b>
                          {{ $test->grade->name ?? '' }}
                        </p>
                        <p class="text-sm">
                          <b class="d-block"> {{ trans('cruds.test.fields.is_published') }} :</b>
                          <input type="checkbox" disabled="disabled" {{ $test->is_published ? 'checked' : '' }}>
                        </p>
                        <p class="text-sm">
                            <b class="d-block"> {{ trans('cruds.test.fields.unit') }} :</b>
                            {{ $test->unit ?? '' }}
                        </p>
                        <p class="text-sm">
                            <b class="d-block"> {{ trans('cruds.test.fields.lesson') }} :</b>
                            {{ $test->lesson ?? '' }}
                        </p>
                    </div>

                    <div class="col-12">
                        <div class="text-right mt-5 mb-3">
                            <a  class="btn btn-sm btn-primary text-white" href="/admin/tests/{{Request::segment(3)}}/edit">
                                <i class="fas fa-edit"></i>  {{__('global.edit')}}
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<!-- Add Question /.modal -->
<div class="modal fade" id="add-question">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">{{__('global.add-question')}}</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form class="form-horizontal" method="POST" action="{{ route("admin.questions.store") }}" enctype="multipart/form-data" >
            <div class="modal-body">
                @csrf
                <input type ="hidden" name="test_id" value="{{Request::segment(3)}}" required />
                <div class="form-group">
                    <label class="required" for="question_text">{{ trans('cruds.question.fields.question_text') }}</label>
                    <input class="form-control {{ $errors->has('question_text') ? 'is-invalid' : '' }}" type="text" name="question_text" id="question_text" value="{{ old('question_text', '') }}" required>
                    @if($errors->has('question_text'))
                        <span class="text-danger">{{ $errors->first('question_text') }}</span>
                    @endif
                    <span class="help-block">{{ trans('cruds.question.fields.question_text_helper') }}</span>
                </div>
                <div class="form-group">
                    <label for="question_image">{{ trans('cruds.question.fields.question_image') }}</label>
                    <input class="form-control {{ $errors->has('question_text') ? 'is-invalid' : '' }}" type="file" name="photo" id="photo" accept="image/*" >
                    <span class="help-block">{{ trans('cruds.question.fields.question_image_helper') }}</span>
                </div>

                <div class="form-group">
                    <label for="points">{{ trans('cruds.question.fields.points') }}</label>
                    <input class="form-control {{ $errors->has('points') ? 'is-invalid' : '' }}" type="number" name="points" id="points" value="" step="1" required>
                    @if($errors->has('points'))
                        <span class="text-danger">{{ $errors->first('points') }}</span>
                    @endif
                    <span class="help-block">{{ trans('cruds.question.fields.points_helper') }}</span>
                </div>

            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">{{__('global.add-question')}}</button>
            </div>
        </form>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<!-- Delete /.modal -->
<div class="modal fade" id="delete-question">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">{{__('global.delete')}}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h4 class="modal-title">Are You Sure You Want To Delete This Question</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <form class="form-horizontal" action="#" id="form-delete"  enctype="multipart/form-data" >
                <div class="modal-body">
                    <input type="hidden" name="question_id" id="delete_question_id" value="@isset($question) {{$question->id}} @endisset}}">

                    @method('DELETE')
                    <input type="hidden" name="_token" id="csrf" value="{{Session::token()}}">
                    <input type ="hidden" name="test_id" value="{{Request::segment(3)}}"  />
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" id="delete-question-form" class="btn btn-primary delete-question-form">{{__('global.delete')}}</button>
                </div>
            </form>

        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<!-- Edit /.modal -->
<div class="modal fade" id="edit-question">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">{{__('global.edit')}}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"> </button>
            </div>
            <form class="form-horizontal" action="#" id="form-question-edit"  enctype="multipart/form-data" >
                <div class="modal-body">
                    @method('PUT')
                    <input type="hidden" name="_token" id="csrf" value="{{Session::token()}}">
                    <input type="hidden" name="question_id" id="edit_question_id" value="@isset($question) {{$question->id}} @endisset">
                    <div class="form-group">
                        <label class="required" for="question_text">{{ trans('cruds.question.fields.question_text') }}</label>
                        <input class="form-control {{ $errors->has('question_text') ? 'is-invalid' : '' }}" type="text" name="question_text" id="edit_question_text" value="" required>
                        <span class="error text-danger d-none"></span>
                        @if($errors->has('question_text'))
                            <span class="text-danger">{{ $errors->first('question_text') }}</span>
                        @endif
                        <span class="help-block">{{ trans('cruds.question.fields.question_text_helper') }}</span>
                    </div>
                    <div class="form-group">
                        <label for="question_image">{{ trans('cruds.question.fields.question_image') }}</label>
                        <input class="form-control {{ $errors->has('question_text') ? 'is-invalid' : '' }}" type="file" name="photo" id="photo" value="" accept="image/*" >
                        <input type ="hidden" name="have_image" id="edit_have_image" value=""  />
                        <span class="help-block">{{ trans('cruds.question.fields.question_image_helper') }}</span>
                    </div>

                    <div class="form-group">
                        <label for="points">{{ trans('cruds.question.fields.points') }}</label>
                        <input class="form-control {{ $errors->has('points') ? 'is-invalid' : '' }}" type="number" name="points" id="edit_points" value="" step="1">
                        <span class="error text-danger d-none"></span>
                        @if($errors->has('points'))
                            <span class="text-danger">{{ $errors->first('points') }}</span>
                        @endif
                        <span class="help-block">{{ trans('cruds.question.fields.points_helper') }}</span>
                    </div>

                </div>


{{--                <div class="modal-body">--}}
{{--                    <input type="hidden" name="question_id" id="edit_question_id" value="@isset($question) {{$question->id}} @endisset">--}}
{{--                    <input type="hidden" name="question_id" id="question_text" value="@isset($question) {{$question->question_text}} @endisset">--}}
{{--                    <input type="hidden" name="question_id" id="have-image" value="{{ strlen($question->photo) > 16  ? 'yes' : 'no'}}">--}}
{{--                    <input type="hidden" name="question_id" id="points" value="@isset($question) {{$question->points}} @endisset">--}}
{{--                    @method('PUT')--}}
{{--                    <input type="hidden" name="_token" id="csrf" value="{{Session::token()}}">--}}
{{--                    <input type ="hidden" name="test_id" value="{{Request::segment(3)}}"  />--}}
{{--                </div>--}}
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" id="edit-question-form" class="btn btn-primary edit-question-form">{{__('global.save')}}</button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>


<!-- Add option /.modal -->
<div class="modal fade" id="add-option">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">{{__('global.add-option')}}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <form class="form-horizontal" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="hidden" name="_token" id="csrf" value="{{Session::token()}}">
                        <input type="hidden" name="question_id" id="option_question_id" value=" ">
                        <label class="required" for="option_text">{{ trans('cruds.questionOption.fields.option_text') }}</label>
                        <input class="form-control {{ $errors->has('option_text') ? 'is-invalid' : '' }}" type="text" name="option_text" id="option_text" value="" required>
                        @if($errors->has('option_text'))
                            <span class="text-danger">{{ $errors->first('option_text') }}</span>
                        @endif
                        <span class="help-block">{{ trans('cruds.questionOption.fields.option_text_helper') }}</span>
                    </div>
{{--                    <div class="form-group">--}}
{{--                        <div class="form-check {{ $errors->has('is_correct') ? 'is-invalid' : '' }}">--}}
{{--                            <input class="form-check-input" type="checkbox" name="is_correct" id="is_correct_val" value="1" >--}}
{{--                            <label class="form-check-label" for="is_correct">{{ trans('cruds.questionOption.fields.is_correct') }}</label>--}}
{{--                        </div>--}}
{{--                        @if($errors->has('is_correct'))--}}
{{--                            <span class="text-danger">{{ $errors->first('is_correct') }}</span>--}}
{{--                        @endif--}}
{{--                        <span class="help-block">{{ trans('cruds.questionOption.fields.is_correct_helper') }}</span>--}}
{{--                    </div>--}}
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary add_option">{{__('global.add-option')}}</button>
                </div>
            </form>
        </div>
    </div>
</div>

@stop

@section('scripts')
<script>
    // $('#confirmation').click(function(){
    //     return confirm('Are you sure want to continue?');
    // });

// add option
    $(document).ready(function() {

        $('.add-option').on('click', function() {
            $("#option_question_id").val( $(this).attr('question_id') );
        });

        $('.add_option').on('click', function() {
            var option_text = $('#option_text').val();
            // if (document.getElementById('is_correct_val').checked) {
            //     var is_correct_val = 1;
            // } else {
            //     var is_correct_val = 0;
            // }
            if(option_text!=""){
                $.ajax({
                    url: "{{route('admin.question-options.store')}}",
                    type: "POST",
                    data: {
                        _token: $("#csrf").val(),
                        question_id: $("#option_question_id").val(),
                        option_text: option_text,
                        // is_correct: is_correct_val,
                    },
                    cache: false,
                    success: function(dataResult){
                        var dataResult = JSON.parse(dataResult);
                        location.reload()
                        // var checkInput = '';
                        // if(dataResult.is_correct == 1)
                        // {
                        //     checkInput = '<input type="radio" checked >';
                        // }else{
                        //     checkInput = '<input type="radio" >';
                        // }
                        //
                        // $('.option_question_' + dataResult.question_id).append(
                        //         '<div class="col-8 p-2">',
                        //             '<form>',
                        //                 checkInput,
                        //                 '<label class="m-2" > ' + dataResult.option_text + '</label>',
                        //                 '<a href="#" class="btn btn-sm btn-danger"> remove </a>',
                        //             '</form>',
                        //         '</div>',
                        //     );

                        $('#add-option').modal('hide');
                    }
                });
            }
            else{
                alert('Please fill all the field !');
            }
        });
    });
//end of add option


// is correct
    $(document).ready(function(){

            $('.is_correct').click(function(){
                var option_id = $(this).val();
                var option_question_id =$(this).attr('option_question_id');
                $.ajax({
                    url:"{{route('admin.questionOptions.update')}}",
                    method:"PUT",
                    data:{
                        '_token': $('input[name=_token]').val(),
                        option_id: option_id,
                        question_id : option_question_id ,
                    },
                    success:function(data){
                        var data = JSON.parse(data);

                        location.reload();
                    }
                });
            });
    });

// end of is correct


// delete question
    $(document).ready(function() {
        //var option_question_div = $(this).attr("question_id");

        $('.delete-question').on('click', function() {
            $("#delete_question_id").val( $(this).attr('delete_question_id') );
        });

        $('.delete-question-form').on('click', function() {

            var question_id = $("#delete_question_id").val();

            $.ajax({
                url: "/admin/questions/"+ question_id,
                method: "DELETE",
                data: {
                    _token: $("#csrf").val(),
                    question_id: question_id,
                },
                cache: false,
                success: function(dataResult){
                    var dataResult = JSON.parse(dataResult);
                    $('#delete-question').modal('hide');
                    location.reload();
                }
            });

        });
    });



    $(document).ready(function() {

        $('.edit-question').on('click', function() {
            var edit_question_id =$(this).attr('edit_question_id');
            var edit_question_text =$(this).attr('question_text');
            var edit_have_image =$(this).attr('edit_have_image');
            var edit_points =$(this).attr('edit_points');


            $("#edit_question_id").val( edit_question_id );
            $("#edit_question_text").val( edit_question_text );
            $("#edit_have_image").val( edit_have_image );
            $("#edit_points").val( edit_points );
        });

        $('.edit-question-form').on('click', function() {

            var edit_question_id = $("#edit_question_id").val();
            var edit_question_text = $("#edit_question_text").val();
            var edit_have_image = $("#edit_have_image").val();
            var edit_points = $("#edit_points").val();

            $.ajax({
                url: "/admin/questions/"+ edit_question_id,
                method: "PUT",
                data: {
                    _token: $("#csrf").val(),
                    question_id: edit_question_id,
                    question_text: edit_question_text,
                    have_image: edit_have_image,
                    points: edit_points,
                },
                cache: false,
                success: function(dataResult){
                    var dataResult = JSON.parse(dataResult);
                    $('#edit-question').modal('hide');
                    location.reload();
                },
                error: function(reject) {
                    var response = $.parseJSON(reject.responseText);
                    $.each(response.errors, function(key, val) {
                        return confirm(val);
                        $('#edit-question').modal('hide');

                    })
                }
            });

        });
    });

</script>
@stop
