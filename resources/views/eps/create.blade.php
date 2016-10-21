@extends('layouts.admin')
@section('contenido')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('eps.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Crear Eps</h1>  
    </div>

<div class="container-fluid responsive" style="min-height:540px; height: 720px;">


<div class="box box-primary col-xs-12">

	{!!Form::open(['route'=>'eps.store', 'method'=>'POST'])!!}

<br>

<div class="form-group" >
	{!!form::label('codigo_eps',' Codigo Eps:')  !!}
	{!!form::text('codigo_eps',null,['class'=>'form-control','placeholder'=>'codigo eps','required'])!!}
	

</div>




<div class="form-group{{ $errors->has('nit_eps') ? ' has-error' : '' }}" >
	{!!form::label('nit_eps',' Nit Eps:')  !!}
	{!!form::text('nit_eps',null,['class'=>'form-control','placeholder'=>'nit Eps','required'])!!}

	 @if ($errors->has('nit_eps'))
                <span class="help-block">
                 <strong>{{ $errors->first('nit_eps') }}</strong>
                    </span>
        @endif

</div>



<div class="form-group" >
	{!!form::label('descripcion_eps','Nombre:')  !!}
	{!!form::text('descripcion_eps',null,['class'=>'form-control','placeholder'=>'Nombre eps','required'])!!}

</div>

<div class="form-group " >
	{!!form::label('estado_eps','contraseña:')  !!}
	{!!form::select('estado_eps',['Activo'=>'Activo','Inactivo'=>'inactivo'],null,['class'=>'form-control','placeholder'=>'Estado','required'])!!}

</div>

		
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	{!!Form::reset('reset',['class'=>'btn btn-danger'])!!}
	
	
	{!!Form::close()!!}

</div>

</div>
</div>

   @endsection