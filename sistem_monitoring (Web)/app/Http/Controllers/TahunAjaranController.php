<?php

namespace App\Http\Controllers;

use App\TahunAjaran;
use Illuminate\Http\Request;

class TahunAjaranController extends Controller
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
        $ta = TahunAjaran::orderBy('id')->get();
        return view('tahun_ajaran.index', ['ta' => $ta]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('tahun_ajaran.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $ta = new TahunAjaran;
        $ta->tahun_ajaran = $request->tahun_ajaran;
        $ta->save();
        return redirect()->route('tahun-ajaran.create')->with('status', 'Data successfully added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TahunAjaran  $tahunAjaran
     * @return \Illuminate\Http\Response
     */
    public function show(TahunAjaran $tahunAjaran)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TahunAjaran  $tahunAjaran
     * @return \Illuminate\Http\Response
     */
    public function edit(TahunAjaran $tahunAjaran)
    {
       $ta = TahunAjaran::find($tahunAjaran)->first();
       return view('tahun_ajaran.edit', ['ta' => $ta]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TahunAjaran  $tahunAjaran
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TahunAjaran $tahunAjaran)
    {
        $ta = TahunAjaran::find($tahunAjaran)->first();
        $ta->tahun_ajaran = $request->tahun_ajaran;
        $ta->save();
        return redirect()->route('tahun-ajaran.edit', [$ta])->with('status', 'Data succesfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TahunAjaran  $tahunAjaran
     * @return \Illuminate\Http\Response
     */
    public function destroy(TahunAjaran $tahunAjaran)
    {
    }
}
