@extends('layouts.global')
@section('title')Tambah Data Pembina @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Data Pembina</h4>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form method="POST" action="{{route('pembina.store')}}">
                    @csrf
                    <div class="form-group">
                        <label for="">NIP</label>
                        <input type="text" class="form-control" name="nip" placeholder="Masukkan nip....">
                    </div>
                    <div class="form-group">
                        <label for="">Nama</label>
                        <input type="text" class="form-control" name="nama" placeholder="Masukkan nama lengkap....">
                    </div>
                    <div class="form-group">
                        <label for="">No Hp</label>
                        <input type="text" class="form-control" name="no_hp" placeholder="Masukkan no_hp....">
                    </div>
                    <div class="form-group">
                        <label for="">E-mail</label>
                        <input type="email" class="form-control" name="email" placeholder="Masukkan alamat email....">
                    </div>
                    <div class="form-group">
                        <label for="">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Masukkan tempat lahir....">
                    </div>
                    <div class="form-group">
                        <label for="">Tempat Lahir</label>
                        <input type="text" class="form-control" name="tempat_lahir" placeholder="Masukkan tempat lahir....">
                    </div>
                    <div class="form-group">
                        <label for="">Tanggal Lahir</label>
                        <input type="date" class="form-control" name="tanggal_lahir">
                    </div>
                    <div class="form-group">
                        <label for="">Alamat</label>
                        <textarea name="alamat" id="" class="form-control" placeholder="Masukkan alamat lengkap..."></textarea>
                    </div>
                    <div class="form-group">
                        <label for="">Kewarganegaraan</label>
                        <select name="kewarganegaraan" class="form-control">
                            <option value="">PILIH</option>
                            <option value="WNI">Warga Negara Indonesia</option>
                            <option value="WNA">Warga Negara Asing</option>
                        </select>
                    </div>
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection