<?php

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Exceptions\PermissionDoesNotExist;
use Spatie\Permission\Exceptions\RoleDoesNotExist;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionsTableSeeder extends Seeder
{
    //$ php artisan db:seed --class=PermissionsTableSeeder
    private $exceptNames = [
        'debugbar*'
    ];

    private $exceptControllers = [
        'LoginController',
        'ForgotPasswordController',
        'ResetPasswordController',
        'RegisterController'
    ];

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $routeCollection = Route::getRoutes();
        try{
            $role = Role::findByName('administrator');
            if (!$role) {
                $role = Role::create(['name' => 'administrator']);
            }
        }catch (Exception $e){
            if($e instanceof RoleDoesNotExist){
                $role = Role::create(['name' => 'administrator']);
            }
        }
        foreach ($routeCollection as $route) {
            if ($this->match($route)) {
                // PermissionDoesNotExist
                try{
                    if(!$role->hasPermissionTo($route->getName())){
                        $permission = Permission::create(['name' => $route->getName()]);
                        $role->givePermissionTo($permission);
                    }
                }catch (Exception $e){
                    if($e instanceof PermissionDoesNotExist){
                        $permission = Permission::create(['name' => $route->getName()]);
                        $role->givePermissionTo($permission);
                    }
                }
            }
        }
        $user = User::find(1);
        if(!$user->hasRole('administrator')){
            $user->assignRole('administrator');
        }
    }

   
}
