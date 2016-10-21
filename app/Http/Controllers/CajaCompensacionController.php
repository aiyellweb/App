<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\CajaComp;
use Session;
use Redirect;
use Illuminate\Routing\Route;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Input;
use DB;

class CajaCompensacionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $caja = CajaComp::where('estado_caja','=','Activo')->get();

        return view('cajacompensacion.index',compact('caja'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
     
     return view('cajacompensacion.create');   

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $caja = new CajaComp($request->all());
        $caja->save();
        return Redirect::to('/cajacompensacion');
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


     public function modaledit($id)
    {
        $caja= CajaComp::find($id);
        return view('cajacompensacion.modaledit')->with('caja',$caja);

    }



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
            $caja= CajaComp::find($id);
            $caja->fill($resource->all());
            $caja->save();
            Session::flash('message','caja creada');
            return Redirect::to('/cajacompensacion');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $caja::find($id);
        $caja->estado_caja="Inactivo";
        $caja->update();
        return Redirect::to('/cajacompensacion');
    }
}
