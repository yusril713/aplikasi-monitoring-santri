@extends('layouts.global')
@section('title')Tambah Data Santri @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Data Santri</h4>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{route('santri.update', [$santri->id])}}" method="POST">
                    @method('PUT')
                    @csrf
                    <div class="form-group">
                        <label for="">NIS</label>
                        <input type="text" name="nis" class="form-control" placeholder="Masukkan nis santri..." value="{{$santri->nis}}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="">Nama</label>
                        <input type="text" name="nama" class="form-control" placeholder="Masukkan nama lengkap santri..." value="{{$santri->nama}}">
                    </div>
                    <div class="form-group">
                        <label for="">Tahun Masuk</label>
                        <input type="text" name="tahun_masuk" class="form-control" placeholder="Masukkan tahun masuk santri...." value="{{ $santri->angkatan }}">
                    </div>
                    <div class="form-group">
                        <label for="">Tempat Lahir</label>
                        <input type="text" name="tempat_lahir" class="form-control" placeholder="Masukkan tempat lahir santri..." value="{{$santri->tempat_lahir}}">
                    </div>
                    <div class="form-group">
                        <label for="">Tanggal Lahir</label>
                        <input type="date" name="tanggal_lahir" class="form-control" value="{{$santri->tanggal_lahir}}">
                    </div>
                    <div class="form-group">
                        <label for="">alamat</label>
                        <textarea class="form-control" name="alamat" placeholder="Masukkan alamat lengkap santri...">{{$santri->alamat}}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="">Kewarganegaraan</label>
                        <select name="kewarganegaraan" class="form-control">
                            <option value="">PILIH KEWARGANEGARAAN</option>
                            <option value="WNI" {{($santri->kewarganegaraan == 'WNI') ? 'selected' : ''}}>Warga Negara Indonesia</option>
                            <option value="WNA" {{($santri->kewarganegaraan == 'WNI') ? '' : 'selected'}}>Warga Negara Asing</option>
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