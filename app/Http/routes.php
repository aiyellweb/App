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
/////////////////RUTAS ENLACES///////////////////////

Route::get('inicio',[
		'as'=>'inicio-home',
		'uses'=>'InicioController@index'


	]);

Route::get('Eps',[
		'as'=>'Eps-home',
		'uses'=>'EpsController@index'

	]);


Route::get('Fondo',[
		'as'=>'fondo-home',
		'uses'=>'FondoPencionController@index'

	]);

//////////////////////FIN RUTAS ENLACES////////////////////////////	
/*----------------------------------------------------------------- */

///////////////////////////Rutas de tipo  Rest/////////////////////////////
Route::resource('usuarios','UsuariosController');

Route::resource('eps','EpsController');

Route::resource('fondopension','FondoPencionController');

Route::resource('arl','ArlController');

Route::resource('cajacompensacion','CajaCompensacionController');



///////////////////////////////FIN RUTAS APLICATIVO/////////////////////////////////////////////////




/////////////////RUTAS REPORTES////////////////////////


Route::get('reporte-eps',[

	'as'=>'eps-reporte',
	'uses'=>'EpsController@reporte'

	]);



Route::post('subir','EpsController@potsSubir');

//////////////////////FIN RUTAS REPORTES/////////////////////////////////






