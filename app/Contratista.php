<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contratista extends Model
{
   
	protected $table='contratista';

   protected $fillable = ['numero_documento_identificacion', 'tipo_documento', 'codigo_municipio_documento', 'archivo_documento', 'nombre_contratista', 'nombre_contratista2', 'apellido_contratista1', 'apellido_contratista2', 'direccion_contratista', 'direccion_barrio', 'codigo_municipio', 'fecha_nacimiento_contratista', 'estado_civil', 'nivel_educacion', 'telefono_contratista1', 'telefono_contratista2', 'correo_electronico', 'estado_contratista', 'fecha_estado_contratista', 'nit_contratante'];


   public function Departamento(){

   		return $this->belongsTo('App\Departamento','codigo_municipio_documento');

   }



   public function Municipio(){

   		return $this->belongsTo('App\Municipio','codigo_municipio_documento','codigo_municipio');

   }

}
