<?php

namespace App\Http\Controllers;

use App\DetailPembina;
use App\TahunAjaran;
use Illuminate\Http\Request;

class DetailPembinaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $ta = TahunAjaran::orderBy('created_at', 'desc')->first();
        $data = new DetailPembina;
        $data->kelas_id = $request->kelas;
        $data->mapel_id = $request->mapel_id;
        $data->pembina_id = $request->pembina;
        $data->hari = $request->hari;
        $data->jam = $request->jam;
        $data->tahun_ajaran_id = $ta->id;
        $data->save();
        return redirect()->route('mapel.show', [$data->mapel_id])->with('status', 'Data successfully added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\DetailPembina  $detailPembina
     * @return \Illuminate\Http\Response
     */
    public function show(DetailPembina $detailPembina)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\DetailPembina  $detailPembina
     * @return \Illuminate\Http\Response
     */
    public function edit(DetailPembina $detailPembina)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DetailPembina  $detailPembina
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DetailPembina $detailPembina)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\DetailPembina  $detailPembina
     * @return \Illuminate\Http\Response
     */
    public function destroy(DetailPembina $detailPembina)
    {
        //
    }

    public function CreateData($id) {
        $mapel = \App\Mapel::find($id);
        $pembina = \App\Pembina::get();
        $kelas = \App\Kelas::get();
        return view('pembina.detail.create', [
            'mapel' => $mapel, 
            'pembina' => $pembina, 
            'kelas' => $kelas]);
    }
}
