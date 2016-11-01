 @extends('layouts.admin')


@section('content')


 <div class="panel panel-default table-responsive">
    <div class="panel-body">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
          <h3>Listado Municipios <a href="{{route('eps.create')}}"><button class="btn btn-success" role="button">Nuevo</button></a></h3>

         <a href="{{route('eps-reporte')}}"><button class="btn btn-info" role="button">Reporte Municipio</button></a>

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
              <th>NIT</th>
              <th>DESCRIPCIÓN</th>
              <th>EDITAR</th>
              <th>ELIMINAR</th>
            </tr>
          </thead>
          <tbody>
            @foreach($eps as $epss)
              <tr>
                <td>
                  {{$epss->codigo_eps}}
                </td>
                <td>
                  {{$epss->nit_eps}}
                </td>
                <td>
                  {{ strtoupper($epss->descripcion_eps) }}
                </td>
                <td>
                  <a href="" data-target="#modal-edit-{{$epss->id}}" data-toggle="modal"><button class="glyphicon glyphicon-edit"> <span class=""></span></button></a>
                    @include('eps.modaledit')
                  </a>
                </td>
                <td>
                  <a href="" data-target="#modal-delete-{{$epss->id}}" data-toggle="modal"><button class="btn btn-danger"> <span class="glyphicon glyphicon-trash"></span></button></a>
                   
                  </a>
                </td>
              </tr>
             
          @include('eps.modal')


            @endforeach 
          </tbody>
        </table>
      <div>
          
      </div>
      </div>
    </div>
  </div>






@endsection