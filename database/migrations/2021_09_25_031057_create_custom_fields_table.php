<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCustomFieldsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('custom_fields', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 127);
            $table->string('type', 56);
            $table->string('values')->nullable();
            $table->boolean('disabled')->nullable();
            $table->boolean('required')->nullable();
            $table->boolean('in_table')->nullable();
            $table->tinyInteger('bootstrap_column')->nullable();
            $table->tinyInteger('order')->nullable();
            $table->string('custom_field_model', 127);
            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('custom_fields');
    }
}
