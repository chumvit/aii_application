<?php

use Illuminate\Database\Seeder;

class DefaultPermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('permissions')->delete();

        \DB::table('permissions')->insert(array (
            0 =>
                array (
                    'id' => 1,
                    'name' => 'users.profile',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:02',
                    'updated_at' => '2021-03-29 14:58:02',
                    'deleted_at' => NULL,
                ),
            1 =>
                array (
                    'id' => 2,
                    'name' => 'dashboard',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:02',
                    'updated_at' => '2021-03-29 14:58:02',
                    'deleted_at' => NULL,
                ),
            2 =>
                array (
                    'id' => 3,
                    'name' => 'medias.create',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:02',
                    'updated_at' => '2021-03-29 14:58:02',
                    'deleted_at' => NULL,
                ),
            3 =>
                array (
                    'id' => 4,
                    'name' => 'medias.delete',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:02',
                    'updated_at' => '2021-03-29 14:58:02',
                    'deleted_at' => NULL,
                ),
            4 =>
                array (
                    'id' => 5,
                    'name' => 'medias',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            5 =>
                array (
                    'id' => 6,
                    'name' => 'permissions.index',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            6 =>
                array (
                    'id' => 7,
                    'name' => 'permissions.edit',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            7 =>
                array (
                    'id' => 8,
                    'name' => 'permissions.update',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            8 =>
                array (
                    'id' => 9,
                    'name' => 'permissions.destroy',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            9 =>
                array (
                    'id' => 10,
                    'name' => 'roles.index',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            10 =>
                array (
                    'id' => 11,
                    'name' => 'roles.edit',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            11 =>
                array (
                    'id' => 12,
                    'name' => 'roles.update',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            12 =>
                array (
                    'id' => 13,
                    'name' => 'roles.destroy',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            13 =>
                array (
                    'id' => 14,
                    'name' => 'customFields.index',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            14 =>
                array (
                    'id' => 15,
                    'name' => 'customFields.create',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            15 =>
                array (
                    'id' => 16,
                    'name' => 'customFields.store',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            16 =>
                array (
                    'id' => 17,
                    'name' => 'customFields.show',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            17 =>
                array (
                    'id' => 18,
                    'name' => 'customFields.edit',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:03',
                    'updated_at' => '2021-03-29 14:58:03',
                    'deleted_at' => NULL,
                ),
            18 =>
                array (
                    'id' => 19,
                    'name' => 'customFields.update',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            19 =>
                array (
                    'id' => 20,
                    'name' => 'customFields.destroy',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            20 =>
                array (
                    'id' => 21,
                    'name' => 'users.login-as-user',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            21 =>
                array (
                    'id' => 22,
                    'name' => 'users.index',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            22 =>
                array (
                    'id' => 23,
                    'name' => 'users.create',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            23 =>
                array (
                    'id' => 24,
                    'name' => 'users.store',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            24 =>
                array (
                    'id' => 25,
                    'name' => 'users.show',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            25 =>
                array (
                    'id' => 26,
                    'name' => 'users.edit',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            26 =>
                array (
                    'id' => 27,
                    'name' => 'users.update',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            27 =>
                array (
                    'id' => 28,
                    'name' => 'users.destroy',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            28 =>
                array (
                    'id' => 29,
                    'name' => 'app-settings',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:58:04',
                    'updated_at' => '2021-03-29 14:58:04',
                    'deleted_at' => NULL,
                ),
            29 =>
                array (
                    'id' => 30,
                    'name' => 'permissions.create',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:59:15',
                    'updated_at' => '2021-03-29 14:59:15',
                    'deleted_at' => NULL,
                ),
            30 =>
                array (
                    'id' => 31,
                    'name' => 'permissions.store',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:59:15',
                    'updated_at' => '2021-03-29 14:59:15',
                    'deleted_at' => NULL,
                ),
            31 =>
                array (
                    'id' => 32,
                    'name' => 'permissions.show',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:59:15',
                    'updated_at' => '2021-03-29 14:59:15',
                    'deleted_at' => NULL,
                ),
            32 =>
                array (
                    'id' => 33,
                    'name' => 'roles.create',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:59:15',
                    'updated_at' => '2021-03-29 14:59:15',
                    'deleted_at' => NULL,
                ),
            33 =>
                array (
                    'id' => 34,
                    'name' => 'roles.store',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:59:15',
                    'updated_at' => '2021-03-29 14:59:15',
                    'deleted_at' => NULL,
                ),
            34 =>
                array (
                    'id' => 36,
                    'name' => 'roles.show',
                    'guard_name' => 'web',
                    'created_at' => '2021-03-29 14:59:16',
                    'updated_at' => '2021-03-29 14:59:16',
                    'deleted_at' => NULL,
                ),
        ));
    }
}
