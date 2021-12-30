@extends('layouts.global')
@section('title')Data Spp @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Spp</h4>
            <div class="d-flex justify-content-end">
                @if ($semester->status_spp == 'unimported')
                    <a href="{{route('spp.create')}}" class="btn btn-primary">Import Data Santri</a>
                @endif
                
            </div>  
            <hr>
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
            <div class="table-responsive">
                <table id="tb_spp" class="table table-striped">
                    <thead>
                        <th>No Induk</th>
                        <th>Nama Santri</th>
                        <th>Semester</th>
                        <th>Tahun Ajaran</th>
                        <th>Tanggal Bayar</th>
                        <th>Keterangan</th>
                        <th>Aksi</th>
                    </thead>
                    <tbody>
                        @foreach ($spp as $row)
                            <tr>
                                <td>{{ $row->nis }}</td>
                                <td>{{ $row->nama }}</td>
                                <td>{{ $row->semester }}</td>
                                <td>{{ $row->tahun_ajaran }}</td>
                                <td>{{ $row->tgl_bayar }}</td>
                                <td>{{ $row->keterangan }}</td>
                                <td>
                                    @if ($semester->status_spp == 'imported')
                                        <a href="{{ route('spp.edit', [$row->id]) }}" class="btn btn-link-primary">Edit</a></td>
                                    @endif
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection