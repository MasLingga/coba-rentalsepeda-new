<?php

namespace App\Http\Controllers\Front;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontBukuController extends Controller
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
        $res_buku = DB::select('select * from buku');
        return view('front/fbuku',compact('res_buku'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }
}
