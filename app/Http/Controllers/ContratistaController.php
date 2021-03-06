<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Departamento;
use App\Municipio;
use App\Contratista;
use App\Http\Requests;
use Carbon\Carbon;

class ContratistaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contratista = Municipio::orderBY('id','desc');
        $contratista->each(function($contratista){
            $contratista

        });


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $municipio =  Municipio::orderBy('nombre','desc')->lists('nombre','id');
        $departamento= Departamento::orderBy('nombre','desc')->lists('nombre','id');
        return view('contratista.create',compact('municipio','departamento'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         

          $contratista = new Contratista($request->all());
          dd($contratista);
          //$contratista->save();  
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
        //
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
        

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
