@extends('layouts.global')
@section('title')Data Kelas @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h5>Pembina: {{ (sizeof($kelas) > 0) ? $kelas[0]->nama_pembina : ''}}</h5>
            <h5>Jumlah Santri: {{ sizeof($kelas) }}</h5>  
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
                        <th>No Induk</th>
                        <th>Nama Santri</th>
                        <th>Tahun Ajaran</th>
                    </thead>
                    <tbody>
                        @foreach ($kelas as $row)
                            <tr>
                                <td>{{ $row->kelas }}</td>
                                <td>{{ $row->nis }}</td>
                                <td>{{ $row->nama }}</td>
                                <td>{{ $row->tahun_ajaran }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection