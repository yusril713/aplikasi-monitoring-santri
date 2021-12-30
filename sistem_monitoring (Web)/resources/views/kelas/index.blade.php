@extends('layouts.global')
@section('title')Data Kelas @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Kelas</h4>
            <div class="d-flex justify-content-end">
                <a href="{{ route('kelas.create') }}" class="btn btn-primary">Tambah</a>
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
                        <th>Aksi</th>
                    </thead>
                    <tbody>
                        @foreach ($kelas as $row)
                            <tr>
                                <td>{{ $row->kelas }}</td>
                                <td>
                                    <a href="{{ route('kelas.edit', [$row->id]) }}">Tambah Santri</a>
                                    <a href="{{ route('kelas.show', [$row->id]) }}">Lihat Kelas</a>
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