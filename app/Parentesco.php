<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Parentesco extends Model
{
     protected $table='parentescos';
     protected $fillable=['codigo_parentesco','descripcion_parentesco'];


   
}
