<?php

use Illuminate\Database\Seeder;

class CustomFieldValuesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        \DB::table('custom_field_values')->delete();
        
        \DB::table('custom_field_values')->insert(array (
            0 => 
            array (
                'id' => 29,
                'value' => '+136 226 5669',
                'view' => '+136 226 5669',
                'custom_field_id' => 4,
                'customizable_type' => 'App\\Models\\User',
                'customizable_id' => 2,
                'created_at' => '2019-09-06 21:52:30',
                'updated_at' => '2019-09-06 21:52:30',
            ),
            1 => 
            array (
                'id' => 30,
                'value' => 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.',
                'view' => 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.',
                'custom_field_id' => 5,
                'customizable_type' => 'App\\Models\\User',
                'customizable_id' => 2,
                'created_at' => '2019-09-06 21:52:30',
                'updated_at' => '2019-10-16 19:32:35',
            ),           
        ));
    }
}
