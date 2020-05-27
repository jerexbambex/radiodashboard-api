@extends('layouts.template')

@section('styles')
	<link rel="stylesheet" href="/admin/dist-assets/css/plugins/dropzone.min.css">
@endsection

@section('content')
	<div class="main-content">
        <div class="breadcrumb">
            <h1>Add Team member</h1>
            <ul>
                <li><a href="#">Team</a></li>
                <li>Add</li>
            </ul>
        </div>
        <div class="separator-breadcrumb border-top"></div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-4">
                        <div class="card-body">
                        	@if (Session::has('message'))
                        		<div class="alert alert-success" role="alert"><strong class="text-capitalize">Success!</strong> {{ Session::get('message') }}
                                    <button class="close" type="button" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                </div>
							    {{-- <div class="alert alert-info">{{ Session::get('message1') }}</div> --}}
							@endif
                            <div class="card-title mb-3">Add new member to the team</div>
                            <form method="POST" action="{{ route('team.store') }}" enctype="multipart/form-data">
                            	@csrf
                                <div class="row">
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="firstName1">First name</label>
                                        <input class="form-control" id="firstName1" name="first_name" type="text" placeholder="Enter your first name">
                                        @error('first_name')
                                        	<small class="form-control-feedback alert-danger">
                                                {{ $message }}
                                            </small>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="lastName1">Last name</label>
                                        <input class="form-control" id="lastName1" name="last_name" type="text" placeholder="Enter your last name">
                                        @error('last_name')
                                            <small class="form-control-feedback alert-danger">
                                                {{ $message }}
                                            </small>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input class="form-control" id="exampleInputEmail1" name="email" type="email" placeholder="Enter email">
                                        <!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                                        @error('email')
                                            <small class="form-control-feedback alert-danger">
                                                {{ $message }}
                                            </small>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="twitter">Twitter ID</label>
                                        <input class="form-control" id="twitter" name="twitter" placeholder="your twitter handle">
                                    </div>
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="facebook">Facebook ID</label>
                                        <input class="form-control" id="facebook" name="facebook" placeholder="your facebook handle">
                                    </div>
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="instagram">Instagram ID</label>
                                        <input class="form-control" id="instagram" name="instagram" placeholder="your instagram handle">
                                    </div>
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="picker2">About</label>
                                        <textarea class="form-control text-left" name="about" placeholder="A short bio about the new member"></textarea>
                                        @error('about')
                                            <small class="form-control-feedback alert-danger">
                                                {{ $message }}
                                            </small>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 form-group mb-3">
                                        <label for="picker1">Image</label>
                                        <div class="input-group mb-3">
										    <input class="form-control" type="file" name="avatar">
										</div>
                                    </div>
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary ladda-button example-button m-1" data-style="expand-left">
                                        	<span class="ladda-label">Add member</span>
                                        	<span class="ladda-spinner"></span>
                                        	<span class="ladda-spinner"></span>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        <!-- end of main-content -->
    </div>
@endsection

@section('scripts')
	<script src="/admin/dist-assets/js/plugins/dropzone.min.js"></script>
	<script src="/admin/dist-assets/js/scripts/dropzone.script.min.js"></script>
@endsection