<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Banco extends Model
{
    	protected $table="banco";

    	protected $fillable=['codigo','descripcion'];


    	public function Cuenta_bancarias(){

    		return $this->hasMany('App\Cuenta_bancarias');
    	}
    	
}
