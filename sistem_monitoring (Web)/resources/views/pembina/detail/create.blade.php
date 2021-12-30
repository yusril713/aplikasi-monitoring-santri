@extends('layouts.global')
@section('title')Tambah Data @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{ route('detail-pembina.store') }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="">Mata Pelajaran</label>
                        <input type="hidden" name="mapel_id" value="{{ $mapel->id }}">
                        <input type="text" class="form-control" name="mata_pelajaran" value="{{ $mapel->mata_pelajaran }}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="">Pilih Pembina/Pengajar</label>
                        <select name="pembina" class="form-control">
                            <option value="">Pilih Pembina</option>
                            @foreach ($pembina as $row)
                                <option value="{{ $row->id }}">{{ $row->nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Pilih Kelas</label>
                        <select name="kelas" id="" class="form-control">
                            <option value="">Pilih Kelas</option>
                            @foreach ($kelas as $row)
                                <option value="{{ $row->id }}">{{ $row->kelas }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Hari</label>
                        <select name="hari"  class="form-control">
                            <option value="Senin">Senin</option>
                            <option value="Selasa">Selasa</option>
                            <option value="Rabu">Rabu</option>
                            <option value="Kamis">Kamis</option>
                            <option value="Jumat">Jumat</option>
                            <option value="Sabtu">Sabtu</option>
                            <option value="Minggu">Minggu</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Jam</label>
                        <input type="text" class="form-control" name="jam" placeholder="11.00 - 13.00">
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