<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PembinaController extends Controller
{
    public function GetDataPembina(){
        $pembina = \App\Pembina::orderBy('nama')->get();
        return response()->json(['pembina' => $pembina]);
    }
}
