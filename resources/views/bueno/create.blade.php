@extends('layouts.admin')
@section('content')
@include('alerts.success')




<div class="container-fluid responsive" style="min-height:540px; ">
     <div>
      <ul class="nav pull-right">
        <li>
            <a href="/" class="btn btn-default" role="button">Listar</a>
        </li>     
      </ul>
      <h1>Registrar Contratista</h1>
    </div>
    <hr>
    <div class="panel panel-default">
      <div class="panel-body">

       {!!Form::open(['route'=>'bueno.store', 'method'=>'POST','files'=>true])!!}

         
          
          <div class="row espacio">
         
            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">
              {!!form::label('tipo_documento','Tipo de documento:')  !!}
{!!form::select('tipo_documento',['CC'=>'Cédula ciudadanía','CE'=>'Cédula de extranjería','PA'=>'PASAPORTE'],null,
['class'=>'form-control','placeholder'=>'Estado','required'])!!}
    


              </div>
           </div>   


      <div class="col-xs-12 col-sm-12 col-md-4">
            <div class="form-group">         
      {!!form::label('numero_documento_identificacion','Número del documento:')  !!}
     {!!form::text('numero_documento_identificacion',null,['class'=>'form-control','placeholder'=>'digite documento'])!!}

         </div>
      </div>
         

            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">
      
        {!!Form::label('codigo_municipio_documento','departamentos')  !!}
    {!!Form::select('codigo_municipio_documento',$departamento,null,['class'=>'form-control','placeholder'=>'seleccione documento'])!!}

                </select>
              </div>
         
            </div>
          </div>




          <div class="row sombra">
            <div class="col-xs-12 col-sm-12 col-md-6">
              <div class="form-group">

                {!!Form::label('archivo_documento','Adjuntar documento - archivo (.pdf) o Imagen (jpeg, png, bmp, o gif):')!!}
                  {!!Form::file('archivo_documento')!!}
              </div>
             

            </div>
          </div>



          <div class="row espacio">
            <div class="col-xs-12 col-sm-12 col-md-3">
              <div class="form-group">
            
        {!!form::label('nombre_contratista','Primer nombre:')  !!}
          {!!form::text('nombre_contratista',null,['class'=>'form-control','placeholder'=>'digite nombre'])!!}

              </div>
             
            </div>

            <div class="col-xs-12 col-sm-12 col-md-3">
              <div class="form-group">  

            {!!form::label('nombre_contratista2','segundo nombre:')  !!}
          {!!form::text('nombre_contratista2',null,['class'=>'form-control','placeholder'=>'digite Segundo nombre'])!!}

              </div>
            
            </div>



            <div class="col-xs-12 col-sm-12 col-md-3">
              <div class="form-group">
              
            {!!form::label('apellido_contratista1','Primer Apellido:')!!}
          {!!form::text('apellido_contratista1',null,['class'=>'form-control','placeholder'=>'digite primer Apellido'])!!}
              </div>
            
            </div>




            <div class="col-xs-12 col-sm-12 col-md-3">
              <div class="form-group">
            
           {!!form::label('apellido_contratista2','Segundo Apellido:')!!}
          {!!form::text('apellido_contratista2',null,['class'=>'form-control','placeholder'=>'digite segundo Apellido'])!!}


              </div>
            
            </div>

          </div>

          <div class="row sombra">
            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">

                {!!form::label('fecha_nacimiento_contratista','Fecha de nacimiento:')!!}
                {!!form::date('fecha_nacimiento_contratista',null,['class'=>'form-control'])!!}

              </div>
           
            </div>


            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">
            
  {!!form::label('estado_civil','Estado civil:')  !!}
  {!!form::select('estado_civil',['S'=>'Soltero','C'=>'Casado','L'=>'Unión libre','v'=>'Viudo'],null,
    ['class'=>'form-control','placeholder'=>'Estado civil'])!!}

              </div>
            
            </div>

            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">
        
  {!!form::label('nivel_educacion','Nivel de educación:')  !!}
  {!!form::select('nivel_educacion',['P'=>'Primaria','C'=>'Secundaria','T'=>'Tecnico',
    'L'=>'Tecnólogo','U'=>'Universitario','E'=>'Especialización','M'=>'Maestría','D'=>'Doctorado'],null,
    ['class'=>'form-control','placeholder'=>'Estado civil'])!!}

              </div>
             
            </div>          
          </div>


          <div class="row espacio">
            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">

                {!!form::label('direccion_contratista','Dirección :')!!}
          {!!form::text('direccion_contratista',null,['class'=>'form-control','placeholder'=>'digite direccion'])!!}




              </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">
          
            {!!form::label('direccion_barrio','Barrio :')!!}
          {!!form::text('direccion_barrio',null,['class'=>'form-control','placeholder'=>'digite d Barrio'])!!}



              </div>
        
            </div>

            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">
      
    {!!Form::label('codigo_municipio','Municipio')  !!}
{!!Form::select('codigo_municipio',$municipio,null,['class'=>'form-control','placeholder'=>'seleccione documento'])!!}

               
              </div>
         
            </div>
          </div>
          
          <div class="row sombra">
            <div class="col-xs-12 col-sm-12 col-md-3">
              <div class="form-group">
              
            {!!form::label('telefono_contratista1','Teléfono principal :')!!}
          {!!form::text('telefono_contratista1',null,['class'=>'form-control','placeholder'=>'digite Telefono'])!!}
              </div>
            
            </div>



            <div class="col-xs-12 col-sm-12 col-md-3">
              <div class="form-group">
            
          {!!form::label('telefono_contratista2','Teléfono secundario :')!!}
          {!!form::text('telefono_contratista2',null,['class'=>'form-control','placeholder'=>'digite Telefono Secundario'])!!}
              </div>
            
            </div>




            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="form-group">
              
            {!!form::label('correo_electronico','Correo electrónico :')!!}
          {!!form::email('correo_electronico',null,['class'=>'form-control','placeholder'=>'digite Correo'])!!}
              </div>
             


            </div>

            <div class="col-xs-12 col-sm-12 col-md-2">
              <div class="form-group">
            

    {!!form::label('estado_contratista','estado:')  !!}
    {!!form::select('estado_contratista',['Activo'=>'Activo','Inactivo'=>'inactivo'],null,['class'=>'form-control','placeholder'=>'Estado'])!!}



              </div>
             
            </div>
          </div>


          <div class="col-xs-12 col-sm-12 col-md-2">
              <div class="form-group">

                 {!!form::label('nit_contratante','Nit contratante :')!!}
                {!!form::text('nit_contratante',null,['class'=>'form-control','placeholder'=>'digite Nit'])!!}
              </div>
          </div>

          <hr>
          
          {!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
           
        {!!Form::close()!!}
      </div>       
    </div>
</div>



 @endsection