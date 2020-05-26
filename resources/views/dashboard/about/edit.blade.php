@extends('layouts.template')

@section('styles')
	<link rel="stylesheet" href="/admin/dist-assets/css/plugins/quill.bubble.min.css" />
    <link rel="stylesheet" href="/admin/dist-assets/css/plugins/quill.snow.min.css" />
@endsection

@section('content')
	<div class="main-content">
        <div class="breadcrumb">
            <h1>Edit</h1>
            <ul>
                <li><a href="/about">About us</a></li>
                <li>Add</li>
            </ul>
        </div>
        <div class="separator-breadcrumb border-top"></div>
            <div class="row">
                <!-- end of col-->
                <div class="col-md-12 mb-4">
                    <div class="card text-left">
                        <div class="card-body">
                        	@if (Session::has('message'))
                        		<div class="alert alert-success" role="alert"><strong class="text-capitalize">Success!</strong> {{ Session::get('message') }}
                                    <button class="close" type="button" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                </div>
							    {{-- <div class="alert alert-info">{{ Session::get('message1') }}</div> --}}
							@endif
                            <h2>Full Editor</h2>
                            <p>
								Update the about us content
                            </p>
                            <form method="POST" action="{{ route('about.update', $about->path()) }}">
                            	@method('PATCH')
                            	@csrf
	                            <div class="mx-auto col-md-8">
	                                <textarea class="form-control" name="body" rows="20">{{ $about->body }}</textarea>
	                            </div>
	                            <button type="submit" class="btn btn-primary rounded">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- end of col-->
            </div>
        <!-- end of main-content -->
    </div>
@endsection

@section('scripts')
	<script src="/admin/dist-assets/js/plugins/quill.min.js"></script>
    <script src="/admin/dist-assets/js/scripts/quill.script.min.js"></script>
@endsection
