<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoContratista extends Model
{
    protected $table='tipo_contratista';
    protected $fillable=['codigo_tipo_contratista','descripcion'];
}
