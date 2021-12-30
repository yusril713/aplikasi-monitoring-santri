@extends('layouts.global')
@section('title')Tambah Kelas @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Tahun Ajaran {{ $ta->tahun_ajaran }} Semester {{ $semester->semester }}</h4>
                <h5>Kelas: {{ $kelas->kelas }}</h5>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <input type="hidden" id="kelas_id" value="{{ $kelas->id }}">
                <label for="">Pilih Angkatan</label>
                <select name="angkatan" id="angkatan" class="form-control col-md-4">
                    <option value="">PILIH ANGKATAN</option>
                    @foreach ($santri as $row)
                        <option value="{{ $row->angkatan }}">{{ $row->angkatan }}</option>
                    @endforeach
                </select>
                <br>
                <div class="table-responsive" id="data_angkatan"></div>
            </div>
        </div>
    </div>
</div>
@endsection