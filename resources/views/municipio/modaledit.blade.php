<div class="modal fade modal-slide-in-right" aria-hidden="true"
role="dialog" tabindex="-1" id="modal-edit-{{$epss->id}}">
	{{Form::Open(array('action'=>array('EpsController@update',$epss->id),'method'=>'PUT'))}}
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
				aria-label="Close">
                     <span aria-hidden="true"></span>
                </button>
                <h4 class="modal-title"> Accion Modificar</h4>
			</div>
			<div class="modal-body">
				<div class="box box-primary col-xs-12">
	
				<p>Confirme si desea Modificar la Eps <span><strong>{{$epss->codigo_eps}}</strong></span></p>
				

			<br>	

			 <div class="form-group">
            	<label for="nit_eps">Nit Eps</label>
            	<input type="text" name="nit_eps" class="form-control" value="{{$epss->nit_eps}}" placeholder="Nit eps">
            </div>


            <div class="form-group">
            	<label for="descripcion_eps">Descripcion Eps</label>
            	<input type="text" name="descripcion_eps" class="form-control" value="{{$epss->descripcion_eps}}" placeholder="descripcion">
            	
            </div>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
				<button type="submit" class="btn btn-primary">Confirmar</button>
			</div>
		</div>
	</div>
	{{Form::Close()}}

</div>