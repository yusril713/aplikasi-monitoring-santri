<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Crypt;

class HafidzController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $santri = \App\Hafidz::join('tb_santri', 'tb_santri.id', 'tb_hafidz.santri_id')
            ->select('tb_hafidz.*', 'tb_santri.nis', 'tb_santri.nama')->get();
        return view('activity.hafidz.index', ['santri' => $santri]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('activity.hafidz.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $hafidz = new \App\Hafidz;
        $nama = $request->nis;
        $nis = explode(" - ", $nama);
        $santri = \App\Santri::where('nis', $nis[1])->first();
        $pembina = \App\Pembina::where('user_id', \Auth::user()->id)->first();
        $hafidz->santri_id = $santri->id;
        $hafidz->pembina_id = $pembina->id;
        $hafidz->hafalan = $request->hafalan;
        $hafidz->save();
        return redirect()->route('hafidz.index')->with('status', 'Data successfully added');
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
        $hafidz = \App\Hafidz::find(Crypt::decrypt($id));
        $santri = \App\Santri::find($hafidz->santri_id);
        return view('activity.hafidz.edit', ['hafidz' => $hafidz, 'santri' => $santri]);
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
        $hafidz = \App\Hafidz::find(Crypt::decrypt($id));
        $hafidz->hafalan = $request->hafalan;
        $hafidz->save();
        return redirect()->route('hafidz.index')->with('status', 'Data successfully changed');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $hafidz = \App\Hafidz::find(Crypt::decrypt($id))->delete();
        return redirect()->route('hafidz.index')->with('status', 'Data successfully removed');
    }
}
