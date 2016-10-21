<div class="modal fade modal-slide-in-right" aria-hidden="true"
role="dialog" tabindex="-1" id="modal-edit-{{$fondos->id}}">
	{{Form::Open(array('action'=>array('FondoPencionController@update',$fondos->id),'method'=>'PUT'))}}
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
	
				<p>Confirme si desea Modificar El fondo de pension <span><strong>{{$fondos->codigo_fondo_pension}}</strong></span></p>
				

			<br>	

			 <div class="form-group">
            	<label for="nit_fondo_pension">Nit Eps</label>
            	<input type="text" name="nit_fondo_pension" class="form-control" value="{{$fondos->nit_fondo_pension}}" placeholder="Nit eps">
            </div>


            <div class="form-group">
            	<label for="descripcion_fondo_pension">Descripcion Eps</label>
            	<input type="text" name="descripcion_fondo_pension" class="form-control" value="{{$fondos->descripcion_fondo_pension}}" placeholder="descripcion">
            	
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