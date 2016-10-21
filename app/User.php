<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Authenticatable
{
        use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'rol_id','documento_id','numero_doc','password',
    ];


/////////////////////RELACIONES////////////////////////7
    public function Documento(){

        return $this->belongsTo('App\Documentos','documento_id');
    }


public function role(){
    return $this->belongsTo('App\role','rol_id');
}

//////////////////////FIN RELACIONES/////////////////////////////////


    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $dates = ['deleted_at'];
}
