<?php

namespace App\Http\Controllers;

use App\Mapel;
use App\DetailPembina;
use Illuminate\Http\Request;

class MapelController extends Controller
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
        $mapel = Mapel::orderBy('jenis', 'asc')->orderBy('mata_pelajaran', 'asc')->get();
        return view('mapel.index', ['mapel' => $mapel]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('mapel.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $mapel = new Mapel;
        $mapel->kode_mapel = $request->kode;
        $mapel->jenis = $request->jenis;
        $mapel->mata_pelajaran = $request->mata_pelajaran;
        $mapel->save();
        return redirect()->route('mapel.create')->with('status', 'Data successfully added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Mapel  $mapel
     * @return \Illuminate\Http\Response
     */
    public function show(Mapel $mapel)
    {
        $mapel = Mapel::find($mapel)->first();
        $detail_pembina = DetailPembina::join('tb_kelas', 'tb_kelas.id', 'tb_detail_pembina.kelas_id')
            ->join('tb_mapel', 'tb_mapel.id', 'tb_detail_pembina.mapel_id')
            ->join('tb_pembina', 'tb_pembina.id', 'tb_detail_pembina.pembina_id')
            ->where('tb_mapel.id', $mapel->id)
            ->select('tb_detail_pembina.*', 'tb_kelas.kelas', 
            'tb_mapel.mata_pelajaran', 'tb_pembina.nama', 'tb_pembina.nip')
            ->get();
        return view('pembina.detail.index', ['detail_pembina' => $detail_pembina, 'mapel' => $mapel]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Mapel  $mapel
     * @return \Illuminate\Http\Response
     */
    public function edit(Mapel $mapel)
    {
        $mapel = Mapel::find($mapel)->first();
        return view('mapel.edit', ['mapel' => $mapel]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Mapel  $mapel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Mapel $mapel)
    {
        $mapel = Mapel::find($mapel)->first();
        $mapel->kode_mapel = $request->kode;
        $mapel->jenis = $request->jenis;
        $mapel->mata_pelajaran = $request->mata_pelajaran;
        $mapel->save();
        return redirect()->route('mapel.edit', ['mapel' => $mapel])->with('status', 'Data successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Mapel  $mapel
     * @return \Illuminate\Http\Response
     */
    public function destroy(Mapel $mapel)
    {
        Mapel::find($mapel)->first()->delete();
        return redirect()->route('mapel.index')->with('status', 'Data successfully deleted');
    }
}
