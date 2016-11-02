<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::auth();

Route::get('/home', 'HomeController@index');



/////////////////////RUTAS ADMNISTRACION APLICATIVO///////////////////////////

/*----------------------------------------------------------------- */						
/////////////////RUTAS ENLACES home Seguridad Social///////////////////////

Route::get('inicio',[
		'as'=>'inicio-home',
		'uses'=>'InicioController@index'


	]);

Route::get('Eps',[
		'as'=>'Eps-home',
		'uses'=>'EpsController@index'

	]);

Route::get('Arl',[
	'as'=>'Arl-home',
	'uses'=>'ArlController@index'

	]);


Route::get('CajadeCompesacion',[
	'as'=>'caja-home',
	'uses'=>'CajaCompensacionController@index'

	]);


Route::get('Fondo',[
		'as'=>'fondo-home',
		'uses'=>'FondoPencionController@index'

	]);

//////////////////////FIN RUTAS ENLACES home Seguridad social////////////////////////////	

//////////////////RUTAS ENLACES HOME GESTIOS BASICA////////////////////////

Route::get('municipios',[

	'as'=>'municipio-home',
	'uses'=>'MunicipioController@index'

	]);



Route::get('bascos',[
	'as'=>'banco-detail',
	'uses'=>'BancoController@index'


	]);


Route::get('cuentas_bancarias',[
		'as'=>'cuenta-bancarias',
		'uses'=>'CuentaBancariasController@index'

	]);



/////////////////////////FIN RUTAS HOME GESTION BASICA/////////////////77



/*----------------------------------------------------------------- */

///////////////////////////Rutas de tipo  Rest/////////////////////////////
Route::resource('usuarios','UsuariosController');

Route::resource('eps','EpsController');

Route::resource('fondopension','FondoPencionController');

Route::resource('arl','ArlController');

Route::resource('cajacompensacion','CajaCompensacionController');

Route::resource('municipio','MunicipioController');

Route::resource('banco','BancoController');
Route::resource('cuentaBancarias','CuentaBancariasController');



///////////////////////////////FIN RUTAS  TIPO REST/////////////////////////////////////////////////




/////////////////RUTAS REPORTES////////////////////////


Route::get('reporte-eps',[

	'as'=>'eps-reporte',
	'uses'=>'EpsController@reporte'

	]);



Route::post('subir','EpsController@potsSubir');

//////////////////////FIN RUTAS REPORTES/////////////////////////////////






