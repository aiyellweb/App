<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddArlTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('arl', function (Blueprint $table) {
            $table->increments('id');
            $table->string('codigo',30)->unique();
            $table->string('descripcion');
            $table->string('nit',30)->unique();
            $table->string('estado',15);
            $table->string('fecha_estado',30);
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
        Schema::drop('arl');
    }
}
