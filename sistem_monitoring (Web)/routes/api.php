<?php

use Illuminate\Http\Request;

Route::post('register', 'Api\RegisterController@action');
Route::post('login', 'Api\LoginController@login');
Route::get('get-user', 'Api\LoginController@getUser');
Route::get('info', 'Api\\InfoController@GetVisiMisi');

Route::get('get-data-santri/{id}', 'Api\\SantriController@GetData');
Route::put('santri/{id}/update', 'Api\\SantriController@update');
Route::get('prestasi/{id}', 'Api\\SantriController@GetPrestasi');
Route::get('hafalan/{id}', 'Api\\SantriController@GetHafalan');
Route::get('pelanggaran/{id}', 'Api\\SantriController@GetPelanggaran');

Route::get('pembina', 'Api\\PembinaController@GetDataPembina');

Route::get('get-mapel/{id}', 'Api\\AbsensiController@GetMapel');

Route::get('get-data', 'Api\LoginController@getdata');
