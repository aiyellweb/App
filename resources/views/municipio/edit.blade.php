@extends('layouts.admin')
@section('content')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('eps.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Crear Municipio</h1>  
    </div>

<div class="container-fluid responsive" style="min-height:540px; height: 720px;">


<div class="box box-primary col-xs-12">

{!!Form::model($municipio,['route'=>['municipio.update',$municipio],'method'=>'PUT'])!!}

<br>



<div class="form-group{{ $errors->has('nombre') ? ' has-error' : '' }}" >
	{!!form::label('nombre',' Nombre Municipio:')  !!}
	{!!form::text('nombre',$municipio->nombre,null,['class'=>'form-control','placeholder'=>'digite nombre','required'])!!}

	 @if ($errors->has('nombre'))
                <span class="help-block">
                 <strong>{{ $errors->first('nombre') }}</strong>
                    </span>
        @endif

</div>


<div class="form-group">

{!!Form::label('departamento_id','departamentos')  !!}
{!!Form::select('departamento_id',$departamento,null,['class'=>'form-control','placeholder'=>'seleccione documento','required'])!!}

</div>


		
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	{!!Form::reset('reset',['class'=>'btn btn-danger'])!!}
	
	
	{!!Form::close()!!}

</div>

</div>
</div>

   @endsection