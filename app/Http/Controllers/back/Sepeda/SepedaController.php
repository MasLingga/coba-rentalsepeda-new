<?php
        namespace App\Http\Controllers\Back\Sepeda;
        use Illuminate\Http\Request;
        use App\Http\Controllers\Controller;
        use App\Models\Sepeda;
        use App\Models\Kategori_sepeda;
        
        use DB;
        use Hash;
        use Illuminate\Support\Arr;

        class SepedaController extends Controller
        {
            /**
             * Display a listing of the resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function index(Request $request)
            {
                $data = Sepeda::orderBy("id","DESC")->get();
                $res_kategori_sepeda = DB::select('select * from kategori_sepeda');

                return view("back.Sepeda.index",compact("data","res_kategori_sepeda"))
                    ->with("i", ($request->input("page", 1) - 1) * 5);
            }
        
            /**
             * Show the form for creating a new resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function create()
            {
                $res_kategori_sepeda = Kategori_sepeda::orderBy("id","DESC")->get();
                dd($res_kategori_sepeda);
                return view("back.Sepeda.create");
            }
        
        
        
            /**
             * Store a newly created resource in storage.
             *
             * @param  \Illuminate\Http\Request  $request
             * @return \Illuminate\Http\Response
             */
        
            public function store(Request $request)
            {
               
                    
                $input = $request->all();
                
                
                $Sepeda = Sepeda::create($input);
               
            
                return redirect()->route("sepeda.index")
                ->with("success","Sepeda created successfully");
            
            }
        
        
            /**
                 * Display the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
        
                public function show($id)
                {
                    $Sepeda = Sepeda::find($id);
                    return view("back.Sepeda.show",compact("Sepeda"));
                }
            

            
                /**
                 * Show the form for editing the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function edit($id)
                {
                    $Sepeda = Sepeda::find($id);
                    return view("back.Sepeda.edit",compact("Sepeda"));
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
                
                   
                        
                        

                    $input = $request->all();

                    
                    
                    
                    $Sepeda = Sepeda::find($id);
                    $Sepeda->update($input);
                
                    return redirect()->route("sepeda.index")
                    ->with("success","Sepeda updated successfully");
                
                }
            

                /**
                 * Remove the specified resource from storage.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function destroy($id)
                {
                    Sepeda::find($id)->delete();
                    return redirect()->route("sepeda.index")
                    ->with("success","Sepeda deleted successfully");
                
                }
            }
        
        ?>