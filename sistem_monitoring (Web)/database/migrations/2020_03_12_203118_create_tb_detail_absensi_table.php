<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbDetailAbsensiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_detail_absensi', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('absensi_id');
            $table->unsignedBigInteger('santri_id');
            $table->enum('keterangan', ['H', 'I', 'S', 'A']);

            $table->foreign('absensi_id')->references('id')->on('tb_absensi')->onDelete('cascade');
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
        Schema::dropIfExists('tb_detail_absensi');
    }
}
