<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title> GESI App </title>

    <!-- Bootstrap core CSS -->

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">


    <script src="js/jquery.min.js"></script>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body style="background:#F7F7F7;">
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>
        <div class="title">
            <H1><i>GESI App</i></H1>
        </div>

        <div class="title">
            <!-- <h1>Elecciones 2015</h1> -->
            <img src="{{asset('images/logo.png')}}"  class="img-circle">
        </div>

        <div id="wrapper">
            <div id="login" class="animate form">
                @if (Session::has('login_errors'))
                    <div class="alert alert-danger alert-dismissible fade in" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        <strong>Algo no está bien!</strong><br>Por favor ingresa tus credenciales de acceso nuevamente.
                    </div>
                @endif
                <section class="login_content">
                    <form  role="form" method="POST" action="{{ url('/login')}}">
                     {{ csrf_field()}}

                        <h1>Login</h1>
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <input for="email" type="email" name="email" class="form-control" placeholder="Correo electrónico" required="" autofocus/>

                            @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <input for="" type="password" name="password" class="form-control" placeholder="Contraseña" required="" />
                            
                             @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif

                            
                        </div>
                        <div>
                            <button type="submit" class="btn btn-default">
                                Iniciar Sesión <i class="m-icon-swapright m-icon-white"></i>
                            </button>
                            <!-- <a class="btn btn-default submit" href="index.html">Entrar</a> -->
                        </div>
                        <div class="clearfix"></div>
                            <div class="separator">
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h2><i>Nombre Empresa</i></h2>
                                <h2><i>Info Empresa</i></h2>
                                <p>TODOS LOS DERECHOS RESERVADOS</p>
                                <p> © 2016 </p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
            
        </div>
    </div>
    <script src="js/bootstrap.min.js"></script>
</body>
</html> 