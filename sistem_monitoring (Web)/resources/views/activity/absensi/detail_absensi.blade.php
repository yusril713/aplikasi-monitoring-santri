@extends('layouts.global')
@section('title') Presensi @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Presensi</h4>
            
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
                        <td>{{ $santri[0]->kelas }}</td>
                    </tr>
                    <tr>
                        <td>Semester/Tahun Ajaran </td>
                        <td>: </td>
                        <td>{{ $santri[0]->semester }} / {{ $santri[0]->tahun_ajaran }}</td>
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
                <form method="POST" action="{{ route('absensi.apply', [Crypt::encrypt($mapel->id)]) }}">
                    @csrf
                    <input type="hidden" name="kelas_id" value="{{ $santri[0]->kelas_id }}">
                    <input type="hidden" name="absensi_id" value="{{ $absensi_id }}">
                    <table class="table table-striped">
                        <thead>
                            <th>NIS</th>
                            <th>Nama</th>
                            <th>Hadir</th>
                            <th>Izin</th>
                            <th>Sakit</th>
                            <th>Tanpa Keterangan</th>
                        </thead>
                        <tbody>
                            @foreach ($santri as $row)
                                <input type="hidden" name="nis[]" value="{{ $row->santri_id }}">
                                <tr>
                                    <td>{{ $row->nis }}</td>
                                    <td>{{ $row->nama }}</td>
                                    <td align="center"><input type="radio" name="{{ $row->santri_id }}" value="H"></td>
                                    <td align="center"><input type="radio" name="{{ $row->santri_id }}" value="I"></td>
                                    <td align="center"><input type="radio" name="{{ $row->santri_id }}" value="S"></td>
                                    <td align="center"><input type="radio" name="{{ $row->santri_id }}" value="A"></td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">Apply</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection