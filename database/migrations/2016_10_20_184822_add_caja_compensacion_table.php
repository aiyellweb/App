<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCajaCompensacionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('caja_compensacion', function (Blueprint $table) {
            $table->increments('id');
            $table->string('codigo_caja',30);
            $table->string('descripcion_caja',200);
            $table->string('nit_caja',20);
            $table->string('estado_caja',40);
            $table->string('fecha_estado_caja');
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
        Schema::drop('caja_compensacion');
    }
}
