<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Laracasts\Flash\Flash;

class InicioController extends Controller
{
     public function index(){

     		return view('home.inicio');

     }
}
