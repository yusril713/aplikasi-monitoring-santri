@extends('layouts.global')
@section('title')Data Hafalan @endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Data Hafalan</h4>
            <div class="d-flex justify-content-end">
                <a href="{{ route('hafidz.create') }}" class="btn btn-primary">Tambah</a>
            </div>  
            <hr>
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <th>No. Induk</th>
                        <th>Nama</th>
                        <th>Hafalan</th>
                        <th>Aksi</th>
                    </thead>
                    <tbody>
                        @foreach ($santri->groupBy('santri_id') as $nis)
                            <tr>
                                <td rowspan="{{ count($nis)+1 }}">{{ $nis[0]['nis'] }}</td>
                                <td rowspan="{{ count($nis)+1 }}">{{ $nis[0]['nama'] }}</td>
                            </tr>
                            @php $no = 1; @endphp
                                @foreach ($nis as $row)
                                <tr>
                                    <td>{{ $no++ }}. {{ $row->hafalan }}</td>      
                                    <td><a href="{{ route('hafidz.edit', [Crypt::encrypt($row->id)]) }}" class="btn btn-primary" style="width=200px !important">Edit</a>
                                        <form action="{{ route('hafidz.destroy', [Crypt::encrypt($row->id)]) }}" method="post" onsubmit="return confirm('Are you sure want to delete the data?')">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger">Hapus</button>
                                        </form>
                                    </td>                              
                                </tr>
                                @endforeach
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection