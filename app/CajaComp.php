<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CajaComp extends Model
{
    //

protected $table='caja_compensacion';
protected $fillable=['codigo_caja','descripcion_caja','nit_caja','estado_caja','fecha_estado_caja'];



}
