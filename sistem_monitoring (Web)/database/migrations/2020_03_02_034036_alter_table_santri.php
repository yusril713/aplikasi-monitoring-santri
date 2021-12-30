<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterTableSantri extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_santri', function (Blueprint $table) {
            $table->enum('jenis_kelamin', ['L', 'P'])->default('L');
            $table->string('agama', 20)->default('Islam');
            $table->string('ayah', 100);
            $table->string('ibu', 100);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tb_santri', function (Blueprint $table) {
        });
    }
}
