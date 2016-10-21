<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <title>Gesi Software</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
      <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
          <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/bootstrap-select.min.css')}}">
        <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('css/font-awesome.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('css/AdminLTE.min.css')}}">
      <link rel="stylesheet" href="{{asset('css/_all-skins.min.css')}}">
    <link rel="apple-touch-icon" href="{{asset('img/apple-touch-icon.png')}}">
    <link rel="shortcut icon" href="{{asset('img/favicon.ico')}}">


  <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"  href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">




</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">




<header class="main-header">

        <!-- Logo -->
        <a href="" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>AD</b>V</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>GESI</b></span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Navegación</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <small class="bg-red">Online</small>
                  <span class="hidden-xs"> {{Auth::user()->name}}</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    
                    <p>
                            Rol
                      <small>ROL</small>
                    </p>
                  </li>
                  
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    
                    <div class="pull-right">
                      <a href="{{ url('/logout') }}" class="btn btn-default btn-flat">Cerrar</a>
                    </div>
                  </li>
                </ul>
              </li>
              
            </ul>
          </div>

        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
                    
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header"></li>
            
            <li class="treeview">
              <a href="{{Route('inicio-home')}}">
                <i class="fa fa-home"></i>
                <span>Home</span>
                
              </a>
             
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-medkit"></i>
                <span>Seguridad Social</span>
                 <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="{{Route('Eps-home')}}"><i class="fa fa-circle-o"></i> EPS'S</a></li>
                <li><a href="compras/proveedor"><i class="fa fa-circle-o"></i>Fondos de pensión</a></li>
                <li><a href="compras/proveedor"><i class="fa fa-circle-o"></i>ARL's</a></li>
                <li><a href="compras/proveedor"><i class="fa fa-circle-o"></i>Cajas de compensación</a></li>
              </ul>
            </li>
      
                       
            <li class="treeview">
              <a href="#">
                <i class="fa fa-gear"></i> <span>Gestion Basica</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="configuracion/usuario"><i class="fa fa-circle-o"></i> Usuarios</a></li>
                
              </ul>
            </li>
             <li>

             <li class="treeview">
              <a href="#">
                <i class="fa fa-gears"></i> <span>Gestion Avanzada</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="configuracion/usuario"><i class="fa fa-circle-o"></i> Usuarios</a></li>
                
              </ul>
            </li>
             <li>
          

               <li class="treeview">
              <a href="#">
                <i class="fa fa-lock"></i> <span>Gestion Avanzada</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="configuracion/usuario"><i class="fa fa-circle-o"></i> Usuarios</a></li>
                
              </ul>
            </li>
             <li>

              <a href="#">
                <i class="fa fa-plus-square"></i> <span>Ayuda</span>
                <small class="label pull-right bg-red">PDF</small>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-info-circle"></i> <span>Acerca De...</span>
                <small class="label pull-right bg-yellow">IT</small>
              </a>
            </li>
                        
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>





  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        
        <!-- Main content -->
        <section class="content">
          
          <div class="row">
            <div class="col-md-12">
              <div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">Sistema Gensi</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>


                    <div class="clearfix"></div>
                    <div class="row contenedor">


                        <div class="col-md-12 col-sm-12 col-xs-12">
                        @yield('content')


                         <div class="panel panel-default table-responsive">
      <div class="panel-body">
          <div class="row">
  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    <h3>Listado Eps <a href="{{route('eps.create')}}"><button class="btn btn-success" role="button">Nuevo</button></a></h3>

    <a href="{{route('eps-reporte')}}"><button class="btn btn-info" role="button">Reporte Eps</button></a>

  </div>

  
 <!--   <form action="subir" method="POST" enctype="multipart/form-data" class="form">
  <input type="hidden" name="_token" value="{!! csrf_token() !!}">
  <label>importar archivo</label>
  <input type="file" name="file"></br>
  <button type="submit">Subir</button>

</form>
-->

</div>
          <br>
          <br>
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


                        </div>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                      <div class="col-md-12">
                              <!--Contenido-->
                             
                              @yield('contenido')

                              <!--Fin Contenido-->
                           </div>
                          
          

                        </div>
                        
                      </div>
                    </div><!-- /.row -->
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
    












<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.2/js/jquery.dataTables.js"></script>

<script type="text/javascript">
  
  $(document).ready(function(){
    $('#eps_table').DataTable();


});

</script>
 
    <!-- Bootstrap 3.3.5 -->
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
     <script src="{{asset('js/bootstrap-select.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{asset('js/app.min.js')}}"></script>

</body>
</html>