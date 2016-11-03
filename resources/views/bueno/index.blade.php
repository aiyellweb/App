 @extends('layouts.admin')


@section('content')


 <div class="panel panel-default table-responsive">
    <div class="panel-body">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
          <h3>Listado Contratistas <a href="{{route('eps.create')}}"><button class="btn btn-success" role="button">Nuevo</button></a></h3>

         <a href="{{route('eps-reporte')}}"><button class="btn btn-info" role="button">Reporte Contratistas</button></a>

    </div>
  </div>
 </div>
</div>

<br>
<bR>



<table id="eps_table" class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
              <th>Documento</th>
              <th>Nombre</th>
              <th>Email</th>
              <th>Telefono</th>
              <th>Municipio</th>
              <th>Descargar</th>
              <th>EDITAR</th>
              <th>ELIMINAR</th>
            </tr>
          </thead>
          <tbody>
            @foreach($contratista as $contratistas)
              <tr>
                <td>
                  {{$contratistas->numero_documento_identificacion}}
                </td>
                <td>
                  {{ strtoupper($contratistas->nombre_contratista) }}
                </td>
                <td>
                  {{$contratistas->correo_electronico}}
                </td>
                <td>
                  {{$contratistas->telefono_contratista1}}
                </td>
                 <td>
                  {{$contratistas->Departamento->nombre}}
                </td>
               
                <td>
                  <a href="contratista/{{$contratistas->archivo_documento}}" download="Reporte2Mayo2010">
                  Descargar Archivo
                  </a>
                </td>
                <td>
                  <a href="{{route('bueno.edit',$contratistas->id)}}"><button class="glyphicon glyphicon-edit"> <span class=""></span></button></a>
                   
                  </a>
                </td>
                <td>
                  <a href="" data-target="#modal-delete-{{$contratistas->id}}" data-toggle="modal"><button class="btn btn-danger"> <span class="glyphicon glyphicon-trash"></span></button></a>
                   
                  </a>
                </td>
              </tr>
         <!--    
         
          -->


            @endforeach 
          </tbody>
        </table>
      <div>
          
      </div>
      </div>
    </div>
  </div>






@endsection