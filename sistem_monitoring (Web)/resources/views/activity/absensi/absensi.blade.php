@extends('layouts.global')
@section('title') Presensi @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Presensi</h4>
            <div class="d-flex justify-content-end">
                <form action="{{ route('absensi.add') }}" method="POST">
                    @csrf
                    <input type="hidden" name="kelas_id" value="{{ $kelas->id }}">
                    <input type="hidden" name="mapel_id" value="{{ $mapel->id }}">
                    <input type="hidden" name="semester_id" value="{{ $ta->id }}">
                    <button type="submit" class="btn btn-primary">Tambah</button>
                </form>
            </div>
            <div class="table-responsive">
                <table>
                    <tr>
                        <td>Mata Pelajaran </td>
                        <td>:</td>
                        <td>{{ $mapel->mata_pelajaran }}</td>
                    </tr>
                    <tr>
                        <td>Kelas </td>
                        <td>: </td>
                        <td>{{ $kelas->kelas }}</td>

                    </tr>
                    <tr>
                        <td>Semester/Tahun Ajaran </td>
                        <td>: </td>
                        <td>{{ $ta->semester }} / {{ $ta->tahun_ajaran }}</td>

                    </tr>
                    <tr>
                        <td>Pembina </td>
                        <td>: </td>
                        <td>{{ Auth::user()->name }}</td>
                    </tr>
                </table>
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
                        <th>Tanggal</th>
                        <th>Aksi</th>
                    </thead>
                    <tbody>
                        @foreach ($santri as $row)
                            <tr>
                                <td>{{ $row->tanggal }}</td>
                                <td>
                                    <a href="{{ route('absensi.edit', [Crypt::encrypt($row->id)]) }}"  class="btn btn-link-primary">Edit</a>
                                    <form action="{{ route('absensi.destroy', [$row->id]) }}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-link-primary">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection