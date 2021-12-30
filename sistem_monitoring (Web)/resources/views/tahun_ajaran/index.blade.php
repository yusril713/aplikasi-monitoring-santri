@extends('layouts.global')
@section('title')Data Tahun Ajaran @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Tahun Ajaran</h4>
            <div class="d-flex justify-content-end">
                <a href="{{route('tahun-ajaran.create')}}" class="btn btn-primary">Tambah</a>
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
                        @php
                            $no = 1;
                        @endphp
                        <th>No.</th>
                        <th>Tahun Ajaran</th>
                        <td>Aksi</td>
                    </thead>
                    <tbody>
                        @foreach ($ta as $row)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $row->tahun_ajaran }}</td>
                                <td><a href="{{ route('tahun-ajaran.edit', [$row->id]) }}" class="btn btn-link-primary">Edit</a></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection