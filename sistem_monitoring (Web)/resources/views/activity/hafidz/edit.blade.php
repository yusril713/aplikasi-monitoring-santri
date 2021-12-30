@extends('layouts.global')
@section('title')Tambah Hafalan @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Data Hafalam</h4>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{ route('hafidz.update', [Crypt::encrypt($hafidz->id)]) }}" method="POST" autocomplete="off">
                    @csrf
                    @method('PUT')
                    <div class="form_group">
                        <label for="">No Induk</label>
                        <input type="text" name="nis" placeholder="Masukkan nama santri..." class="form-control" value="{{ $santri->nis }}" readonly>
                    </div>
                    <div class="form_group">
                        <label for="">Nama</label>
                        <input type="text" name="nama" placeholder="Masukkan nama santri..." class="form-control" value="{{ $santri->nama }}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="">Hafalan</label>
                        <textarea name="hafalan" id="hafalan" class="form-control" placeholder="Masukkan hafalan santri">{{ $hafidz->hafalan }}</textarea>
                    </div>
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    
</script>
@endsection