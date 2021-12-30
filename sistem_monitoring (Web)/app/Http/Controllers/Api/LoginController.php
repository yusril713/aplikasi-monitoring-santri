<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login() {
        if(Auth::attempt(['username'=>request('username'), 'password' => request('pass')])){ 
            $user = Auth::user();
            // $success['token'] =  $user->createToken('AppName')-> accessToken;
            //return response()->json($success);
            $santri = \App\Santri::where('nis', Auth::user()->username)->first();
            return response()->json(['status' => 1, 'user' => $santri]);
        }
        return response()->json(['status' => 0,'message'=>'Check username or password']);
    }

    public function getUser() {
        $user = Auth::user();
        return response()->json($user); 
    }

    public function getdata(){

        $santri = \App\Santri::get();
        return response()->json($santri);
    }

    public function action(Request $request){
        $user = new User;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->name = $request->name;
        $user->save();
        return response()->json($user);
    }
}
