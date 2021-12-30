<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AbsensiController extends Controller
{
    public function GetMapel($id) {
        $absensi = \App\Absensi::join('tb_detail_absensi', 'tb_detail_absensi.absensi_id', 'tb_absensi.id')
            ->join('tb_mapel', 'tb_mapel.id', 'tb_absensi.mapel_id')
            ->join('tb_pembina', 'tb_pembina.id', 'tb_absensi.pembina_id')
            ->join('tb_kelas', 'tb_kelas.id', 'tb_absensi.kelas_id')
            ->where('tb_detail_absensi.santri_id', $id)
            ->groupBy('tb_mapel.id')
            ->select('tb_mapel.mata_pelajaran', 'tb_absensi.*', 'tb_pembina.nama as nama_pembina', 'tb_kelas.kelas')->get();
            return response()->json(['mapel' => $absensi]);
    }


}
