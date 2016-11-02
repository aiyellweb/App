@extends('layouts.admin')
@section('content')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('eps.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Crear Parentesco</h1>  
    </div>

<div class="container-fluid responsive" style="min-height:540px; height: 720px;">


<div class="box box-primary col-xs-12">

	{!!Form::open(['route'=>'parentescos.store', 'method'=>'POST'])!!}

<br>



<div class="form-group{{ $errors->has('codigo_parentesco') ? ' has-error' : '' }}" >
	{!!form::label('codigo_parentesco',' Codigo Parentesco:')  !!}
	{!!form::text('codigo_parentesco',null,['class'=>'form-control','placeholder'=>'digite Codigo','required'])!!}

	 @if ($errors->has('codigo_parentesco'))
                <span class="help-block">
                 <strong>{{ $errors->first('codigo_parentesco') }}</strong>
                    </span>
        @endif

</div>



<div class="form-group{{ $errors->has('descripcion_parentesco') ? ' has-error' : '' }}" >
  {!!form::label('descripcion_parentesco',' descripcion ::')  !!}
  {!!form::text('descripcion_parentesco',null,['class'=>'form-control','placeholder'=>'digite descripcion','required'])!!}

   @if ($errors->has('descripcion_parentesco'))
                <span class="help-block">
                 <strong>{{ $errors->first('descripcion_parentesco') }}</strong>
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