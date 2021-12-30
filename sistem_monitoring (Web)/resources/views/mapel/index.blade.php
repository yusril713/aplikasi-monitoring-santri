@extends('layouts.global')
@section('title')Data Mata Pelajaran @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Mata Pelajaran</h4>
            <div class="d-flex justify-content-end">
                <a href="{{ route('mapel.create') }}" class="btn btn-primary">Tambah</a>
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
                        <th>Kode</th>
                        <th>Jenis</th>
                        <th>Mata Pelajaran</th>
                        <th>Aksi</th>
                    </thead>
                    @foreach ($mapel as $row)
                        <tbody>
                            <tr>
                                <td>{{ $row->kode_mapel }}</td>
                                <td>{{ ($row->jenis == 'rutin') ? 'Rutin' : 'Eksternal'}}</td>
                                <td>{{ $row->mata_pelajaran }}</td>
                                <td>
                                    <a href="{{ route('mapel.edit', [$row->id]) }}" class="btn btn-link-primary">Edit</a><br>
                                    <a href="{{ route('mapel.show', [$row->id]) }}" class="btn btn-link-primary">Detail Pelajaran</a>
                                    <form action="{{ route('mapel.destroy', [$row->id]) }}" method="post" onsubmit="return confirm('Are you sure to delete this data?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-link-primary">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
</div>
@endsection