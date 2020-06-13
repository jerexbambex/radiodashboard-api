<!DOCTYPE html>
<html lang="en" dir="">


<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Dashboard</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />
    <link href="/admin/dist-assets/css/themes/lite-purple.min.css" rel="stylesheet" />
    <link href="/admin/dist-assets/css/plugins/perfect-scrollbar.min.css" rel="stylesheet" />
    @yield('styles')
</head>

<body class="text-left">
    <div class="app-admin-wrap layout-sidebar-large">
        <div class="main-header">
            <div class="logo">
                <img src="/admin/dist-assets/images/logo.jira.png" alt="">
            </div>
            <div class="menu-toggle">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div style="margin: auto"></div>
            <div class="header-part-right">
                <!-- Full screen toggle -->
                <i class="i-Full-Screen header-icon d-none d-sm-inline-block" data-fullscreen></i>

                <div class="dropdown">
                    <div class="user col align-self-end">
                        <img src="/admin/dist-assets/images/faces/1.jpg" id="userDropdown" alt="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                            <div class="dropdown-header">
                                <i class="i-Lock-User mr-1"></i> {{ Auth::user()->getFullName() }}
                            </div>
                            <a class="dropdown-item">Account settings</a>
                            <a class="dropdown-item">Billing history</a>
                            <form method="POST" action="{{ route('logout') }}">
                                @csrf
                                {{-- <a class="dropdown-item" href="/logout">Sign out</a> --}}
                                <button class="dropdown-item" type="submit">Sign out</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="side-content-wrap">
            <div class="sidebar-left open rtl-ps-none" data-perfect-scrollbar="" data-suppress-scroll-x="true">
                <ul class="navigation-left">
                    <li class="nav-item"><a class="nav-item-hold" href="/dashboard"><i class="nav-icon i-Bar-Chart"></i><span class="nav-text">Dashboard</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/team"><i class="nav-icon i-Financial"></i><span class="nav-text">Teams</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/schedule"><i class="nav-icon i-Safe-Box1"></i><span class="nav-text">Schedule</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/about"><i class="nav-icon i-Administrator"></i><span class="nav-text">About Us</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/event"><i class="nav-icon i-Library"></i><span class="nav-text">Events</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/social"><i class="nav-icon i-Internet"></i><span class="nav-text">Social Media</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/podcast"><i class="nav-icon i-Computer-Secure"></i><span class="nav-text">Podcasts</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/video"><i class="nav-icon i-Computer-Secure"></i><span class="nav-text">Videos</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/detail"><i class="nav-icon i-Computer-Secure"></i><span class="nav-text">Details</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/slider"><i class="nav-icon i-Computer-Secure"></i><span class="nav-text">Sliders</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/subscribe"><i class="nav-icon i-Computer-Secure"></i><span class="nav-text">Subscribers</span></a>
                        <div class="triangle"></div>
                    </li>
                    <li class="nav-item"><a class="nav-item-hold" href="/contact"><i class="nav-icon i-Email"></i><span class="nav-text">Inbox</span></a>
                        <div class="triangle"></div>
                    </li>
                </ul>
            </div>
            <div class="sidebar-left-secondary rtl-ps-none" data-perfect-scrollbar="" data-suppress-scroll-x="true">
                <!-- Submenu Dashboards-->
                <ul class="childNav" data-parent="team">
                    <li class="nav-item"><a href="/team"><i class="nav-icon i-Clock-3"></i><span class="item-name">View Team</span></a></li>
                    <li class="nav-item"><a href="/team/create"><i class="nav-icon i-Add-User"></i><span class="item-name">Add Member</span></a></li>
                </ul>
                <ul class="childNav" data-parent="schedule">
                    <li class="nav-item"><a href="/schedule"><i class="nav-icon i-Clock-3"></i><span class="item-name">View Schedules</span></a></li>
                    <li class="nav-item"><a href="/schedule/create"><i class="nav-icon i-Add-User"></i><span class="item-name">Add Schedule</span></a></li>
                </ul>
            </div>
            <div class="sidebar-overlay"></div>
        </div>
        <!-- =============== Left side End ================-->

        <div class="main-content-wrap sidenav-open d-flex flex-column">
            <!-- ============ Body content start ============= -->
            @yield('content')
            <!-- Footer Start -->
            <div class="flex-grow-1"></div>
            <div class="app-footer">
                <div class="row">
                    {{-- <div class="col-md-9">
                        <p><strong>Gull - Laravel + Bootstrap 4 admin template</strong></p>
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Libero quis beatae officia saepe perferendis voluptatum minima eveniet voluptates dolorum, temporibus nisi maxime nesciunt totam repudiandae commodi sequi dolor quibusdam
                            <sunt></sunt>
                        </p>
                    </div> --}}
                </div>
                <div class="footer-bottom border-top pt-3 d-flex flex-column flex-sm-row align-items-center">
                    <a class="btn btn-primary text-white btn-rounded" href="">Action</a>
                    <span class="flex-grow-1"></span>
                    <div class="d-flex align-items-center">
                        <img class="logo" src="/admin/dist-assets/images/logo.jira.png" alt="">
                        <div>
                            <p class="m-0">&copy; {{ date('Y') }} JobRadio</p>
                            <p class="m-0">All rights reserved</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer end -->
        </div>
    </div>


    <script src="/admin/dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
    <script src="/admin/dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
    <script src="/admin/dist-assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="/admin/dist-assets/js/scripts/script.min.js"></script>
    <script src="/admin/dist-assets/js/scripts/sidebar.large.script.min.js"></script>
    <script src="/admin/dist-assets/js/plugins/echarts.min.js"></script>
    <script src="/admin/dist-assets/js/scripts/echart.options.min.js"></script>
    <script src="/admin/dist-assets/js/scripts/dashboard.v1.script.min.js"></script>
    @yield('scripts')
</body>

</html>