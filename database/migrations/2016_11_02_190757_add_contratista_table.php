<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddContratistaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contratista', function (Blueprint $table) {
            $table->increments('id');
            $table->string('numero_documento_identificacion')->unique();
            $table->string('tipo_documento');
            $table->integer('codigo_municipio_documento')->unsigned();
            $table->string('archivo_documento');
            $table->string('nombre_contratista');
            $table->string('nombre_contratista2');
            $table->string('apellido_contratista1');
            $table->string('direccion_contratista');
            $table->string('direccion_barrio');
            $table->integer('codigo_municipio')->unsigned();
            $table->string('fecha_nacimiento_contratista');
            $table->string('estado_civil');
            $table->string('nivel_educacion');
            $table->string('telefono_contratista1');
            $table->string('telefono_contratista2');
            $table->string('correo_electronico');
            $table->string('estado_contratista');
            $table->date('fecha_estado_contratista');
            $table->string('nit_contratante');
           
             $table->foreign('codigo_municipio_documento')->references('id')->on('departamentos');
             $table->foreign('codigo_municipio')->references('id')->on('municipios');   
           

            

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
        Schema::drop('contratista');
    }
}



