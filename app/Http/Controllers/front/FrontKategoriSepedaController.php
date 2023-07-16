<?php

namespace App\Http\Controllers\Front;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontKategoriSepedaController extends Controller
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
        $res_kategori_sepeda = DB::select('select * from kategori_sepeda');
        return view('front/fkategorisepeda',compact('res_kategori_sepeda'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }
}
