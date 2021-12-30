<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class RegisterController extends Controller
{
    public function action(Request $request) {
        $this->validate($request, [
            'name' => 'required|min:3',
            'email' => 'required|email|unique::users,email',
            'password' => 'required|min:8',
        ]);
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'api_token' => Str::random(80),
        ]);

        return response()->json($user);
    }
}
