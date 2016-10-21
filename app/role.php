<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class role extends Model
{
    	protected $table='roles';

    	protected $fillable=['nombre'];


   public function User(){

   			return $this->hasMany('App\User');
   }

   
}
