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
                <form action="{{route('santri.store')}}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="">NIS</label>
                        <input type="text" name="nis" class="form-control" placeholder="Masukkan nis santri...">
                    </div>
                    <div class="form-group">
                        <label for="">Nama</label>
                        <input type="text" name="nama" class="form-control" placeholder="Masukkan nama lengkap santri...">
                    </div>
                    <div class="form-group">
                        <label for="">Jenis Kelamin:</label>
                        <div class="radio">
                            <label><input type="radio" name="jenis_kelamin" value="L" checked> Laki-laki</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="jenis_kelamin" value="P"> Perempuan</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Jenjang</label>
                        <select name="jenjang" class="form-control">
                            <option value="">Pilih Jenjang</option>
                            @foreach ($jenjang as $row) 
                                <option value="{{ $row->id }}">{{ $row->jenjang }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Tahun Masuk</label>
                        <input type="text" name="tahun_masuk" class="form-control" placeholder="Masukkan tahun masuk santri....">
                    </div>
                    <div class="form-group">
                        <label for="">Tempat Lahir</label>
                        <input type="text" name="tempat_lahir" class="form-control" placeholder="Masukkan tempat lahir santri...">
                    </div>
                    <div class="form-group">
                        <label for="">Tanggal Lahir</label>
                        <input type="date" name="tanggal_lahir" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">Agama</label>
                        <input type="text" class="form-control" name="agama" placeholder="Masukkan agama...">
                    </div>
                    <div class="form-group">
                        <label for="">alamat</label>
                        <textarea class="form-control" name="alamat" placeholder="Masukkan alamat lengkap santri..."></textarea>
                    </div>
                    <div class="form-group">
                        <label for="">Kewarganegaraan</label>
                        <select name="kewarganegaraan" class="form-control">
                            <option value="">PILIH KEWARGANEGARAAN</option>
                            <option value="WNI">Warga Negara Indonesia</option>
                            <option value="WNA">Warga Negara Asing</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Nama Ayah</label>
                        <input type="text" class="form-control" name="ayah" placeholder="Masukkan nama ayah...">
                    </div>
                    <div class="form-group">
                        <label for="">Nama Ibu</label>
                        <input type="text" class="form-control" name="ibu" placeholder="Masukkan nama ibu...">
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