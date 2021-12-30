@extends('layouts.global')
@section('title')Data Santri @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Santri</h4>
            <div class="d-flex justify-content-end">
                <a href="{{route('santri.create')}}" class="btn btn-primary">Tambah</a>
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
                        <th>NIS</th>
                        <th>Nama Lengkap</th>
                        <th>Tempat/Tgl Lahir</th>
                        <th>Alamat</th>
                        <th>Jenjang</th>
                        <th>Aksi</th>
                    </thead>
                    <tbody>
                        @foreach($santri as $row)
                            <tr>
                                <td>{{$row->nis}}</td>
                                <td>{{$row->nama}}</td>
                                <td>{{$row->tempat_lahir}}/{{$row->tanggal_lahir}}</td>
                                <td>{{$row->alamat}}</td>
                                <td>{{$row->j}}</td>
                                <td>
                                    <center>
                                    <a href="{{route('santri.edit', [$row->id])}}" class="btn btn-link-primary">Edit</a>
                                    </center>
                                    <form action="{{route('santri.destroy', [$row->id])}}" method="POST" onsubmit="return confirm('Are you  sure to delete this data?')">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-link-primary" onsubmit="return confirm('Are you sure to delete the data?');">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                    <tfoot></tfoot>
                </table>
                <div class="d-flex justify-content-center">
                    {{$santri->links()}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection