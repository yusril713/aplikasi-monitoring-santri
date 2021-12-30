@extends('layouts.global')
@section('title')Tambah Kelas @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Data Kelas</h4>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{ route('kelas.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="">Nama Kelas</label>
                        <input type="text" class="form-control" name="kelas" placeholder="Masukkan nama kelas...">
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection