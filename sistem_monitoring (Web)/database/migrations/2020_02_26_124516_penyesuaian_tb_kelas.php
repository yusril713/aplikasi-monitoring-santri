<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PenyesuaianTbKelas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_kelas', function (Blueprint $table) {
            $table->unsignedBigInteger('santri_id')->after('semester_id');
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
        Schema::table('tb_kelas', function (Blueprint $table) {
            $table->dropColumn('santri_id');
        });
    }
}
