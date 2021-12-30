<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbSppTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_spp', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('santri_id');
            $table->unsignedBigInteger('semester_id');
            $table->date('tanggal_bayar');
            $table->integer('jumlah_bayar');
            $table->enum('keterangan', ['LUNAS', 'BELUM LULNAS']);
            $table->timestamps();

            $table->foreign('santri_id')->references('id')->on('tb_santri')->onDelete('cascade');
            $table->foreign('semester_id')->references('id')->on('tb_semester')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_spp');
    }
}
