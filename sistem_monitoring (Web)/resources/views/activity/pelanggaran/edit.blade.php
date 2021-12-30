@extends('layouts.global')
@section('title')Data Pelanggaran Santri @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Data Pelanggaran Santri</h4>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{ route('pelanggaran.update', [Crypt::encrypt($pelanggaran->id)]) }}" method="POST" autocomplete="off">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="">No induk</label>
                        <input type="text" name="nis" id="" placeholder="Masukkan nama santri..." class="form-control" value="{{ $santri->id }}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="">Nama Santri</label>
                        <input type="text" name="nis" id="" placeholder="Masukkan nama santri..." class="form-control" value="{{ $santri->nama }}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="">Pelanggaran</label>
                        <textarea name="pelanggaran" class="form-control" placeholder="Masukkan Pelanggaran santri">{{ $pelanggaran->pelanggaran     }}</textarea>
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