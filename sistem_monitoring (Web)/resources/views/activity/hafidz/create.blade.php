@extends('layouts.global')
@section('title')Tambah Hafalan @endsection
@section('content')
<div class="container">
    <style>
        * {
          box-sizing: border-box;
        }
        
        body {
          font: 16px Arial;  
        }
        
        /*the container must be positioned relative:*/
        .autocomplete {
          position: relative;
          display: inline-block;
        }
        
        input {
          border: 1px solid transparent;
          background-color: #f1f1f1;
          padding: 10px;
          font-size: 16px;
        }
        
        input[type=text] {
          background-color: #f1f1f1;
          width: 100%;
        }
        
        input[type=submit] {
          background-color: DodgerBlue;
          color: #fff;
          cursor: pointer;
        }
        
        .autocomplete-items {
          position: absolute;
          border: 1px solid #d4d4d4;
          border-bottom: none;
          border-top: none;
          z-index: 99;
          /*position the autocomplete items to be the same width as the container:*/
          top: 100%;
          left: 0;
          right: 0;
        }
        
        .autocomplete-items div {
          padding: 10px;
          cursor: pointer;
          background-color: #fff; 
          border-bottom: 1px solid #d4d4d4; 
        }
        
        /*when hovering an item:*/
        .autocomplete-items div:hover {
          background-color: #e9e9e9; 
        }
        
        /*when navigating through the items using the arrow keys:*/
        .autocomplete-active {
          background-color: DodgerBlue !important; 
          color: #ffffff; 
        }
        </style>
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="shadow p-3 mb-5 bg-white rounded">
                <h4>Data Hafalam</h4>
                <hr>
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form action="{{ route('hafidz.store') }}" method="POST" autocomplete="off">
                    @csrf
                    <div class="autocomplete col-md-12">
                        <label for="">Masukkan Nama Santri</label>
                        <input type="text" name="nis" id="nis_auto" placeholder="Masukkan nama santri..." class="form-control">
                    </div>
                    <div class="form-group" style="padding-top:20px">
                        <label for="">Hafalan</label>
                        <textarea name="hafalan" id="hafalan" class="form-control" placeholder="Masukkan hafalan santri"></textarea>
                    </div>
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    
</script>
@endsection