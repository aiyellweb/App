<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Departamento;
use App\Municipio;
use App\Contratista;
use Carbon\Carbon;

class ContratistaTipoController extends Controller
{
    public function index()
    {
         $contratista = Contratista::all();
        $contratista->each(function($contratista){
        $contratista->Departamento;
        

        });

        return  view('bueno.index',compact('contratista'));

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
        return view('bueno.create',compact('municipio','departamento'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
            
          if ($file = $request->file('archivo_documento')) {

            $file = $request->file('archivo_documento');
            $name = 'gesi' . Carbon::now()->second . '.' . $file->getClientOriginalExtension(); 
             $path= public_path() . '\contratista\archivos';
             $file->move($path,$name); // resive la imagen luego el nomrbre
               
            }             

          $contratista = new Contratista($request->all());
        $contratista->archivo_documento= $name;
        $contratista->save();  
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
