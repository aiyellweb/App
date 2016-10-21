<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Requests\EpsFormRequest;
use App\Eps;
use Session;
use Redirect;
use Illuminate\Routing\Route;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Input;
use DB;
class EpsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */






 public function index()
    {



        $eps = Eps::where('estado_eps','=','Activo')->get();
        return view('eps.index',compact('eps'));
    }




 public function reporte()
    {
 
        Excel::create('Reporte ', function($excel) {
 
            $excel->sheet('eps', function($sheet) {
 
                //$eps = Eps::all();   ///select('name','email')->get();

                $eps= Eps::select('user_id as Usuario')->get();

 
                $sheet->fromArray($eps);
 
            });
        })->export('xls');

        
 
    }

    //// subir archivo excel

public function potsSubir(){

    Excel::load(Input::file('file'),function($reader){
    $reader->each(function($sheet){
        foreach($sheet->toArray() as $row){
       Eps::firstOrCreate($sheet->toArray());    
    }

});     

});

     return Redirect::to('/eps');
}




   
    /**
     * Show the form for creating a new resource.->
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


        return view('eps.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EpsFormRequest $request)
    {
        $eps = new Eps($request->all());
        $eps->user_id= \Auth::user()->id;
        $eps->save();
        Session::flash('message','Eps creado');
        return Redirect::to('/eps');
        
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
        $eps= Eps::find($id);
        return view('eps.modaledit')->with('eps',$eps);

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
        $eps= Eps::find($id);
        $eps->fill($request->all());
        $eps->save();
        return Redirect::to('/eps');


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $eps= Eps::find($id);
        $eps->estado_eps="Inactivo";
        $eps->update();
        return Redirect::to('/eps');
    }
}
