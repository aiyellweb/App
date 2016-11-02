 @extends('layouts.admin')


@section('content')


 <div class="panel panel-default table-responsive">
    <div class="panel-body">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
          <h3>Listado  Tipo de contratista<a href="{{route('eps.create')}}"><button class="btn btn-success" role="button">Nuevo</button></a></h3>

    </div>
  </div>
 </div>
</div>

<br>
<bR>



<table id="eps_table" class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
              <th>CÓDIGO</th>
              <th>Descripcion</th>
              <th>EDITAR</th>
              <th>ELIMINAR</th>
            </tr>
          </thead>
          <tbody>
            @foreach($contratista as $contratistas)
              <tr>
                <td>
                  {{$contratistas->codigo_tipo_contratista}}
                </td>
                <td>
                  {{ strtoupper($contratistas->descripcion) }}
                </td>
                <td>
                  <a href="{{route('tipocontratista.edit',$contratistas->id)}}"><button class="glyphicon glyphicon-edit"> <span class=""></span></button></a>
                   
                  </a>
                </td>
                <td>
                  <a href="" data-target="#modal-delete-{{$contratistas->id}}" data-toggle="modal"><button class="btn btn-danger"> <span class="glyphicon glyphicon-trash"></span></button></a>
                   
                  </a>
                </td>
              </tr>
             
          @include('tipocontratista.modal')


            @endforeach 
          </tbody>
        </table>
      <div>
          
      </div>
      </div>
    </div>
  </div>






@endsection