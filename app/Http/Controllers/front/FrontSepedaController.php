<?php

namespace App\Http\Controllers\Front;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontSepedaController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $res_sepeda = DB::select('select * from sepeda');
        return view('front/fbuku',compact('res_sepeda'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }
}
