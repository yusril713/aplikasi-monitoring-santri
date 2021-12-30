<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbPrestasiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_prestasi', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('santri_id');
            $table->string('hafalan');
            $table->timestamps();

            $table->foreign('santri_id')->references('id')->on('tb_santri')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_prestasi');
    }
}
