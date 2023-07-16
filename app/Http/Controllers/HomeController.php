<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
    public function index(Request $request)
    {
        $title = 'home';
        $pages = 'home';

        $res_kategori_sepeda = DB::select('select * from kategori_sepeda');
        $res_sepeda = DB::select('select * from sepeda');
        return view('home',compact('title', 'pages', 'res_kategori_sepeda','res_sepeda'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }
    public function addtocart(Request $request){

        $id = $request->id;
        $res_buku = DB::select('select * from sepeda');

        \Cart::add(
            [
            'id' => $request->id, // inique row ID
            'nama_sepeda' => $res_sepeda->nama_sepeda,
            'quantity' => 1
            ]
        ); 
        $cartItems = \Cart::getContent();
        return redirect()
                ->route('home')
                ->with([
                    'success' => 'New post has been created successfully'
                ]);
    }
}
