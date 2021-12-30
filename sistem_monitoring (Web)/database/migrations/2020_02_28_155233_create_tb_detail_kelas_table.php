<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbDetailKelasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_detail_kelas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('kelas_id');
            $table->unsignedBigInteger('semester_id');
            $table->unsignedBigInteger('santri_id');
            $table->unsignedBigInteger('pembina_id');
            $table->timestamps();

            $table->foreign('kelas_id')->references('id')->on('tb_kelas')->onDelete('cascade');
            $table->foreign('semester_id')->references('id')->on('tb_semester')->onDelete('cascade');
            $table->foreign('santri_id')->references('id')->on('tb_santri')->onDelete('cascade');
            $table->foreign('pembina_id')->references('id')->on('tb_pembina')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_detail_kelas');
    }
}
