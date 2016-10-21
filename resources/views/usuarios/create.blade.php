@extends('layouts.admin')
@section('contenido')
@include('alerts.success')


<div class="box box-primary col-xs-12">

	{!!Form::open(['route'=>'usuarios.store', 'method'=>'POST'])!!}

<br>
<div class="form-group " >
	{!!form::label('name',' Nombre:')  !!}
	{!!form::text('name',null,['class'=>'form-control','placeholder'=>' Digite Nombre','required'])!!}
	

</div>

<div class="form-group  ">
{!!Form::label('rol_id','rol usuario')  !!}
{!!Form::select('rol_id',$role,null,['class'=>'form-control','required'])!!}
</div>

<div class="form-group  ">
{!!Form::label('','tipo documento')  !!}
{!!Form::select('documento_id',$documento,null,['class'=>'form-control','placeholder'=>'seleccione documento','required'])!!}

</div>

<div class="form-group " >
	{!!form::label('numero_doc',' NUmero de Documento:')  !!}
	{!!form::text('numero_doc',null,['class'=>'form-control','placeholder'=>' Digite N','required'])!!}
	

</div>



<div class="form-group" >
	{!!form::label('email','correo electronico:')  !!}
	{!!form::email('email',null,['class'=>'form-control','placeholder'=>'Correo','required'])!!}

</div>
<div class="form-group " >
	{!!form::label('password','contraseña:')  !!}
	{!!form::password('password',null,['class'=>'form-control','placeholder'=>'Digite la contraseña','required'])!!}

</div>

	<div class="form-group col-xs-4">	
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	</div>
	{!!Form::close()!!}

</div>




@endsection