<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Municipio;
use App\Departamento;
use Session;
use Redirect;
use Illuminate\Routing\Route;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Input;
use DB;


class MunicipioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $municipio = Municipio::orderBy('id','desc')->get();
        $municipio->each(function($municipio){
        $municipio->departamentos;

        });
        return view('municipio.index',compact('municipio'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departamento= Departamento::orderBy('nombre','desc')->lists('nombre','id');

        return view('municipio.create',['departamento'=>$departamento]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $municipio =  new Municipio($request->all());
        $municipio->save();
       return Redirect::to('/municipio');
        

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
        $municipio= Municipio::find($id);
        $departamento = Departamento::orderBy('nombre','desc')->lists('nombre','id');
        return view('municipio.edit',compact('municipio','departamento'));
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
        $municipio = Municipio::find($id);
        $municipio->fill($request->all());
        $municipio->save();
        return Redirect::to('/municipio');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $municipio= Municipio::find($id);
        $municipio->save();
        
    }

    
}
