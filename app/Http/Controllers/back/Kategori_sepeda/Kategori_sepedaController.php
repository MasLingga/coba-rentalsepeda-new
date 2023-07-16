<?php
        namespace App\Http\Controllers\Back\Kategori_sepeda;
        use Illuminate\Http\Request;
        use App\Http\Controllers\Controller;
        use App\Models\Kategori_sepeda;
        use DB;
        use Hash;
        use Illuminate\Support\Arr;

        class Kategori_sepedaController extends Controller
        {
            /**
             * Display a listing of the resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function index(Request $request)
            {
                $data = Kategori_sepeda::orderBy("id","DESC")->get();
                return view("back.Kategori_sepeda.index",compact("data"))
                    ->with("i", ($request->input("page", 1) - 1) * 5);
            }
        
            /**
             * Show the form for creating a new resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function create()
            {
                return view("back.Kategori_sepeda.create");
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
                
                
                $Kategori_sepeda = Kategori_sepeda::create($input);
               
            
                return redirect()->route("kategori_sepeda.index")
                ->with("success","Kategori_sepeda created successfully");
            
            }
        
        
            /**
                 * Display the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
        
                public function show($id)
                {
                    $Kategori_sepeda = Kategori_sepeda::find($id);
                    return view("back.Kategori_sepeda.show",compact("Kategori_sepeda"));
                }
            

            
                /**
                 * Show the form for editing the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function edit($id)
                {
                    $Kategori_sepeda = Kategori_sepeda::find($id);
                    return view("back.Kategori_sepeda.edit",compact("Kategori_sepeda"));
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

                    
                    
                    
                    $Kategori_sepeda = Kategori_sepeda::find($id);
                    $Kategori_sepeda->update($input);
                
                    return redirect()->route("kategori_sepeda.index")
                    ->with("success","Kategori_sepeda updated successfully");
                
                }
            

                /**
                 * Remove the specified resource from storage.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function destroy($id)
                {
                    Kategori_sepeda::find($id)->delete();
                    return redirect()->route("kategori_sepeda.index")
                    ->with("success","Kategori_sepeda deleted successfully");
                
                }
            }
        
        ?>