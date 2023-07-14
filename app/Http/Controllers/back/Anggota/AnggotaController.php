<?php
        namespace App\Http\Controllers\Back\Anggota;
        use Illuminate\Http\Request;
        use App\Http\Controllers\Controller;
        use App\Models\Anggota;
        use DB;
        use Hash;
        use Illuminate\Support\Arr;

        class AnggotaController extends Controller
        {
            /**
             * Display a listing of the resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function index(Request $request)
            {
                $data = Anggota::orderBy("id","DESC")->get();
                return view("back.Anggota.index",compact("data"))
                    ->with("i", ($request->input("page", 1) - 1) * 5);
            }
        
            /**
             * Show the form for creating a new resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function create()
            {
                return view("back.Anggota.create");
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
                
                
                $Anggota = Anggota::create($input);
               
            
                return redirect()->route("anggota.index")
                ->with("success","Anggota created successfully");
            
            }
        
        
            /**
                 * Display the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
        
                public function show($id)
                {
                    $Anggota = Anggota::find($id);
                    return view("back.Anggota.show",compact("Anggota"));
                }
            

            
                /**
                 * Show the form for editing the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function edit($id)
                {
                    $Anggota = Anggota::find($id);
                    return view("back.Anggota.edit",compact("Anggota"));
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

                    
                    
                    
                    $Anggota = Anggota::find($id);
                    $Anggota->update($input);
                
                    return redirect()->route("anggota.index")
                    ->with("success","Anggota updated successfully");
                
                }
            

                /**
                 * Remove the specified resource from storage.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function destroy($id)
                {
                    Anggota::find($id)->delete();
                    return redirect()->route("anggota.index")
                    ->with("success","Anggota deleted successfully");
                
                }
            }
        
        ?>