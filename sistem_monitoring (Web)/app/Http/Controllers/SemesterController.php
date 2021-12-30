<?php

namespace App\Http\Controllers;

use App\Semester;
use App\TahunAjaran;
use Illuminate\Http\Request;

class SemesterController extends Controller
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
        $ta = TahunAjaran::join('tb_semester', 'tb_semester.tahun_ajaran_id', 'tb_tahun_ajaran.id')
            ->select('tb_tahun_ajaran.tahun_ajaran', 'tb_semester.*')
            ->get();
        return view('semester.index', ['ta' => $ta]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $ta = TahunAjaran::get();
        return view('semester.create', ['ta' => $ta]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $semester = new Semester;
        $semester->tahun_ajaran_id = $request->tahun_ajaran;
        $semester->semester = $request->semester;
        $semester->save();
        return redirect()->route('semester.index')->with('status', 'Data successfuly added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Semester  $semester
     * @return \Illuminate\Http\Response
     */
    public function show(Semester $semester)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Semester  $semester
     * @return \Illuminate\Http\Response
     */
    public function edit(Semester $semester)
    {
        $ta = TahunAjaran::get();
        $semester = Semester::find($semester)->first();
        return view('semester.edit', ['ta' => $ta, 'semester' => $semester]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Semester  $semester
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Semester $semester)
    {
        $semester = Semester::find($semester)->first();
        $semester->tahun_ajaran_id = $request->tahun_ajaran;
        $semester->semester = $request->semester;
        $semester->save();
        return redirect()->route('semester.index')->with('status', 'Data successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Semester  $semester
     * @return \Illuminate\Http\Response
     */
    public function destroy(Semester $semester)
    {
        Semester::find($semester)->first()->delete();
        return redirect()->route('semester.index')->with('status', 'Data successfully deleted');
    }
}
