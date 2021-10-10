<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Exam;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $data = Exam::all()->random(5);
        return view('home')->with('data',$data);
    }
    public function check(Request $request){
        $result = 0;
        for ($i=1; $i <6 ; $i++) {
            $id =  $request->input('select-one'.$i);
            $res = Exam::find($id);
            $res = ($res) ? $result +=20 : $result +=0;
        }
        return view('result')->with('result',$result);
    }
}
