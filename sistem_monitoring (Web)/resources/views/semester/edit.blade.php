@extends('layouts.global')
@section('title')Tambah Data Tahun Ajaran @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Data Tahun Ajaran</h4>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{route('semester.update', [$semester->id])}}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="">Tahun Ajaran</label>
                        <select name="tahun_ajaran" class="form-control">
                            <option value="">PILIH TAHUN AJARAN</option>
                            @foreach ($ta as $row)
                                <option value="{{ $row->id }}" {{ ($row->id == $semester->tahun_ajaran_id) ? 'selected' : '' }}>{{ $row->tahun_ajaran }}</option>  
                            @endforeach                            
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Semester</label>
                        <select name="semester" class="form-control">
                            <option value="">PILIH SEMESTER</option>
                            <option value="Ganjil" {{ ($semester->semester == 'Ganjil') ? 'selected' : '' }}>Ganjil</option>  
                            <option value="Genap" {{ ($semester->semester == 'Ganjil') ? '' : 'selected' }}>Genap</option>  
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