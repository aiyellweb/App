<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\fondo_pensiones;
use Carbon\Carbon;
use Session;
use Redirect;
use Illuminate\Routing\Route;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Input;
use DB;

class FondoPencionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */



    public function index()
    {
         $fondo = fondo_pensiones::all();

         return view('fondopension.index',compact('fondo'));   
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('fondopension.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
            $fondo=  new fondo_pensiones($request->all());
            $mytime=  Carbon::now('America/Bogota');
            $fondo->fecha_fondo_pension= $mytime->toDateTimeString();
            dd($fondo);   
            //$fondo->save();
            Session::flash('message','Fondo de pesion Creado por el user');
            return Redirect::to('/fondopension');

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
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

  public function modaledit($id)
    {
        $fondo= Eps::find($id);
        return view('fondopension.modaledit')->with('fondo',$fondo);

    }



    public function update(Request $request, $id)
    {
        $fondo = fondo_pensiones::find($id);
        $fondo->fill($request->all());
        $fondo->save();
        Session::flash('message','Este registro ha sido modificado');
        return  Redirect::to('/fondopension');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $fondo = fondo_pensiones::find($id);
        $fondo->estado_fondo_pension="Inactivo";
        $fondo->update();
        return Redirect::to('/fondopension');
    }
}
