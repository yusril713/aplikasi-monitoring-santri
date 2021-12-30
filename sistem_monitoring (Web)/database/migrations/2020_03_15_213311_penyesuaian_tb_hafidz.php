<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PenyesuaianTbHafidz extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_hafidz', function (Blueprint $table) {
            $table->unsignedBigInteger('pembina_id')->after('santri_id');
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
        Schema::table('tb_hafidz', function (Blueprint $table) {
            //
        });
    }
}
