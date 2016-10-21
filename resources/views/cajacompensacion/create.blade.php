@extends('layouts.admin')
@section('contenido')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('cajacompensacion.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Crear caja compensacion</h1>  
    </div>

<div class="container-fluid responsive" style="min-height:540px; height: 720px;">


<div class="box box-primary col-xs-12">

	{!!Form::open(['route'=>'cajacompensacion.store', 'method'=>'POST'])!!}

<br>

<div class="form-group" >
	{!!form::label('codigo_caja',' codigo caja:')  !!}
	{!!form::text('codigo_caja',null,['class'=>'form-control','placeholder'=>'codigo Caja','required'])!!}
	

</div>




<div class="form-group{{ $errors->has('descripcion_caja') ? ' has-error' : '' }}" >
	{!!form::label('descripcion_caja',' descripcio caja :')  !!}
	{!!form::text('descripcion_caja',null,['class'=>'form-control','placeholder'=>'descripcion caja ','required'])!!}

	 @if ($errors->has('descripcion_caja'))
                <span class="help-block">
                 <strong>{{ $errors->first('descripcion_caja') }}</strong>
                    </span>
        @endif

</div>



<div class="form-group" >
	{!!form::label('nit_caja','Nit caja:')  !!}
	{!!form::text('nit_caja',null,['class'=>'form-control','placeholder'=>'Nit caja','required'])!!}

</div>

<div class="form-group " >
	{!!form::label('estado_caja','estado_caja:')  !!}
	{!!form::select('estado_caja',['Activo'=>'Activo','Inactivo'=>'inactivo'],null,['class'=>'form-control','placeholder'=>'Estado','required'])!!}

</div>

		
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	{!!Form::reset('reset',['class'=>'btn btn-danger'])!!}
	
	
	{!!Form::close()!!}

</div>

</div>
</div>

   @endsection