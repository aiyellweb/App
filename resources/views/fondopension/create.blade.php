@extends('layouts.admin')
@section('contenido')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('fondopension.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Fondos de pensiones</h1>  
    </div>

<div class="container-fluid responsive" style="min-height:540px; height: 720px;">


<div class="box box-primary col-xs-12">

	{!!Form::open(['route'=>'fondopension.store', 'method'=>'POST'])!!}

<br>

<div class="form-group" >
	{!!form::label('codigo_fondo_pension',' Codigo Fondo de pension:')  !!}
	{!!form::text('codigo_fondo_pension',null,['class'=>'form-control','placeholder'=>'Codigo Fondo de pension','required'])!!}
	





</div>




<div class="form-group{{ $errors->has('descripcion_fondo_pension') ? ' has-error' : '' }}" >
	{!!form::label('descripcion_fondo_pension',' Descripcion fondo de pension:')  !!}
	{!!form::text('descripcion_fondo_pension',null,['class'=>'form-control','placeholder'=>'Digite fondo de pension','required'])!!}

	 @if ($errors->has('descripcion_fondo_pension'))
                <span class="help-block">
                 <strong>{{ $errors->first('descripcion_fondo_pension') }}</strong>
                    </span>
        @endif

</div>



<div class="form-group" >
	{!!form::label('nit_fondo_pension','Nit fondo de pension:')  !!}
	{!!form::text('nit_fondo_pension',null,['class'=>'form-control','placeholder'=>'Digite Nit','required'])!!}

</div>

<div class="form-group " >
	{!!form::label('estado_fondo_pension','Estado:')  !!}
	{!!form::select('estado_fondo_pension',['Activo'=>'Activo','Inactivo'=>'inactivo'],null,['class'=>'form-control','placeholder'=>'Estado','required'])!!}

</div>

		
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	{!!Form::reset('reset',['class'=>'btn btn-danger'])!!}
	
	
	{!!Form::close()!!}

</div>

</div>
</div>

   @endsection