<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Cuenta_bancarias;
use App\Banco;
use Session;
use Redirect;
use Illuminate\Routing\Route;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Input;
use DB;

class CuentaBancariasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cuenta= Cuenta_bancarias::all();
        $cuenta->each(function($cuenta){
                $cuenta->Banco;

        });

       return view('cuentaBancarias.index',compact('cuenta'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            
        $banco = Banco::orderBy('descripcion','desc')->lists('descripcion','id');
           return view('cuentaBancarias.create',compact('banco'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
           $cuenta = Cuenta_bancarias::find($id);         
          $banco = Banco::orderBy('descripcion','desc')->lists('descripcion','id');
           return view('cuentaBancarias.edit',compact('cuenta','banco'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $cuenta = new Cuenta_bancarias($request->all());
        $cuenta->save();
        return Redirect::to('/cuentaBancarias');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cuenta= Cuenta_bancarias::find($id);
        $cuenta->tipo_cuenta= "C";
        $cuenta->update();
    }
}
