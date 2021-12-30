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
                        <td>{{ $absensi->mata_pelajaran }}</td>
                    </tr>
                    <tr>
                        <td>Kelas </td>
                        <td>: </td>
                        <td>{{ $absensi->kelas }}</td>
                    </tr>
                    <tr>
                        <td>Semester/Tahun Ajaran </td>
                        <td>: </td>
                        <td>{{ $absensi->semester }} / {{ $absensi->tahun_ajaran }}</td>
                    </tr>
                    <tr>
                        <td>Pembina </td>
                        <td>: </td>
                        <td>{{ $absensi->nama }}</td>
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
                <form method="POST" action="{{ route('absensi.edit_absensi', [Crypt::encrypt($absensi->id)]) }}">
                    @csrf
                    @method('PUT')
                    <input type="hidden" name="kelas_id" value="{{ $absensi->kelas_id }}">
                    <input type="hidden" name="absensi_id" value="{{ $absensi->id }}">
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
                            @foreach ($detail_absensi as $row)
                                <input type="hidden" name="nis[]" value="{{ $row->santri_id }}">
                                <tr>
                                    <td>{{ $row->nis }}</td>
                                    <td>{{ $row->nama }}</td>
                                    <td align="center"><input type="radio" name="{{ $row->santri_id }}" value="H" {{ ($row->keterangan == 'H') ? 'checked' :'' }}></td>
                                    <td align="center"><input type="radio" name="{{ $row->santri_id }}" value="I" {{ ($row->keterangan == 'I') ? 'checked' :'' }}></td>
                                    <td align="center"><input type="radio" name="{{ $row->santri_id }}" value="S" {{ ($row->keterangan == 'S') ? 'checked' :'' }}></td>
                                    <td align="center"><input type="radio" name="{{ $row->santri_id }}" value="A" {{ ($row->keterangan == 'A') ? 'checked' :'' }}></td>
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