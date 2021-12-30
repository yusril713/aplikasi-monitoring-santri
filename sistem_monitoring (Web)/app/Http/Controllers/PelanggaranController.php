<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Crypt;

class PelanggaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $santri = \App\Pelanggaran::join('tb_santri', 'tb_santri.id', 'tb_pelanggaran.santri_id')
            ->select('tb_pelanggaran.*', 'tb_santri.nis', 'tb_santri.nama')->get();
        return view('activity.pelanggaran.index', ['santri' => $santri]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('activity.pelanggaran.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $pelanggaran = new \App\Pelanggaran;
        $nama = $request->nis;
        $nis = explode(" - ", $nama);
        $santri = \App\Santri::where('nis', $nis[1])->first();
        $pelanggaran->santri_id = $santri->id;
        $pelanggaran->pelanggaran = $request->pelanggaran;
        $pelanggaran->tanggal_pelanggaran = date("Y-m-d");
        $pelanggaran->save();
        return redirect()->route('pelanggaran.index')->with('status', 'Data successfully added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $pelanggaran = \App\Pelanggaran::find(Crypt::decrypt($id));
        $santri = \App\Santri::find($pelanggaran->santri_id);
        return view('activity.pelanggaran.edit', ['pelanggaran' => $pelanggaran, 'santri' => $santri]);
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
        $pelanggaran = \App\Pelanggaran::find(Crypt::decrypt($id));
        $pelanggaran->pelanggaran = $request->pelanggaran;
        $pelanggaran->save();
        return redirect()->route('pelanggaran.index')->with('status', 'Data successfully changed');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pelanggaran = \App\Pelanggaran::find(Crypt::decrypt($id))->delete();
        return redirect()->route('pelanggaran.index')->with('status', 'Data successfully removed');
    }
}
