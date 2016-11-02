<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCuentaBancariasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cuenta_bancarias', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('codigo_banco')->unsigned();
            $table->string('numero_cuenta')->unique();
            $table->string('tipo_cuenta');
            $table->foreign('codigo_banco')->references('id')->on('banco');
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
        Schema::drop('cuenta_bancarias');
    }
}
