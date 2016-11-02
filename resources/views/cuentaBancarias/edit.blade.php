@extends('layouts.admin')
@section('content')
@include('alerts.success')


 <div>
      <ul class="nav pull-right">
        <li>
            <a href="{{route('eps.index')}}" class="btn btn-success" role="button">Linstar</a>
        </li>     
      </ul>
      <h1>Crear Cuenta</h1>  
    </div>


<div class="container-fluid responsive" style="min-height:540px; height: 720px;">



<div class="box box-primary ">

{!!Form::model($cuenta,['route'=>['cuentaBancarias.update',$cuenta],'method'=>'PUT'])!!}

<br>




<div class="form-group{{ $errors->has('numero_cuenta') ? ' has-error' : '' }}" >
  {!!form::label('numero_cuenta',' NUmero de cuenta ')  !!}
  {!!form::text('numero_cuenta',$cuenta->numero_cuenta,null,['class'=>'form-control','placeholder'=>'digite Numero de cuenta','required'])!!}

   @if ($errors->has('numero_cuenta'))
                <span class="help-block">
                 <strong>{{ $errors->first('numero_cuenta') }}</strong>
                    </span>
        @endif

</div>





<div class="form-group{{ $errors->has('codigo_banco') ? ' has-error' : '' }}" >

{!!Form::label('codigo_banco','descripcion banco')  !!}
{!!Form::select('codigo_banco',$banco,null,['class'=>'form-control','placeholder'=>'seleccione un banco','required'])!!}

</div>

   @if ($errors->has('codigo_banco'))
                <span class="help-block">
                 <strong>{{ $errors->first('codigo_banco') }}</strong>
                    </span>
        @endif

</div>



<div class="form-group " >
  {!!form::label('tipo_cuenta','Tipo Cuenta:')  !!}
  {!!form::select('tipo_cuenta',['Activo'=>'A','C'=>'inactivo'],null,['class'=>'form-control','placeholder'=>'Estado','required'])!!}

</div




		
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	{!!Form::reset('reset',['class'=>'btn btn-danger'])!!}
	
	
	{!!Form::close()!!}

</div>

</div>
</div>
</div>
   @endsection