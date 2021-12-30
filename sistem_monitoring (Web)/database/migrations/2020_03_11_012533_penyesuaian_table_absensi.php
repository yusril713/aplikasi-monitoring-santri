<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PenyesuaianTableAbsensi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_absensi', function (Blueprint $table) {
            $table->unsignedBigInteger('semester_id')->after('santri_id');
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
        Schema::table('tb_absensi', function (Blueprint $table) {
            //
        });
    }
}
