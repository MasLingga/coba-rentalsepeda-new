<?php
        namespace App\Http\Controllers\Back\Sewa;
        use Illuminate\Http\Request;
        use App\Http\Controllers\Controller;
        use App\Models\Sewa;
        use DB;
        use Hash;
        use Illuminate\Support\Arr;

        class SewaController extends Controller
        {
            /**
             * Display a listing of the resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function index(Request $request)
            {
                $data = Sewa::orderBy("id","DESC")->get();
                return view("back.Sewa.index",compact("data"))
                    ->with("i", ($request->input("page", 1) - 1) * 5);
            }
        
            /**
             * Show the form for creating a new resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function create()
            {
                return view("back.Sewa.create");
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
                
                
                $Sewa = Sewa::create($input);
               
            
                return redirect()->route("Sewa.index")
                ->with("success","Sewa created successfully");
            
            }
        
        
            /**
                 * Display the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
        
                public function show($id)
                {
                    $Sewa = Sewa::find($id);
                    return view("back.Sewa.show",compact("Sewa"));
                }
            

            
                /**
                 * Show the form for editing the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function edit($id)
                {
                    $Sewa = Sewa::find($id);
                    return view("back.Sewa.edit",compact("Sewa"));
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

                    
                    
                    
                    $Sewa = Sewa::find($id);
                    $Sewa->update($input);
                
                    return redirect()->route("sewa.index")
                    ->with("success","Sewa updated successfully");
                
                }
            

                /**
                 * Remove the specified resource from storage.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function destroy($id)
                {
                    Sewa::find($id)->delete();
                    return redirect()->route("sewa.index")
                    ->with("success","Sewa deleted successfully");
                
                }
            }
        
        ?>