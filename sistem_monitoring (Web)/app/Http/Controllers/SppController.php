<?php

namespace App\Http\Controllers;

use App\Spp;
use App\Santri;
use App\TahunAjaran;
use App\Semester;
use Illuminate\Http\Request;

class SppController extends Controller
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
        $tahun_ajaran = TahunAjaran::orderBy('created_at', 'desc')->first();
        $semester = Semester::orderBy('created_at', 'desc')->first();
        // $spp = Santri::leftJoin('tb_spp', 'tb_spp.santri_id', 'tb_santri.id')2
        //     ->leftJoin('tb_semester', 'tb_semester.id', 'tb_spp.semester_id')
        //     ->leftJoin('tb_tahun_ajaran', 'tb_tahun_ajaran.id', 'tb_semester.tahun_ajaran_id')
        //     ->orderBy('tb_spp.created_at', 'desc')
        $spp = Spp::join('tb_santri', 'tb_santri.id', 'tb_spp.santri_id')
            ->join('tb_semester', 'tb_semester.id', 'tb_spp.semester_id')
            ->join('tb_tahun_ajaran', 'tb_tahun_ajaran.id', 'tb_semester.tahun_ajaran_id')
            ->orderBy('tb_spp.created_at', 'desc')
            ->orderBy('tb_santri.nama', 'asc')
            ->select('tb_santri.nis', 'tb_santri.nama', 
                'tb_semester.semester', 'tb_tahun_ajaran.tahun_ajaran',
                'tb_spp.created_at', 'tb_spp.keterangan', 'tb_spp.id', 'tb_spp.tgl_bayar'    )->get();
        return view('activity.spp.index', ['spp' => $spp, 'ta' => $tahun_ajaran, 'semester' => $semester]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $santri = Santri::get();
        $semester = Semester::orderBy('created_at', 'desc')->first();
        //$tahun_ajaran = TahunAjaran::orderBy('created_at', 'desc')->first();
        // $semester = Semester::where('tahun_ajaran_id', $tahun_ajaran->id)->get();
        // return view('activity.spp.create', [
        //     'santri' => $santri,
        //     'ta' => $tahun_ajaran,
        //     'semester' => $semester
        // ]);
        $data = [];
        foreach($santri as $s) {
            $data[] = [
                'santri_id'=>$s->id,
                'semester_id' => $semester->id
            ];
        }
        Spp::insert($data);
        Semester::where('id', $semester->id)->update(['status_spp' => 'imported']);
        return redirect()->route('spp.index')->with('status', 'Data successfully imported');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Spp  $spp
     * @return \Illuminate\Http\Response
     */
    public function show(Spp $spp)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Spp  $spp
     * @return \Illuminate\Http\Response
     */
    public function edit($spp)
    {
        $spp1 = Spp::find($spp);
        $santri = Santri::find($spp1->santri_id);
        $ta = TahunAjaran::orderBy('created_at', 'desc')->first();
        $semester = Semester::where('tahun_ajaran_id', $ta->id)->get();
        return view('activity.spp.edit', [
            'spp_id' => $spp,
            'spp' => $spp1, 
            'santri' => $santri, 
            'semester' => $semester,
            'ta' => $ta
        ]);
        // $spp_edit = Spp::find($spp)->first();
        // $ta = TahunAjaran::orderBy('created_at', 'desc')->first();
        // $semester = Semester::where('tahun_ajaran_id', $ta->id)->get();
        // return view('activity.spp.edit', [
        //         'spp' => $spp_edit, 
        //         'semester' => $semester,
        //         'ta' => $ta
            // ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Spp  $spp
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Spp $spp)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Spp  $spp
     * @return \Illuminate\Http\Response
     */
    public function destroy(Spp $spp)
    {
        //
    }

    public function Simpan(Request $request, $id) {
        $spp = Spp::find($id);
        $spp->jumlah_bayar= $request->jumlah_bayar;
        $spp->keterangan = $request->keterangan;
        $spp->tgl_bayar = $request->tgl_bayar;
        $spp->save();
        return redirect()->route('spp.index');
    }
}
