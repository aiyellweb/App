<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Session;
use App\TipoContratista;
use Redirect;
use Illuminate\Routing\Route;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Input;
use DB;


class TipoContratistaController extends Controller
{
    

        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $contratista = TipoContratista::orderBy('id','desc')->get();


        return view('tipocontratistas.index',compact('contratista'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        

        return view('tipocontratistas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $contratista =  new TipoContratista($request->all());
        $contratista->save();
       return Redirect::to('/tipocontratistas');
        

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
        $contratista= TipoContratista::find($id);
        return view('tipocontratistas.edit',compact('contratista','departamento'));
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
        $contratista = TipoContratista::find($id);
        $contratista->fill($request->all());
        $contratista->save();
        return Redirect::to('/tipocontratistas');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $contratista= TipoContratista::find($id);
        $contratista->save();
        
    }




}
