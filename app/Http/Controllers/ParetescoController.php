<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Session;
use App\Parentesco;
use Redirect;
use Illuminate\Routing\Route;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Input;
use DB;

class ParetescoController extends Controller
{
 
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $paren = Parentesco::all();
        

        
        return view('parentescos.index',compact('paren'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       

        return view('parentescos.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $paren =  new Parentesco($request->all());
        //dd($paren);
        $paren->save();
       return Redirect::to('/parentescos');
        

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
        $paren= Parentesco::find($id);
      
        return view('parentescos.edit',compact('paren'));
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
        $paren = Parentesco::find($id);
        $paren->fill($request->all());
        $paren->save();
        return Redirect::to('/parentescos');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $paren= Parentesco::find($id);
        $paren->save();
        
    }





}
