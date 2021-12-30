@extends('layouts.global')
@section('title')Tambah Data Mata Pelajaran @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Data Mata Pelajaran</h4>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{ route('mapel.update', [$mapel->id]) }}" method="post">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="">Kode Mapel</label>
                        <input type="text" name="kode" class="form-control" value="{{ $mapel->kode_mapel }}">
                    </div>
                    <div class="form-group">
                        <label for="">Jenis</label>
                        <select name="jenis" class="form-control" name="jenis">
                            <option value="">Pilih Jenis</option>
                            <option value="rutin" {{ ($mapel->jenis == 'rutin') ? 'selected' : '' }}>Rutin</option>
                            <option value="eksternal" {{ ($mapel->jenis == 'rutin') ? '' : 'selected' }}>Eksternal</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Mata Pelajaran</label>
                        <input type="text" class="form-control" name="mata_pelajaran" value="{{ $mapel->mata_pelajaran }}">
                    </div>
                    <div class="d-flex justify-content-end">
                        <button class="btn btn-primary" type="submit">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection