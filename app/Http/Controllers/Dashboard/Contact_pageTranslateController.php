<?php

namespace App\Http\Controllers\Dashboard;

use App\Contact_pageTranslate;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class Contact_pageTranslateController extends Controller
{
    function get_data_by_id(Request $request){
        $id = $request->id;
        $hp_contents_id = $request->hp_contents_id;
        if($id == null){
            return response()->json(['error'=> __('language.msg.e')]);
        }
        $SubScriptions = Contact_pageTranslate::where('hp_contents_id' ,'=',$hp_contents_id)
            ->where('language_id' ,'=',$id)->first();
        if($SubScriptions == null){
            return response()->json(['error'=> __('language.msg.e')]);
        }
        return response()->json(['success'=>$SubScriptions]);
    }

    public function post_data(Request $request){
        $edit = $request->id;
        $validation = Validator::make($request->all(), $this->rules($edit),$this->languags());
        if ($validation->fails())
        {
            return response()->json(['errors'=>$validation->errors()]);
        }
        else{
            $check = Contact_pageTranslate::
            where('id' ,'=',Input::get('id'))
                ->where('hp_contents_id' ,'=',Input::get('hp_contents_id'))
                ->where('language_id' ,'=',Input::get('language_id'))
                ->first();
            if($check != null){
                DB::transaction(function()
                {
                    $Contact_pageTranslate = Contact_pageTranslate::where('id' ,'=',Input::get('id'))->first();
                    $Contact_pageTranslate->name = Input::get('name');
                    $Contact_pageTranslate->summary = Input::get('summary');
                    $Contact_pageTranslate->language_id = Input::get('language_id');
                    $Contact_pageTranslate->hp_contents_id = Input::get('hp_contents_id');
                    $Contact_pageTranslate->update();
                    if( !$Contact_pageTranslate )
                    {
                        return response()->json(['error'=> __('language.msg.e')]);
                    }
                });
                return response()->json(['success'=>__('language.msg.m'),'dashboard'=>'1','same_page'=>'1']);
            }
            else{
                DB::transaction(function()
                {
                    $Contact_pageTranslate = new Contact_pageTranslate();
                    $Contact_pageTranslate->name = Input::get('name');
                    $Contact_pageTranslate->summary = Input::get('summary');
                    $Contact_pageTranslate->language_id = Input::get('language_id');
                    $Contact_pageTranslate->hp_contents_id = Input::get('hp_contents_id');
                    $Contact_pageTranslate->update();
                    $Contact_pageTranslate->save();
                    if( !$Contact_pageTranslate )
                    {
                        return response()->json(['error'=> __('language.msg.e')]);
                    }
                });
                return response()->json(['success'=> __('language.msg.s'),'dashboard'=>'1','same_page'=>'1']);
            }
        }
    }

    private function rules($edit = null,$pass = null){
        $x= [
            'name' => 'required|min:3|max:191|regex:/^[??-??a-zA-Z0-9]/',
            'summary' => 'required|string',
            'hp_contents_id' => 'required|numeric|min:1',
            'language_id' => 'required|numeric|min:1',
        ];
        if($edit != null){
            $x['id'] ='required|integer|min:1';
        }
        return $x;
    }

    private function languags(){
        if(app()->getLocale() == "ar"){
            return [
                'name.required' => '?????? ?????????? ??????????.',
                'name.regex' => '?????? ?????????? ?????? ???????? .',
                'name.min' => '?????? ?????????? ?????????? ?????? ?????????? 3 ???????? .',
                'name.max' => '?????? ?????????? ?????????? ?????? ???????????? 191 ??????  .',
                'sub_name.required' => '?????? ?????????? ?????????????? ??????????.',
                'sub_name.regex' => '?????? ?????????? ?????????????? ?????? ???????? .',
                'sub_name.min' => '?????? ?????????? ?????????????? ?????????? ?????? ?????????? 3 ???????? .',
                'sub_name.max' => '?????? ?????????? ?????????????? ?????????? ?????? ???????????? 191 ??????  .',
                'summary.required' => '?????? ?????????? ??????????.',
                'language_id.required' => '?????? ???????? ??????????.',
                'dir.required' => '?????? ?????? ???????? ??????????.',
            ];
        }
        else{
            return [];
        }
    }


}
