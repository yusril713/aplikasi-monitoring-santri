<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SantriController extends Controller
{
    public function GetData($id) {
        $santri = \App\Santri::where('nis', $id)->first();
        return response()->json($santri);
    }

    public function update(Request $request, $id) {
        $santri = \App\Santri::where('id', $id)->first();
        $jenjang = \App\Jenjang::where('jenjang', $request->jenjang)->first();
        $santri->nis = $request->nis;
        $santri->nama = $request->nama;
        $santri->alamat = $request->alamat;
        $santri->tempat_lahir = $request->tempat_lahir;
        $santri->tanggal_lahir = $request->tanggal_lahir;
        $santri->kewarganegaraan = $request->kewarganegaraan;
        $santri->jenis_kelamin = $request->jenis_kelamin;
        $santri->angkatan = $request->angkatan;
        $santri->ayah = $request->ayah;
        $santri->ibu = $request->ibu;
        $santri->jenjang = $jenjang->jenjang;

        $santri->save();
        return response()->json(['status' => 1, 'user' => $santri]);
    }

    public function GetPrestasi($id) {
        $prestasi = \App\Prestasi::orderBy('created_at', 'desc')->where('santri_id', $id)->get();
        return response()->json(['count' => $prestasi->count(), 'prestasi' => $prestasi]);
    }

    public function GetHafalan($id) {
        $hafalan = \App\Hafidz::where('santri_id', $id)->orderBy('created_at', 'desc')->get();
        return response()->json(['count' => $hafalan->count(), 'hafalan' => $hafalan]);
    }

    public function GetPelanggaran($id) {
        $pelanggaran = \App\Pelanggaran::where('santri_id', $id)->orderBy('created_at', 'desc')->get();
        return response()->json(['count' => $pelanggaran->count(), 'pelanggaran' => $pelanggaran]);
    }
}
