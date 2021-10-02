<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Chum Vit',
                'email' => 'chumvit.it@gmail.com',
                'password' => '$2y$10$HpNBol3YaLeSOQK4c0f5ke6x1BNEia5I8ttA4wRkP9s68udTJqWiK', // admin123
                'api_token' => 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA',
                'remember_token' => 'T4PQhFvBcAA7k02f7ejq4I7z7QKKnvxQLV0oqGnuS6Ktz6FdWULrWrzZ3oYn',
                'created_at' => '2021-08-06 22:58:41',
                'updated_at' => '2021-09-13 07:49:45',
                'device_token' => NULL,
            ),
            
        ));
    }
}
