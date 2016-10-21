@extends('layouts.admin')
@section('contenido')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('arl.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Crear Arl</h1>  
    </div>

<div class="container-fluid responsive" style="min-height:540px; height: 720px;">


<div class="box box-primary col-xs-12">

	{!!Form::open(['route'=>'arl.store', 'method'=>'POST'])!!}

<br>

<div class="form-group" >
	{!!form::label('codigo',' Codigo Arl:')  !!}
	{!!form::text('codigo',null,['class'=>'form-control','placeholder'=>'codigo Arl','required'])!!}
	

</div>




<div class="form-group{{ $errors->has('descripcion') ? ' has-error' : '' }}" >
	{!!form::label('descripcion',' descripcion Arl:')  !!}
	{!!form::text('descripcion',null,['class'=>'form-control','placeholder'=>'descripcion Arl','required'])!!}

	 @if ($errors->has('nit_eps'))
                <span class="help-block">
                 <strong>{{ $errors->first('descripcion') }}</strong>
                    </span>
        @endif

</div>



<div class="form-group" >
	{!!form::label('nit','Nit:')  !!}
	{!!form::text('nit',null,['class'=>'form-control','placeholder'=>'Digite Nit','required'])!!}

</div>

<div class="form-group " >
	{!!form::label('estado','estado:')  !!}
	{!!form::select('estado',['Activo'=>'Activo','Inactivo'=>'inactivo'],null,['class'=>'form-control','placeholder'=>'Estado','required'])!!}

</div>

		
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	{!!Form::reset('reset',['class'=>'btn btn-danger'])!!}
	
	
	{!!Form::close()!!}

</div>

</div>
</div>

   @endsection