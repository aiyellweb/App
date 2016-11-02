 @extends('layouts.admin')


@section('content')


 <div class="panel panel-default table-responsive">
    <div class="panel-body">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
          <h3>Listado parentescos <a href="{{route('eps.create')}}"><button class="btn btn-success" role="button">Nuevo</button></a></h3>

         <a href="{{route('eps-reporte')}}"><button class="btn btn-info" role="button">Reporte Parentescos</button></a>

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
              <th>Descripcion Parentescos</th>
              <th>EDITAR</th>
              <th>ELIMINAR</th>
            </tr>
          </thead>
          <tbody>
            @foreach($paren as $parentescos)
              <tr>
                <td>
                  {{$parentescos->codigo_parentesco}}
                </td>
                <td>
                  {{ strtoupper($parentescos->descripcion_parentesco) }}
                </td>
                <td>
                  <a href="{{route('banco.edit',$parentescos->id)}}"><button class="glyphicon glyphicon-edit"> <span class=""></span></button></a>
                   
                  </a>
                </td>
                <td>
                  <a href="" data-target="#modal-delete-{{$parentescos->id}}" data-toggle="modal"><button class="btn btn-danger"> <span class="glyphicon glyphicon-trash"></span></button></a>
                   
                  </a>
                </td>
              </tr>
             
          @include('parentescos.modal')


            @endforeach 
          </tbody>
        </table>
      <div>
          
      </div>
      </div>
    </div>
  </div>






@endsection