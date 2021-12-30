<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class SantriController extends Controller
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
        $santri = DB::table('tb_santri')
            ->join('tb_jenjang', 'tb_jenjang.id', 'tb_santri.jenjang')
            ->select('tb_santri.*', 'tb_jenjang.jenjang as j')
            ->orderBy('nis')->paginate(20);
        return view('santri.index', ['santri' => $santri]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $jenjang = DB::table('tb_jenjang')->get();
        return view('santri.create', ['jenjang' => $jenjang]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_id = User::insertGetId([
            'username' => $request->nis,
            'password' => bcrypt($request->nis),
            'api_token' => Str::random(80)
        ]);
        if ($user_id) {
            $santri = DB::table('tb_santri')->insert([
                'nis' => $request->nis,
                'nama' => $request->nama,
                'angkatan' => $request->tahun_masuk,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'alamat' => $request->alamat,
                'kewarganegaraan' => $request->kewarganegaraan,
                'user_id' => $user_id,
                'jenjang' => $request->jenjang,
                'jenis_kelamin' -> $request->jenis_kelamin,
                'ayah' -> $request->ayah,
                'ibu' -> $request->ibu,
                'agama' -> $request->agama
            ]);
        }
        return redirect()->route('santri.create')->with('status', 'Data succesfully created');
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
        $santri = DB::table('tb_santri')->find($id);
        return view('santri.edit', ['santri' => $santri]);
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
        $santri = DB::table('tb_santri')->where('id', $id)->update([
            'nama' => $request->nama,
            'angkatan' => $request->tahun_masuk,
            'alamat' =>$request->alamat,
            'tempat_lahir' => $request->tempat_lahir,
            'tanggal_lahir' => $request->tanggal_lahir,
            'kewarganegaraan' => $request->kewarganegaraan,
            'jenis_kelamin' => $request->jenis_kelamin,
            'agama' => $request->agama,
            'ayah' => $request->ayah,
            'ibu' => $request->ibu,
            'jenjang' => $request->jenjang
        ]);
        return redirect()->route('santri.edit', [$id])->with('status', 'Data successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $santri = DB::table('tb_santri')->where('id', $id)->first();
        DB::table('users')->where('id', $santri->user_id)->delete();
        return redirect()->route('santri.index')->with('status', 'Data successfully deleted');
    }

    public function GetAllNis() {
        $santri = DB::table('tb_santri')->get();
        echo json_encode(['santri'=>$santri]);
    }
}
