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
                <form action="{{route('tahun-ajaran.store')}}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="">Tahun Ajaran</label>
                        <input type="text" class="form-control" name="tahun_ajaran" placeholder="2019/2020">
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