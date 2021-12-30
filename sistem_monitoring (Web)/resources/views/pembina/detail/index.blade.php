@extends('layouts.global')
@section('title')Data Mata Pelajaran @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Mata Pelajaran {{ $mapel->mata_pelajaran }}</h4>
            <div class="d-flex justify-content-end">
                <a href="{{ route('detail-pembina', [$mapel->id]) }}" class="btn btn-primary">Tambah</a>
            </div>  
            <hr>
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <th>Kelas</th>
                        <th>Pembina</th>
                        <th>Jadwal</th>
                        <th>Aksi</th>
                    </thead>
                    <tbody>
                        @foreach ($detail_pembina as $row)
                            <tr>
                                <td>{{ $row->kelas }}</td>
                                <td>{{ $row->nama }}</td>
                                <td>{{ $row->hari }} - {{ $row->jam}}</td>
                                <td><a href="">Edit</a></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection