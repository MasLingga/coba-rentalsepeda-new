<?php

namespace App\Http\Controllers\Front;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontKategoriBukuController extends Controller
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
        $res_kategori_buku = DB::select('select * from kategori_buku');
        return view('front/fkategoribuku',compact('res_kategori_buku'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }
}
