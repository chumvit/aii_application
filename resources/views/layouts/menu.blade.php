@can('dashboard')
    <li class="nav-item">
        <a class="nav-link {{ Request::is('dashboard*') ? 'active' : '' }}" href="{!! url('dashboard') !!}">
                <i class="nav-icon fa fa-dashboard"></i>
            <p>{{trans('lang.dashboard')}}</p></a>
    </li>
@endcan

<li class="nav-header">{{trans('lang.app_setting')}}</li>
@can('medias')
    <li class="nav-item">
        <a class="nav-link {{ Request::is('medias*') ? 'active' : '' }}" href="{!! url('medias') !!}"><i class="nav-icon fa fa-picture-o"></i>
            <p>{{trans('lang.media_plural')}}</p></a>
    </li>
@endcan
@can('app-settings')
    <li class="nav-item has-treeview {{ (Request::is('settings*') || Request::is('users*')) && !Request::is('settings/mobile*') ? 'menu-open' : '' }}">
        <a href="#" class="nav-link {{ (Request::is('settings*') || Request::is('users*')) && !Request::is('settings/mobile*') ? 'active' : '' }}"> 
            @if($icons)<i class="nav-icon fa fa-cog"></i>@endif
            <p>{{trans('lang.app_setting')}} <i class="right fa fa-angle-left"></i></p>
        </a>
        <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="{!! url('settings/app/globals') !!}" class="nav-link {{  Request::is('settings/app/globals*') ? 'active' : '' }}">
                    @if($icons)<i class="nav-icon fa fa-cog"></i> @endif <p>{{trans('lang.app_setting_globals')}}</p>
                </a>
            </li>
            @can('users.index')
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('users*') ? 'active' : '' }}" href="{!! route('users.index') !!}">@if($icons)
                            <i class="nav-icon fa fa-user"></i>@endif
                        <p>{{trans('lang.user_plural')}}</p></a>
                </li>
            @endcan
            @can('permissions.index')
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('settings/permissions') ? 'active' : '' }}" href="{!! route('permissions.index') !!}">
                        @if($icons)<i class="nav-icon fa fa-lock"></i>@endif
                        <p>{{trans('lang.permission_table')}}</p>
                    </a>
                </li>
                @can('roles.index')
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('settings/roles') ? 'active' : '' }}" href="{!! route('roles.index') !!}">
                            @if($icons)<i class="nav-icon fa fa-key"></i>@endif
                            <p>{{trans('lang.role_table')}}</p>
                        </a>
                    </li>
                @endcan  
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('settings/customFields*') ? 'active' : '' }}" href="{!! route('customFields.index') !!}">
                        @if($icons)<i class="nav-icon fa fa-list"></i>@endif
                        <p>{{trans('lang.custom_field_plural')}}</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('settings/app/localisation*') ? 'active' : '' }}" href="{!! url('settings/app/localisation') !!}">
                        @if($icons)<i class="nav-icon fa fa-language"></i>@endif
                        <p>{{trans('lang.app_setting_localisation')}}</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('settings/translation*') ? 'selected' : '' }}" href="{!! url('settings/translation/en') !!}">
                        @if($icons)<i class="nav-icon fa fa-language"></i>@endif
                        <p> {{trans('lang.app_setting_translation')}}</p>
                    </a>
                </li>
            @endcan
            
@endcan

