<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            
            $table->increments('id');
            $table->string('name');
            $table->integer('rol_id')->unsigned();
            $table->integer('documento_id')->unsigned();
            $table->string('numero_doc');
            $table->string('email')->unique();
            $table->string('password');

               // relaciones 
            
           $table->foreign('rol_id')->references('id')->on('roles');
           $table->foreign('documento_id')->references('id')->on('documentos');     


            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('users');
    }
}
