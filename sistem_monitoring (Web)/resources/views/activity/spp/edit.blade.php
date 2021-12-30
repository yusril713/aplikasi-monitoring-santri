@extends('layouts.global')
@section('title')Edit Data SPP @endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <center><h4>Data Sumbangan Pembinaan Pendidikan Tahun Ajaran {{ $ta->tahun_ajaran }}</h4></center>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{route('spp.simpan', [$spp_id])}}" method="POST" onsubmit="return confirm('Are you sure to save this payment?')">
                    @csrf
                    @method('PUT')
                    <input type="hidden" name="id" value="{{$spp->id}}">
                    <div class="form-group">
                        <label for="">No. Induk</label>
                        <input type="text" class="form-control" name="nis" placeholder="Masukkan no induk santri..." value="{{ $santri->nis }}">
                    </div>
                    <div class="form-group">
                        <label for="">Semester</label>
                        <select name="semester" class="form-control">
                    
                            <option value="">Pilih Semester</option>
                            @foreach ($semester as $row)
                                <option value="{{ $row->id }}" {{ ($spp->semester_id == $row->id) ? 'selected' : '' }}>{{ $row->semester }}</option>                                
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Tanggal Bayar</label>
                        <input type="date" class="form-control" name="tgl_bayar">
                    </div>
                    <div class="form-group">
                        <label for="">Jumlah Bayar</label>
                        <input type="text" name="jumlah_bayar" class="form-control" placeholder="Masukkan jumlah pembayaran..." value="{{ $spp->jumlah_bayar }}">
                    </div>
                    <div class="form-group">
                        <label for="">Keterangan</label>
                        <input type="text" class="form-control" name="keterangan" value="">
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