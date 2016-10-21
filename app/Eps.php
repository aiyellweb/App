<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Eps extends Model
{
    protected  $table='eps';
    protected $fillable=['codigo_eps','descripcion_eps','nit_eps','estado_eps','user_id'];

    
}
