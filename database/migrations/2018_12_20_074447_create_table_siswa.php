<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableSiswa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_kelas', function (Blueprint $table) {
            $table->integer('nis')->primary();
            $table->string('nama_lengkap', 100);
            $table->string('jenis_kelamin', 1);
            $table->text('alamat');
            $table->string('no_telp');
            $table->integer('id_kelas');
            $table->timestamp();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_siswa');
    }
}