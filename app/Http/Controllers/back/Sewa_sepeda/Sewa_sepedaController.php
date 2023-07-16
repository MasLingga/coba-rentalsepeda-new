<?php
        namespace App\Http\Controllers\Back\Sewa_sepeda;
        use Illuminate\Http\Request;
        use App\Http\Controllers\Controller;
        use App\Models\Sewa_sepeda;
        use DB;
        use Hash;
        use Illuminate\Support\Arr;

        class Sewa_sepedaController extends Controller
        {
            /**
             * Display a listing of the resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function index(Request $request)
            {
                $data = Sewa_sepeda::orderBy("id","DESC")->get();
                return view("back.Sewa_sepeda.index",compact("data"))
                    ->with("i", ($request->input("page", 1) - 1) * 5);
            }
        
            /**
             * Show the form for creating a new resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function create()
            {
                return view("back.Sewa_sepeda.create");
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
                
                
                $Sewa_sepeda = Sewa_sepeda::create($input);
               
            
                return redirect()->route("Sewa_sepeda.index")
                ->with("success","Sewa_sepeda created successfully");
            
            }
        
        
            /**
                 * Display the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
        
                public function show($id)
                {
                    $Sewa_sepeda = Sewa_sepeda::find($id);
                    return view("back.Sewa_sepeda.show",compact("Sewa_sepeda"));
                }
            

            
                /**
                 * Show the form for editing the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function edit($id)
                {
                    $Sewa_sepeda = Sewa_sepeda::find($id);
                    return view("back.Sewa_sepeda.edit",compact("Sewa_sepeda"));
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

                    
                    
                    
                    $Sewa_sepeda = Sewa_sepeda::find($id);
                    $Sewa_sepeda->update($input);
                
                    return redirect()->route("sewa_sepeda.index")
                    ->with("success","Sewa_sepeda updated successfully");
                
                }
            

                /**
                 * Remove the specified resource from storage.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function destroy($id)
                {
                   Sewa_sepeda::find($id)->delete();
                    return redirect()->route("sewa_sepeda.index")
                    ->with("success","Sewa_sepeda deleted successfully");
                
                }
            }
        
        ?>