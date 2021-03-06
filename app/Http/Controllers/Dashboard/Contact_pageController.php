<?php

namespace App\Http\Controllers\Dashboard;

use App\Contact_page;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class Contact_pageController extends Controller
{
    public function index(){
        return view('dashboard/contact_page.index');
    }

    public function get_data_by_id(Request $request){
        $items = Contact_page::where('type','=','contact_page')->first();
        return response()->json(['success'=>$items]);
    }

    public function post_data(Request $request){
        $Contact_page = Contact_page::where('type','=','contact_page')->first();
        $validation = Validator::make($request->all(), $this->rules($Contact_page),$this->languags());
        if ($validation->fails())
        {
            return response()->json(['errors'=>$validation->errors()]);
        }
        else{
            if($Contact_page == null){
                DB::transaction(function()
                {
                    $Contact_page = new Contact_page();
                    $Contact_page->name = Input::get('name');
                    $Contact_page->summary = Input::get('summary');
                    $Contact_page->type = 'contact_page';
                    $Contact_page->avatar1 = parent::upladImage(Input::file('avatar1'),'contact_page');
                    $Contact_page->language_id = parent::GetIdLangEn()->id;
                    $Contact_page->user_id = parent::CurrentID();
                    $Contact_page->save();
                    if( !$Contact_page )
                    {
                        return response()->json(['error'=> __('language.msg.e')]);
                    }
                });
                return response()->json(['success'=> __('language.msg.s'),'same_page'=>'1','dashboard'=>'1']);
            }
            else{
                DB::transaction(function()
                {
                    $Contact_page = Contact_page::where('type','=','contact_page')->first();
                    $Contact_page->name = Input::get('name');
                    $Contact_page->summary = Input::get('summary');
                    if(Input::hasFile('avatar1')){
                        //Remove Old
                        if($Contact_page->avatar1 != 'upload/contact_page/no.png'){
                            if(file_exists(public_path($Contact_page->avatar1))){
                                unlink(public_path($Contact_page->avatar1));
                            }
                        }
                        //Save avatar1
                        $Contact_page->avatar1 = parent::upladImage(Input::file('avatar1'),'contact_page');
                    }
                    $Contact_page->update();
                    if( !$Contact_page )
                    {
                        return response()->json(['error'=> __('language.msg.e')]);
                    }
                });
                return response()->json(['success'=>__('language.msg.m'),'same_page'=>'1','dashboard'=>'1']);
            }
        }
    }

    private function rules($edit = null){
        $x= [
            'name' => 'required|min:3|max:191|regex:/^[??-??a-zA-Z0-9]/',
            'summary' => 'required|string',
            'avatar1' => 'required|mimes:png,jpg,jpeg,PNG,JPG,JPEG',
        ];
        if($edit != null){
            $x['id'] ='required|integer|min:1';
            $x['avatar1'] ='nullable|mimes:png,jpg,jpeg,PNG,JPG,JPEG';
        }
        return $x;
    }

    private function languags(){
        if(app()->getLocale() == "ar"){
            return [
                'link.required' => '?????? ???????????? ??????????.',
                'video.required' => '?????? ?????????????? ??????????.',
                'summary.required' => '?????? ?????????? ??????????.',
                'name.required' => '?????? ?????????? ??????????.',
                'name.regex' => '?????? ?????????? ?????? ???????? .',
                'name.min' => '?????? ?????????? ?????????? ?????? ?????????? 3 ???????? .',
                'name.max' => '?????? ?????????? ?????????? ?????? ???????????? 191 ??????  .',
                'sub_name.required' => '?????? ?????????? ?????????????? ??????????.',
                'sub_name.regex' => '?????? ?????????? ?????????????? ?????? ???????? .',
                'sub_name.min' => '?????? ?????????? ?????????????? ?????????? ?????? ?????????? 3 ???????? .',
                'sub_name.max' => '?????? ?????????? ?????????????? ?????????? ?????? ???????????? 191 ??????  .',
                'avatar1.required' => '?????? ???????????? ???? ???????????? ??????????.',
                'avatar2.required' => '?????? ???????????? ???? ???????????? ??????????.',
                'dir.required' => '?????? ?????? ???????? ??????????.',
            ];
        }
        else{
            return [];
        }
    }

}
