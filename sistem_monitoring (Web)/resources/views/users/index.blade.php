@extends('layouts.global')
@section('title')Data Pengguna @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Pengguna</h4>
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
                        <th>Email/Username</th>
                        <th>Nama</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </thead>
                    <tbody>
                        @foreach ($users as $row)
                            <tr>
                                <td>{{ ($row->role_id == 0) ? $row->username : $row->email }}</td>
                                <td>{{ $row->name }}</td>
                                <td>{{ ($row->role_id == 0) ? 'Santri' : 'Pembina/Guru' }}</td>
                                <td><a href="{{ route('users.edit', [$row->id]) }}" class="btn btn-link-primary">Reset Password</a></td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection