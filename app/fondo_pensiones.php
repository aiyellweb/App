<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class fondo_pensiones extends Model
{
    protected $table='fondo_pensiones';

    protected $fillable=['codigo_fondo_pension','descripcion_fondo_pension',
    					'nit_fondo_pension','estado_fondo_pension','fecha_fondo_pension'];



    					

    					
}
