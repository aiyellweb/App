<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

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
	{!!form::label('estado_eps','Estado:')  !!}
	{!!form::select('estado_eps',['Activo'=>'Activo','Inactivo'=>'inactivo'],null,['class'=>'form-control','placeholder'=>'Estado','required'])!!}

</div>

		
	{!!Form::submit('Crear',['class'=>'btn btn-primary'])!!}
	{!!Form::reset('reset',['class'=>'btn btn-danger'])!!}
	<a class="btn btn-info" href="{{ URL::to('eps')}}">Cancelar</a>
	<br>
	
	
	{!!Form::close()!!}

</div>

</div>
</div>
</div>


