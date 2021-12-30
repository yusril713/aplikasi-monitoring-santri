<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
Use Crypt;

class PrestasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $santri = \App\Prestasi::join('tb_santri', 'tb_santri.id', 'tb_prestasi.santri_id')
            ->select('tb_prestasi.*', 'tb_santri.nis', 'tb_santri.nama')->get();
        return view('activity.prestasi.index', ['santri' => $santri]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('activity.prestasi.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $prestasi = new \App\Prestasi;
        $nama = $request->nis;
        $nis = explode(" - ", $nama);
        $santri = \App\Santri::where('nis', $nis[1])->first();
        $prestasi->santri_id = $santri->id;
        $prestasi->hafalan = $request->prestasi;
        $prestasi->save();
        return redirect()->route('prestasi.index')->with('status', 'Data successfully added');
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
        $prestasi = \App\Prestasi::find(Crypt::decrypt($id));
        $santri = \App\Santri::find($prestasi->santri_id);
        return view('activity.prestasi.edit', ['prestasi' => $prestasi, 'santri' => $santri]);
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
        $prestasi = \App\Prestasi::find(Crypt::decrypt($id));
        $prestasi->hafalan = $request->hafalan;
        $prestasi->save();
        return redirect()->route('prestasi.index')->with('status', 'Data successfully changed');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $prestasi = \App\Prestasi::find(Crypt::decrypt($id))->delete();
        return redirect()->route('prestasi.index')->with('status', 'Data successfully removed');
    }
}
