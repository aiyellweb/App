<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cuenta_bancarias extends Model
{
    protected $table="cuenta_bancarias";
    protected $fillable=['codigo_banco','numero_cuenta','tipo_cuenta'];


    public function Banco(){

    	return $this->belongsTo('App\Banco','codigo_banco');
    }

}
