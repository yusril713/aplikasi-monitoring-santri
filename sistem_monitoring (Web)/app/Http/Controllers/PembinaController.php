<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\User;

class PembinaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $pembina = DB::table('tb_pembina')
            ->join('users', 'users.id', '=', 'tb_pembina.user_id')
            ->select('tb_pembina.*', 'users.email')
            ->paginate(20);
        return view('pembina.index', ['pembina' => $pembina]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pembina.create');
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
            'email' => $request->email,
            'name' => $request->nama,
            'password' => Hash::make($request->password),
            'role_id' => '2'
        ]);
        if ($user_id) {
            $santri = DB::table('tb_pembina')->insert([
                'nip' => $request->nip,
                'no_hp' => $request->no_hp,
                'nama' => $request->nama,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'alamat' => $request->alamat,
                'kewarganegaraan' => $request->kewarganegaraan,
                'user_id' => $user_id,
                'foto' => 'images.png'
            ]);
        }
        return redirect()->route('pembina.create')->with('status', 'Data successfully added');
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
        $pembina = DB::table('tb_pembina')->find($id);
        return view('pembina.edit', ['pembina' => $pembina]);
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
        $pembina = DB::table('tb_pembina')->where('id', $id)->update([
            'nip' => $request->nip,
            'no_hp' => $request->no_hp,
            'nama' => $request->nama,
            'alamat' =>$request->alamat,
            'tempat_lahir' => $request->tempat_lahir,
            'tanggal_lahir' => $request->tanggal_lahir,
            'kewarganegaraan' => $request->kewarganegaraan
        ]);

        return redirect()->route('pembina.edit', ['pembina' => $pembina])->with('status', 'Data successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pembina = DB::table('tb_pembina')->where('id', $id)->first();
        DB::table('users')->where('id', $pembina->user_id)->delete();
        return redirect()->route('pembina.index')->with('status', 'Data successfully deleted');
    }
}
