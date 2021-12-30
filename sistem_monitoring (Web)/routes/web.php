<?php

Route::get('/', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::resources([
    'santri' => 'SantriController',
    'pembina' => 'PembinaController',
    'mapel' => 'MapelController',
    'tahun-ajaran' => 'TahunAjaranController',
    'semester' => 'SemesterController',
    'spp' => 'SppController',
    'kelas' => 'KelasController',
    'absensi' => 'AbsensiController',
    'users' => 'UserController',
    'hafidz' => 'HafidzController',
    'prestasi' => 'PrestasiController',
    'pelanggaran' => 'PelanggaranController'
]);

Route::put('spp/{id}/simpan', 'SppController@Simpan')->name('spp.simpan');

Route::get('getAllNis', 'SantriController@GetAllNis');

Route::get('getDataAngkatan/{id}/{kelas_id}', 'KelasController@GetDataAngkatan');
Route::post('add-kelas', 'KelasController@PostKelas')->name('kelas.add-santri');

Route::get('detail-pembina/{id}/create', 'DetailPembinaController@CreateData')->name('detail-pembina');
Route::post('detail-pembina/store', 'DetailPembinaController@store')->name('detail-pembina.store');

Route::get('absensi/{id}/{mapel}', 'AbsensiController@presensi')->name('absensi.presensi');
Route::post('absemsi/add', 'AbsensiController@add')->name('absensi.add');
Route::post('absensi/{id}/apply', 'AbsensiController@apply')->name('absensi.apply');
Route::put('absensi/{id}/edit-absensi', 'AbsensiController@EditAbsensi')->name('absensi.edit_absensi');

Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return redirect()->route('home');
});
