<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbKelasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_kelas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('tahun_ajaran_id');
            $table->unsignedBigInteger('semester_id');
            $table->string('kelas');
            $table->timestamps();

            $table->foreign('tahun_ajaran_id')->references('id')->on('tb_tahun_ajaran')->onDelete('cascade');
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
        Schema::dropIfExists('tb_kelas');
    }
}
