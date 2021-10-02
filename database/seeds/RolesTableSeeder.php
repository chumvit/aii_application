<?php

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('roles')->delete();
        
        \DB::table('roles')->insert(array (
            0 => 
            array (
                'id' => 2,
                'name' => 'administrator',
                'guard_name' => 'web',
                'default' => 0,
                'created_at' => '2018-07-21 16:37:56',
                'updated_at' => '2019-09-07 22:42:01',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 3,
                'name' => 'manager',
                'guard_name' => 'web',
                'default' => 0,
                'created_at' => '2019-09-07 22:41:38',
                'updated_at' => '2019-09-07 22:41:38',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 4,
                'name' => 'teacher',
                'guard_name' => 'web',
                'default' => 1,
                'created_at' => '2019-09-07 22:41:54',
                'updated_at' => '2019-09-07 22:41:54',
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 5,
                'name' => 'cashier',
                'guard_name' => 'web',
                'default' => 0,
                'created_at' => '2019-12-15 18:50:21',
                'updated_at' => '2019-12-15 18:50:21',
                'deleted_at' => NULL,
            ),
        ));
    }
}
