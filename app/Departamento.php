<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Departamento extends Model
{
    
	protected $table="departamentos";
	protected $fillable=['nombre'];


    public function Municipio(){

    	return $this->hasMany('App\Municipio');

    }
}
