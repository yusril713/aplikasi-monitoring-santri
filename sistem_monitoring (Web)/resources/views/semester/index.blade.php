@extends('layouts.global')
@section('title')Data Semester @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Semester</h4>
            <div class="d-flex justify-content-end">
                <a href="{{route('semester.create')}}" class="btn btn-primary">Tambah</a>
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
                        <th>Semester</th>
                        <td>Aksi</td>
                    </thead>
                    <tbody>
                        @foreach ($ta as $row)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $row->tahun_ajaran }}</td>
                                <td>{{ $row->semester }}</td>
                                <td><a href="{{ route('semester.edit', [$row->id]) }}" class="btn btn-link-primary">Edit</a>
                                    <form action="{{ route('semester.destroy', [$row->id]) }}" method="post" onsubmit="return confirm('Are you sure to remove this data?')">
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