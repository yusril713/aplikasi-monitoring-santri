<?php

namespace App\Http\Controllers;

use App\Absensi;
use App\DetailPembina;
use App\Pembina;
use App\Semester;
use App\Santri;
use App\Mapel;
use App\Kelas;
use Illuminate\Http\Request;
use Crypt;

class AbsensiController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pembina = Pembina::where('user_id', \Auth::user()->id)->first();
        if ($pembina) {
            $dp = DetailPembina::join('tb_kelas', 'tb_kelas.id', 'tb_detail_pembina.kelas_id')
                ->join('tb_mapel', 'tb_mapel.id', 'tb_detail_pembina.mapel_id')
                ->where('pembina_id', $pembina->id)
                ->select('tb_detail_pembina.*', 'tb_mapel.mata_pelajaran', 'tb_kelas.kelas')
                ->get();
            return view('activity.absensi.index', ['dp' => $dp]);
            //return $dp;
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Absensi  $absensi
     * @return \Illuminate\Http\Response
     */
    public function show(Absensi $absensi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Absensi  $absensi
     * @return \Illuminate\Http\Response
     */
    public function edit($absensi)
    {
        $id =  Crypt::decrypt($absensi);
        $absensi = Absensi::join('tb_mapel', 'tb_mapel.id', 'tb_absensi.mapel_id')
            ->join('tb_kelas', 'tb_kelas.id', 'tb_absensi.kelas_id')
            ->join('tb_pembina', 'tb_pembina.id', 'tb_absensi.pembina_id')
            ->join('tb_semester', 'tb_semester.id', 'tb_absensi.semester_id')
            ->join('tb_tahun_ajaran', 'tb_semester.tahun_ajaran_id', 'tb_tahun_ajaran.id')
            ->where('tb_absensi.id', $id)
            ->select('tb_absensi.*', 'tb_kelas.kelas', 'tb_mapel.mata_pelajaran', 'tb_pembina.nama', 'tb_semester.semester', 'tb_tahun_ajaran.tahun_ajaran')
            ->first();
        $detail_abensi = \App\DetailAbsensi::join('tb_santri', 'tb_santri.id', 'tb_detail_absensi.santri_id')
            ->where('absensi_id', $id)
            ->select('tb_detail_absensi.*', 'tb_santri.nis', 'tb_santri.nama')->get();
        return view('activity.absensi.edit_absensi', ['absensi' => $absensi, 'detail_absensi' => $detail_abensi]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Absensi  $absensi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Absensi $absensi)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Absensi  $absensi
     * @return \Illuminate\Http\Response
     */
    public function destroy(Absensi $absensi)
    {
        $absensi = Absensi::find($absensi)->first()->delete();
        return redirect()->route('absensi.index');
    }

    public function presensi($id, $mapel) {
        $ta = Semester::join('tb_tahun_ajaran', 'tb_tahun_ajaran.id', 'tb_semester.tahun_ajaran_id')
            ->latest('tb_semester.created_at')
            ->select('tb_semester.*', 'tb_tahun_ajaran.tahun_ajaran')
            ->first();
        $mp = Mapel::where('id', Crypt::decrypt($mapel))->first();
        $pembina = Pembina::where('user_id', \Auth::user()->id)->first();
        $kelas = Kelas::find(Crypt::decrypt($id));
        $absensi = Absensi::join('tb_kelas', 'tb_kelas.id', 'tb_absensi.kelas_id')
            ->join('tb_semester', 'tb_semester.id', 'tb_absensi.semester_id')
            ->join('tb_pembina', 'tb_pembina.id', 'tb_absensi.pembina_id')
            ->where('tb_absensi.pembina_id', $pembina->id)
            ->where('tb_absensi.mapel_id', $mp->id)
            ->where('tb_absensi.kelas_id', Crypt::decrypt($id))
            ->where('tb_absensi.semester_id', $ta->id)
            ->select('tb_absensi.*')
            ->get();
        return view('activity.absensi.absensi', ['ta' => $ta, 'mapel' => $mp, 'santri' => $absensi, 'kelas' => $kelas]);
        //return $absensi;
    }

    public function add(Request $request) {
        $pembina = Pembina::where('user_id', \Auth::user()->id)->first();
        $absensi = new Absensi;
        $absensi->semester_id = $request->semester_id;
        $absensi->kelas_id = $request->kelas_id;
        $absensi->pembina_id = $pembina->id;
        $absensi->mapel_id = $request->mapel_id;
        $absensi->tanggal = date("Y-m-d");
        $absensi->save();

        $ta = Semester::join('tb_tahun_ajaran', 'tb_tahun_ajaran.id', 'tb_semester.tahun_ajaran_id')
            ->latest('tb_semester.created_at')
            ->select('tb_semester.*', 'tb_tahun_ajaran.tahun_ajaran')
            ->first();
        $mp = Mapel::where('id', $request->mapel_id)->first();
        $santri = Santri::join('tb_detail_kelas', 'tb_detail_kelas.santri_id', 'tb_santri.id')
            ->join('tb_kelas', 'tb_detail_kelas.kelas_id','tb_kelas.id')
            ->join('tb_semester', 'tb_semester.id', 'tb_detail_kelas.semester_id')
            ->join('tb_tahun_ajaran', 'tb_tahun_ajaran.id', 'tb_semester.tahun_ajaran_id')
            ->where('tb_detail_kelas.kelas_id', $request->kelas_id)
            ->where('tb_detail_kelas.semester_id', $ta->id)
            ->orderBy('tb_santri.nama')
            ->select('tb_santri.id as santri_id','tb_santri.nis', 
                'tb_santri.nama',
                'tb_kelas.kelas', 'tb_kelas.id as kelas_id',
                'tb_semester.semester', 
                'tb_tahun_ajaran.tahun_ajaran')
            ->get();
        return view('activity.absensi.detail_absensi', ['absensi_id'=> $absensi->id, 'mapel' => $mp, 'santri' => $santri]);
    }

    public function DetailPresensi() {
       
    }

    public function apply(Request $request, $id) {
        $ta = Semester::latest('created_at')->first();
        foreach($request->nis as $nis) {
            $absensi = new \App\DetailAbsensi;
            $absensi->absensi_id = $request->absensi_id;
            $absensi->santri_id = $nis;
            $absensi->keterangan = $request->$nis;                          
            $absensi->save();
        }

        return redirect()->route('absensi.index');
    }

    public function EditAbsensi(Request $request, $id) {
        foreach($request->nis as $nis) {
            $absensi = \App\DetailAbsensi::where('absensi_id', Crypt::decrypt($id))->where('santri_id', $nis)->first();
            $absensi->keterangan = $request->$nis;                          
            $absensi->save();
        }

        return redirect()->route('absensi.edit', $id)->with('status', 'Data successfully changed');
    }
}
