<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function GetVisiMisi() {
        $visi = DB::table('tb_visi')->get();
        $misi = DB::table('tb_misi')->get();
        return response()->json(['visi' => $visi, 'misi' => $misi]);
    }
}
