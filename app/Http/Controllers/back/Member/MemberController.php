<?php
        namespace App\Http\Controllers\Back\Member;
        use Illuminate\Http\Request;
        use App\Http\Controllers\Controller;
        use App\Models\Member;
        use DB;
        use Hash;
        use Illuminate\Support\Arr;

        class MemberController extends Controller
        {
            /**
             * Display a listing of the resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function index(Request $request)
            {
                $data = Member::orderBy("id","DESC")->get();
                return view("back.Member.index",compact("data"))
                    ->with("i", ($request->input("page", 1) - 1) * 5);
            }
        
            /**
             * Show the form for creating a new resource.
             *
             * @return \Illuminate\Http\Response
             */
        
            public function create()
            {
                return view("back.Member.create");
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
                
                
                $Member = Member::create($input);
               
            
                return redirect()->route("member.index")
                ->with("success","Member created successfully");
            
            }
        
        
            /**
                 * Display the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
        
                public function show($id)
                {
                    $Member = Member::find($id);
                    return view("back.Member.show",compact("Member"));
                }
            

            
                /**
                 * Show the form for editing the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
            
                public function edit($id)
                {
                    $Member = Member::find($id);
                    return view("back.Member.edit",compact("Member"));
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

                    
                    
                    
                    $Member = Member::find($id);
                    $Member->update($input);
                
                    return redirect()->route("member.index")
                    ->with("success","Member updated successfully");
                
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