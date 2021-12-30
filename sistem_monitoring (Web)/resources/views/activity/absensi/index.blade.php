@extends('layouts.global')
@section('title') Presensi @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Presensi</h4>
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
                        <th>Mata Pelajaran</th>
                        <th>Jadwal</th>
                        <th>Aksi</th>
                    </thead>
                    <tbody>
                        @foreach ($dp as $row)
                            <tr>
                                <td>{{ $row->kelas }}</td>
                                <td>{{ $row->mata_pelajaran }}</td>
                                <td>{{ $row->hari }} {{ $row->jam }}</td>
                                <td><a href="{{ route('absensi.presensi', ['id' => Crypt::encrypt($row->kelas_id), 'mapel' => Crypt::encrypt($row->mapel_id)]) }}" class="btn btn-link-primary">Pilih</a></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection