@extends('layouts.global')
@section('title')Data Pembina @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Pembina</h4>
            <div class="d-flex justify-content-end">
                <a href="{{route('pembina.create')}}" class="btn btn-primary">Tambah</a>
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
                        <th>Nama</th>
                        <th>E-mail</th>
                        <th>Tempat/Tgl Lahir</th>
                        <th>Alamat</th>
                        <th>Kewarganegaraan</th>
                        <th>Aksi</th>
                    </thead>
                    @foreach($pembina as $row)
                        <tbody>
                            <tr>
                                <td>{{$row->nama}}</td>
                                <td>{{$row->email}}</td>
                                <td>{{$row->tempat_lahir}}/{{ $row->tanggal_lahir }}</td>
                                <td>{{ $row->alamat }}</td>
                                <td>{{ $row->kewarganegaraan }}</td>
                                <td>
                                    <center>
                                        <a href="{{ route('pembina.edit', [$row->id]) }}" class="btn btn-link-primary">Edit</a>
                                    </center>
                                    <form action="{{ route('pembina.destroy', [$row->id]) }}" onsubmit="return confirm('Are you sure to delete this data?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-link-primary">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    @endforeach
                    <tfoot>{{ $pembina->links() }}</tfoot>
                </table>
            </div>
            <hr>
        </div>
    </div>
</div> 
@endsection