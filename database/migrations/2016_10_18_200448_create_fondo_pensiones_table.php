<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFondoPensionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fondo_pensiones', function (Blueprint $table) {
            $table->increments('id');
            $table->string('codigo_fondo_pension',30)->unique();
            $table->string('descripcion_fondo_pension',60);
            $table->string('nit_fondo_pension',60);
            $table->string('estado_fondo_pension',10);
            $table->string('fecha_fondo_pension',20);
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
        Schema::drop('fondo_pensiones');
    }
}
