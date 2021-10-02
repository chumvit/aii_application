<?php
use Illuminate\Database\Seeder;

class AppSettingsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {


        \DB::table('app_settings')->delete();

        \DB::table('app_settings')->insert(array(
            array(
                'id' => 7,
                'key' => 'date_format',
                'value' => 'l jS F Y (H:i:s)',
            ),
            array(
                'id' => 8,
                'key' => 'language',
                'value' => 'en',
            ),
            array(
                'id' => 9,
                'key' => 'language',
                'value' => 'km',
            ),
            array(
                'id' => 17,
                'key' => 'is_human_date_format',
                'value' => '1',
            ),
            array(
                'id' => 18,
                'key' => 'app_name',
                'value' => 'AII Management System',
            ),
            array(
                'id' => 19,
                'key' => 'app_short_description',
                'value' => 'Manage Web Application',
            ),
            array(
                'id' => 20,
                'key' => 'mail_driver',
                'value' => 'smtp',
            ),
            array(
                'id' => 21,
                'key' => 'mail_host',
                'value' => 'smtp.hostinger.com',
            ),
            array(
                'id' => 22,
                'key' => 'mail_port',
                'value' => '587',
            ),
            array(
                'id' => 23,
                'key' => 'mail_username',
                'value' => 'aii_shool@local.com',
            ),
            array(
                'id' => 24,
                'key' => 'mail_password',
                'value' => '',
            ),
            array(
                'id' => 25,
                'key' => 'mail_encryption',
                'value' => 'ssl',
            ),
            array(
                'id' => 26,
                'key' => 'mail_from_address',
                'value' => 'ii_shool_app@local.com',
            ),
            array(
                'id' => 27,
                'key' => 'mail_from_name',
                'value' => 'AII Internation',
            ),
            array(
                'id' => 30,
                'key' => 'timezone',
                'value' => 'Asia/Phnom_Penh',
            ),
            array(
                'id' => 32,
                'key' => 'theme_contrast',
                'value' => 'light',
            ),
            array(
                'id' => 33,
                'key' => 'theme_color',
                'value' => 'primary',
            ),
            array(
                'id' => 34,
                'key' => 'app_logo',
                'value' => '020a2dd4-4277-425a-b450-426663f52633',
            ),
            array(
                'id' => 35,
                'key' => 'nav_color',
                'value' => 'navbar-light bg-white',
            ),
            array(
                'id' => 38,
                'key' => 'logo_bg_color',
                'value' => 'bg-white',
            ),
            array(
                'id' => 66,
                'key' => 'default_role',
                'value' => 'admin',
            ),
            array(
                'id' => 101,
                'key' => 'custom_field_models.0',
                'value' => 'App\\Models\\User',
            ),
            array(
                'id' => 104,
                'key' => 'default_tax',
                'value' => '10',
            ),
            array(
                'id' => 107,
                'key' => 'default_currency',
                'value' => '$',
            ),
            array(
                'id' => 111,
                'key' => 'enable_notifications',
                'value' => '1',
            ),
            array(
                'id' => 116,
                'key' => 'main_color',
                'value' => '#ea5c44',
            ),
            array(
                'id' => 117,
                'key' => 'main_dark_color',
                'value' => '#ea5c44',
            ),
            array(
                'id' => 118,
                'key' => 'second_color',
                'value' => '#344968',
            ),
            array(
                'id' => 119,
                'key' => 'second_dark_color',
                'value' => '#ccccdd',
            ),
            array(
                'id' => 120,
                'key' => 'accent_color',
                'value' => '#8c98a8',
            ),
            array(
                'id' => 121,
                'key' => 'accent_dark_color',
                'value' => '#9999aa',
            ),
            array(
                'id' => 122,
                'key' => 'scaffold_dark_color',
                'value' => '#2c2c2c',
            ),
            array(
                'id' => 123,
                'key' => 'scaffold_color',
                'value' => '#fafafa',
            ),
            array(
                'id' => 126,
                'key' => 'app_version',
                'value' => '0.1.1',
            ),
            array(
                'id' => 127,
                'key' => 'enable_version',
                'value' => '1',
            ),
            array(
                'id' => 128,
                'key' => 'default_currency_id',
                'value' => '1',
            ),
            array(
                'id' => 129,
                'key' => 'default_currency_code',
                'value' => 'USD',
            ),
            array(
                'id' => 130,
                'key' => 'default_currency_decimal_digits',
                'value' => '2',
            ),
            array(
                'id' => 131,
                'key' => 'default_currency_rounding',
                'value' => '0',
            ),
            array(
                'id' => 132,
                'key' => 'currency_right',
                'value' => '0',
            )
            
        ));


    }
}