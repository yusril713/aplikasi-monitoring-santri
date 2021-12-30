<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbDetailPembinaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_detail_pembina', function (Blueprint $table) {
            $table->unsignedBigInteger('kelas_id');
            $table->unsignedBigInteger('mapel_id');
            $table->unsignedBigInteger('pembina_id');
            $table->string('hari');
            $table->string('jam');
            $table->timestamps();

            $table->primary(['kelas_id', 'mapel_id', 'pembina_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_detail_pembina');
    }
}
