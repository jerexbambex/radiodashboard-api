@extends('layouts.template')

@section('styles')
    <link rel="stylesheet" href="/admin/dist-assets/css/plugins/datatables.min.css">
@endsection

@section('content')
	<div class="main-content">
        <div class="breadcrumb">
            <h1>Programme Schedules</h1>
            <ul>
                {{-- <li>Team</li> --}}
                <li>All</li>
            </ul>
        </div>
        <div class="separator-breadcrumb border-top"></div>

        <div class="row">
        	<div class="col-lg-4 col-md-6 col-sm-6">
                <div class="card card-icon mb-4">
                    <div class="card-body text-center"><i class="i-Data-Upload"></i>
                        <p class="text-muted mt-2 mb-2">Total uploaded Programmes</p>
                        <p class="text-primary text-24 line-height-1 m-0">{{ $schedules->count() }}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <h4>List of programmes</h4>
            </div>
        </div>

        <div class="row">
        	<div class="col-md-12 mb-4">
                <div class="card text-left">
                    <div class="card-body">
                        <h4 class="card-title mb-3">Language options</h4>
                        <p>Changing the language information displayed by DataTables is as simple as passing in a language object to the DataTable constructor. This example shows a different set of English string being used, rather than the defaults.</p>
                        <div class="table-responsive">
                            <div id="language_option_table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                                <div class="row">
                                    {{-- <div class="col-sm-12 col-md-6">
                                        <div class="dataTables_length" id="language_option_table_length">
                                            <label>Display
                                                <select name="language_option_table_length" aria-controls="language_option_table" class="form-control form-control-sm">
                                                    <option value="10">10</option>
                                                    <option value="25">25</option>
                                                    <option value="50">50</option>
                                                    <option value="100">100</option>
                                                </select> records per page
                                            </label>
                                        </div>
                                    </div> --}}
                                    {{-- <div class="col-sm-12 col-md-6">
                                        <div id="language_option_table_filter" class="dataTables_filter">
                                            <label>Search:
                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="language_option_table">
                                            </label>
                                        </div>
                                    </div> --}}
                                </div>
                                <div class="row"><div class="col-sm-12">
                                    <table class="display table table-striped table-bordered dataTable" id="language_option_table" style="width: 100%;" role="grid" aria-describedby="language_option_table_info">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc" tabindex="0" aria-controls="language_option_table" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 207px;">
                                                        Day
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="language_option_table" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 325px;">
                                                        Title
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="language_option_table" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 167px;">
                                                        Starts
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="language_option_table" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 87px;">
                                                        Ends
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="language_option_table" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 157px;">
                                                        Anchor
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="language_option_table" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 115px;">
                                                        Description
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="language_option_table" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 115px;">
                                                        Action
                                                    </th>
                                                </tr>
                                            </thead>
                                        <tbody>
                                            @foreach($schedules as $schedule)
                                                <tr role="row" class="">
                                                    <td class="sorting_1">{{ $schedule->day }}</td>
                                                    <td>{{ $schedule->title }}</td>
                                                    <td>{{ $schedule->start_time }}</td>
                                                    <td>{{ $schedule->end_time }}</td>
                                                    <td>{{ $schedule->anchor }}</td>
                                                    <td>{{  Str::limit($schedule->description, $limit = 50, $end = '...')  }}</td>
                                                    <td>
                                                        <div class="d-flex justify-content-around text-center col-12">
                                                            <form method="POST" action="{{ route('schedule.destroy', $schedule->path()) }}">
                                                                @method('delete')
                                                                @csrf
                                                                <button type="submit" class="btn btn-default btn-rounded text-danger">Delete</button>
                                                            </form>
                                                            <a href="/schedule/{{ $schedule->path() }}/edit" class="btn btn-primary btn-rounded text-white">Edit</a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                        <tfoot>
                                            <tr><th rowspan="1" colspan="1">Day</th><th rowspan="1" colspan="1">Title</th><th rowspan="1" colspan="1">Starts</th><th rowspan="1" colspan="1">Ends</th><th rowspan="1" colspan="1">Anchor</th><th rowspan="1" colspan="1">Description</th><th rowspan="1" colspan="1">Action</th></tr>
                                        </tfoot>
                                    </table>
                                    </div>
                                </div>
                                {{-- <div class="row">
                                    <div class="col-sm-12 col-md-5">
                                        <div class="dataTables_info" id="language_option_table_info" role="status" aria-live="polite">Showing page 1 of 2</div>
                                    </div>
                                    <div class="col-sm-12 col-md-7">
                                        <div class="dataTables_paginate paging_simple_numbers" id="language_option_table_paginate">
                                            <ul class="pagination">
                                                <li class="paginate_button page-item previous disabled" id="language_option_table_previous">
                                                    <a href="#" aria-controls="language_option_table" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                                                </li>
                                                <li class="paginate_button page-item active">
                                                    <a href="#" aria-controls="language_option_table" data-dt-idx="1" tabindex="0" class="page-link">1</a>
                                                </li>
                                                <li class="paginate_button page-item ">
                                                    <a href="#" aria-controls="language_option_table" data-dt-idx="2" tabindex="0" class="page-link">2</a>
                                                </li>
                                                <li class="paginate_button page-item next" id="language_option_table_next">
                                                    <a href="#" aria-controls="language_option_table" data-dt-idx="3" tabindex="0" class="page-link">Next</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end of main-content -->
    </div>
@endsection

@section('scripts')
    {{-- <script src="/admin/dist-assets/js/plugins/datatables.min.js"></script> --}}
    <script src="/admin/dist-assets/js/scripts/datatables.script.min.js"></script>
@endsection