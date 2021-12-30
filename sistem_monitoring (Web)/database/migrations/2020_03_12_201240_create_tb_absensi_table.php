<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbAbsensiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_absensi', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('semester_id');
            $table->unsignedBigInteger('kelas_id');
            $table->unsignedBigInteger('tanggal');

            $table->foreign('semester_id')->references('id')->on('tb_semester')->onDelete('cascade');
            $table->foreign('kelas_id')->references('id')->on('tb_kelas')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_absensi');
    }
}
