@extends('layouts.admin')
@section('content')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('eps.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Editar </h1>  
    </div>

<div class="container-fluid responsive" style="min-height:540px; height: 720px;">


<div class="box box-primary col-xs-12">

{!!Form::model($contratista,['route'=>['tipocontratistas.update',$contratista],'method'=>'PUT'])!!}

<br>



<div class="form-group{{ $errors->has('codigo_tipo_contratista') ? ' has-error' : '' }}" >
  {!!form::label('codigo_tipo_contratista',' Codigo Contratistas:')  !!}
  {!!form::text('codigo_tipo_contratista',$contratista->codigo_tipo_contratista,null,['class'=>'form-control','placeholder'=>'digite Codigo','required'])!!}

   @if ($errors->has('codigo_tipo_contratista'))
                <span class="help-block">
                 <strong>{{ $errors->first('codigo_tipo_contratista') }}</strong>
                    </span>
        @endif

</div>



<div class="form-group{{ $errors->has('descripcion_parentesco') ? ' has-error' : '' }}" >
  {!!form::label('descripcion',' descripcion ::')  !!}
  {!!form::text('descripcion',$contratista->descripcion,null,['class'=>'form-control','placeholder'=>'digite descripcion','required'])!!}

   @if ($errors->has('descripcion'))
                <span class="help-block">
                 <strong>{{ $errors->first('descripcion') }}</strong>
                    </span>
        @endif

</div>


		
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	{!!Form::reset('reset',['class'=>'btn btn-danger'])!!}
	
	
	{!!Form::close()!!}

</div>

</div>
</div>

   @endsection