<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Arl;
use Session;
use Redirect;
use Illuminate\Routing\Route;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Input;
use Carbon\Carbon;
use DB;

class ArlController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            $arl= Arl::where('estado','=','Activo')->get();
            return view('arl.index',compact('arl'));        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('arl.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $arl= new Arl($request->all());
        $mytime = Carbon::now('America/bogota');
        $arl->fecha_estado=$mytime->toDateTimeString();
        //$arl->save();
        dd($arl);
        Session::flash('message','la Arl ha sido creada');

        return Redirect::to('/arl');

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



   public function modaledit($id)
    {
        $arl= Arl::find($id);
        return view('eps.modaledit')->with('arl',$arl);

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
        $arl= Arl::find($id);
        $arl->fill($request->all());
        $arl->save();
        Session::flash('message','la arl ha sido modificada');
        return Redirect::to('/arl');    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $arl = Arl::find($id);
        $arl->estado= "Inactivo";
        $arl->update();
        return Redirect::to('/arl');

    }
}
