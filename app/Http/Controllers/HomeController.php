<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;

class HomeController extends Controller
{

    public function __construct(){
        $this->middleware(['auth']);
    }

    public function index(){
        return view('home');
    }
    public function dashboard(){
        if(Auth::user()->type=='Admin'){
            return view('Backend.Admin.dashboard');
        }
        elseif(Auth::user()->type=='Content Manager'){
            return "content manager not permited";
        }
        elseif(Auth::user()->type=='Front Desk'){
            return "user not perited";
        }
        else{
            return view('Backend.User.dashboard');
        }
    }
    
}
