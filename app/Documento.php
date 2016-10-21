<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Documento extends Model
{
    protected $table="documentos";
    protected $fillable=['nombre'];


    public  function User(){

    	return $this->hasMany('App\User');
    }
}