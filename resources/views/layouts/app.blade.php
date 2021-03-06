<!DOCTYPE html>
<html lang="{{setting('language','en')}}" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>{{setting('app_name')}} | {{setting('app_short_description')}}</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link rel="icon" type="image/png" href="{{$app_logo}}"/>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('plugins/font-awesome/css/font-awesome.min.css')}}">

@stack('css_lib')
<!-- Theme style -->
    <link rel="stylesheet" href="{{asset('dist/css/adminlte.css')}}">
    <link rel="stylesheet" href="{{asset('plugins/bootstrap-sweetalert/sweetalert.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,600" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/custom.css')}}">
    <link rel="stylesheet" href="{{asset('css/'.setting("theme_color","primary").'.css')}}">
    @yield('css_custom')
</head>

<body style="height: 100%; background-color: #f9f9f9;" class="hold-transition sidebar-mini {{setting('theme_color')}}">
@if(auth()->check())
    <div class="wrapper">
        <!-- Main Header -->
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand {{setting('fixed_header','')}} {{setting('nav_color','navbar-light bg-white')}} border-bottom">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="{{url('dashboard')}}" class="nav-link">{{trans('lang.dashboard')}}</a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                @if(env('APP_CONSTRUCTION',false))
                    <li class="nav-item">
                        <a class="nav-link text-danger" href="#"><i class="fa fa-info-circle"></i>
                            {{env('APP_CONSTRUCTION','') }}</a>
                    </li>
                @endif
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('notifications*') ? 'active' : '' }}" href="#"><i class="fa fa-bell"></i></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <img src="{{auth()->user()->getFirstMediaUrl('avatar','icon')}}" class="brand-image mx-2 img-circle elevation-2" alt="User Image">
                        {!! auth()->user()->name !!}

                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="{{route('users.profile')}}" class="dropdown-item"> <i class="fa fa-user mr-2"></i> {{trans('lang.user_profile')}} </a>
                        <div class="dropdown-divider"></div>
                        <a href="{!! url('/logout') !!}" class="dropdown-item" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            <i class="fa fa-power-off  mr-2"></i> {{__('auth.logout')}}
                        </a>
                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </div>
                </li>
            </ul>
        </nav>

        <!-- Left side column. contains the logo and sidebar -->
    @include('layouts.sidebar')
    <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            @yield('content')
        </div>

        <!-- Main Footer -->
        <footer class="main-footer {{setting('fixed_footer','')}}">
            <div class="float-right d-none d-sm-block">
                <b>{{trans('lang.app_setting_version')}}</b> {{implode('.',str_split(substr(config('installer.currentVersion','v100'),1,3)))}}
            </div>
            <strong>Copyright ?? {{date('Y')}} <a href="{{url('/')}}">{{setting('app_name')}}</a>.</strong> All rights reserved.
        </footer>

    </div>
@else
    <nav class="nmain-header navbar navbar-expand {{setting('nav_color','navbar-light bg-white')}} border-bottom">
        <div class="container">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="{!! url('/') !!}">{{setting('app_name')}}</a>
                </li>
                @include('layouts.menu')
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        {!! Auth::user()->name !!}
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="{{route('users.profile')}}" class="dropdown-item"> <i class="fa fa-user mr-2"></i> Profile </a>
                        <div class="dropdown-divider"></div>
                        <a href="{!! url('/logout') !!}" class="dropdown-item" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            <i class="fa fa-envelope mr-2"></i> {{__('auth.logout')}}
                        </a>
                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <div id="page-content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    @yield('content')
                </div>
            </div>
            <!-- Main Footer -->
            <footer class="{{setting('fixed_footer','')}}">
                <div class="float-right d-none d-sm-block">
                    <b>Version</b> {{implode('.',str_split(substr(config('installer.currentVersion','v100'),1,3)))}}
                </div>
                <strong>Copyright ?? {{date('Y')}} <a href="{{url('/')}}">{{setting('app_name')}}</a>.</strong> All rights reserved.
            </footer>
        </div>
    </div>

    @endrole


    <!-- jQuery -->
    <script src="{{asset('plugins/jquery/jquery.min.js')}}"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="{{asset('plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- The core Firebase JS SDK is always required and must be listed first -->
    <!-- <script src="{{asset('https://www.gstatic.com/firebasejs/7.2.0/firebase-app.js')}}"></script> -->

    <script type="text/javascript">
        
        function getRegToken(argument) {
            messaging.getToken().then(function(currentToken) {
                if (currentToken) {
                    saveToken(currentToken);
                    console.log(currentToken);
                } else {
                    console.log('No Instance ID token available. Request permission to generate one.');
                }
            })
                .catch(function(err) {
                    console.log('An error occurred while retrieving token. ', err);
                });
        }


        function saveToken(currentToken) {
            $.ajax({
                type: "POST",
                data: {'device_token': currentToken, 'api_token': '{!! auth()->user()->api_token !!}'},
                url: '{!! url('api/users',['id'=>auth()->id()]) !!}',
                success: function (data) {

                },
                error: function (err) {
                    console.log(err);
                }
            });
        }
    </script>
    <!-- datepicker -->
    <script src="{{asset('plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}"></script>
    <!-- Slimscroll -->
    <script src="{{asset('plugins/slimScroll/jquery.slimscroll.min.js')}}"></script>
    <script src="{{asset('plugins/bootstrap-sweetalert/sweetalert.min.js')}}"></script>
    @stack('scripts_lib')
    <!-- AdminLTE App -->
    <script src="{{asset('dist/js/adminlte.js')}}"></script>
    <script src="{{asset('dist/js/demo.js')}}"></script>

    <script src="{{asset('js/scripts.js')}}"></script>
    @stack('scripts')
</body>
</html>