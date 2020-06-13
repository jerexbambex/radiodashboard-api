@extends('layouts.template')

@section('content')
 	@if(!$mails->count())
        <div class="not-found-wrap text-center">
            <h1 class="text-50">Welcome</h1>
            <p class="subheading mb-3"><img src="/admin/dist-assets/images/faces/Illustration_bokcnj.png" width="20%"></p>
            <p class="mb-5 text-muted text-18">No mails yet.</p>
        </div>
    @else
		<div class="main-content">
	        <div class="breadcrumb">
	            <h1>Inbox</h1>
	            <ul>
	                <li><a href="/">Dashboard</a></li>
	                {{-- <li>Add</li> --}}
	            </ul>
	        </div>
	        <div class="separator-breadcrumb border-top"></div>

	        <div class="inbox-main-sidebar-container sidebar-container" data-sidebar-container="main">
                <div class="inbox-main-content sidebar-content" data-sidebar-content="main">
                    <!-- SECONDARY SIDEBAR CONTAINER-->
                    <div class="inbox-secondary-sidebar-container box-shadow-1 sidebar-container" data-sidebar-container="secondary">
                        <div data-sidebar-content="secondary" class="sidebar-content" style="margin-left: 360px;">
                            <div class="inbox-secondary-sidebar-content position-relative" style="min-height: 500px">
                                <div class="inbox-topbar box-shadow-1 perfect-scrollbar rtl-ps-none pl-3 ps" data-suppress-scroll-y="true">
                                    <!-- <span class="d-sm-none">Test</span>-->
                                    <a class="link-icon d-md-none" data-sidebar-toggle="main">
                                    	<i class="icon-regular i-Arrow-Turn-Left"></i>
                                    </a>
                                    <a class="link-icon mr-3 d-md-none" data-sidebar-toggle="secondary">
                                    	<i class="icon-regular mr-1 i-Left-3"></i> Inbox
                                    </a>

                                </div>
                                <!-- EMAIL DETAILS-->
                                <div class="inbox-details perfect-scrollbar rtl-ps-none ps" data-suppress-scroll-x="true">

                                    <div class="not-found-wrap text-center">
                                        <img src="/admin/dist-assets/images/opened.png" alt="" width="60%">
                                    </div>
                                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                    	<div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                                    </div>
                                    <div class="ps__rail-y" style="top: 0px; right: 0px;">
                                    	<div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Secondary Inbox sidebar-->
                        <div class="inbox-secondary-sidebar perfect-scrollbar rtl-ps-none ps sidebar ps--active-y" data-sidebar="secondary" style="left: 0px;"><i class="sidebar-close i-Close" data-sidebar-toggle="secondary"></i>
                            @foreach($mails as $mail)
                                <div class="">
                                	<a class="mail-item {{ !$mail->status ? 'font-weight-bold' : '' }}" href="/contact/{{ $mail->path() }}">
	                                    {{-- <div class="avatar"><img src="../../dist-assets/images/faces/1.jpg" alt=""></div> --}}
	                                    <div class="col-xs-6 details"><span class="name text-muted">{{ $mail->fullname }}</span>
	                                        <p class="m-0">{{ $mail->subject }}</p>
	                                    </div>
	                                    <div class="col-xs-3 date">
                                            <span class="text-muted">{{ $mail->created_at->diffForHumans() }}</span>
                                            @if(!$mail->status)
                                                <span class="badge badge-pill badge-danger m-2">New</span>
                                            @endif
                                        </div>
                                    </a>
                                </div>
                            @endforeach
                        <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px; height: 568px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 497px;"></div></div></div>
                    </div>
                </div>
                <!-- MAIN INBOX SIDEBAR-->

            </div>
	    </div>
	@endif
@endsection