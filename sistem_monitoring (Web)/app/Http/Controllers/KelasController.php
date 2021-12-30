<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kelas;
use App\Semester;
use App\TahunAjaran;
use App\Santri;
use App\Pembina;
use App\DetailKelas;

class KelasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $kelas = Kelas::join('tb_semester', 'tb_semester.id', 'tb_kelas.semester_id')
        //     ->join('tb_tahun_ajaran', 'tb_tahun_ajaran.id', 'tb_semester.tahun_ajaran_id')
        //     ->orderBy('tb_kelas.created_at', 'desc')
        //     ->select('tb_kelas.*', 'tb_semester.semester', 'tb_tahun_ajaran.tahun_ajaran')
        //     ->get();
        $kelas = Kelas::orderBy('created_at', 'asc')->get();
        return view('kelas.index', ['kelas' => $kelas]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // $ta = TahunAjaran::orderBy('created_at', 'desc')->first(); 
        // $semester = Semester::orderBy('created_at', 'desc')->first();
        // return view('kelas.create', ['ta' => $ta, 'semester' => $semester]);
        return view('kelas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $kelas = new Kelas;
        $kelas->kelas = $request->kelas;
        $kelas->save();
        return redirect()->route('kelas.index')->with('status', 'Data successfully added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $ta = TahunAjaran::orderBy('created_at', 'desc')->first(); 
        $semester = Semester::orderBy('created_at', 'desc')->first(); 
        $kelas = Kelas::join('tb_detail_kelas', 'tb_detail_kelas.kelas_id', 'tb_kelas.id')
            ->join('tb_santri', 'tb_santri.id', 'tb_detail_kelas.santri_id')
            ->join('tb_semester', 'tb_semester.id', 'tb_detail_kelas.semester_id')
            ->join('tb_tahun_ajaran', 'tb_tahun_ajaran.id', 'tb_semester.tahun_ajaran_id')
            ->join('tb_pembina', 'tb_pembina.id', 'tb_detail_kelas.pembina_id')
            ->where('tb_kelas.id', $id)
            ->where('tb_semester.tahun_ajaran_id', $ta->id)
            ->orderBy('tb_santri.nama', 'asc')
            ->orderBy('tb_tahun_ajaran.created_at', 'asc')
            ->select('tb_kelas.*', 'tb_santri.nama', 'tb_semester.semester', 
                'tb_tahun_ajaran.tahun_ajaran', 'tb_pembina.nama as nama_pembina', 'tb_santri.nis') 
            ->get();
        return view('kelas.show', ['kelas' => $kelas]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $ta = TahunAjaran::orderBy('created_at', 'desc')->first(); 
        $semester = Semester::orderBy('created_at', 'desc')->first();
        $kelas = Kelas::find($id)->first();
        $santri = Santri::groupBy('angkatan')->get();
        return view('kelas.edit', [
            'ta' => $ta, 
            'semester' => $semester, 
            'kelas' => $kelas,
            'santri' => $santri
        ]);
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
    }

    public function PostKelas(Request $request) {
        $ta = TahunAjaran::orderBy('created_at', 'desc')->first(); 
        $semester = Semester::orderBy('created_at', 'desc')->first();
        foreach ($request->santri_id as $s) {
            $kelas = new DetailKelas;
            $kelas->kelas_id = $request->kelas_id;
            $kelas->semester_id = $semester->id;
            $kelas->santri_id = $s;
            $kelas->pembina_id = $request->pembina;
            $kelas->save();
        }

        return redirect()->route('kelas.index')->with('status', 'Data successfully added');
    }

    public function GetDataAngkatan($id, $kelas_id) {
        $santri = Santri::where('angkatan', $id)->get();
        $pembina = Pembina::orderBy('nama', 'asc')->get();
        echo json_encode(['santri' => $santri, 'pembina' => $pembina, 'kelas_id' => $kelas_id]);
    }
}
