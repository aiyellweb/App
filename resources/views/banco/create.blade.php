@extends('layouts.admin')
@section('content')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('eps.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Crear Banco</h1>  
    </div>

<div class="container-fluid responsive" style="min-height:540px; height: 720px;">


<div class="box box-primary col-xs-12">

	{!!Form::open(['route'=>'banco.store', 'method'=>'POST'])!!}

<br>



<div class="form-group{{ $errors->has('nombre') ? ' has-error' : '' }}" >
	{!!form::label('codigo',' Codigo banco:')  !!}
	{!!form::text('codigo',null,['class'=>'form-control','placeholder'=>'digite Codigo','required'])!!}

	 @if ($errors->has('codigo'))
                <span class="help-block">
                 <strong>{{ $errors->first('codigo') }}</strong>
                    </span>
        @endif

</div>



<div class="form-group{{ $errors->has('descripcion') ? ' has-error' : '' }}" >
  {!!form::label('descripcion',' descripcion Banco::')  !!}
  {!!form::text('descripcion',null,['class'=>'form-control','placeholder'=>'digite descripcion','required'])!!}

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