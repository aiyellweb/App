<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Municipio extends Model
{
    protected $table='municipios';
    protected $fillable=['nombre','departamento_id'];




     function departamentos() {

   		return $this->belongsTo('App\Departamento','departamento_id');
   }


}
