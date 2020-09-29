<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

      Schema::create('CatGenero', function (Blueprint $table) {
          $table->increments('id');
          $table->string('name');
          $table->integer('status');
          $table->timestamps();

      });
      Schema::create('CatEstadoCivil', function (Blueprint $table) {
          $table->increments('id');
          $table->string('name');
          $table->integer('status');
          $table->timestamps();
      });
      Schema::create('CatNivelInteres', function (Blueprint $table) {
          $table->increments('id');
          $table->string('name');
          $table->integer('status');
          $table->timestamps();
      });
      Schema::create('CatNivelInteresOpc', function (Blueprint $table) {
          $table->increments('id');
          $table->string('name');
          $table->timestamps();
          $table->unsignedInteger('interesopc_id');
          $table->foreign('interesopc_id')->references('id')->on('CatNivelInteres');
          $table->integer('status');

      });

        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('apellido_paterno');
            $table->string('apellido_materno');
            $table->unsignedInteger('idgenero');
            $table->integer('edad');
            $table->unsignedInteger('idestado_civil');
            $table->string('email')->unique();
            $table->string('password');
            $table->unsignedInteger('idnivel_interes');
            $table->integer('idinteres_opc');
            $table->rememberToken();
            $table->timestamps();
            $table->foreign('idgenero')->references('id')->on('CatGenero');
            $table->foreign('idestado_civil')->references('id')->on('CatEstadoCivil');
            $table->foreign('idnivel_interes')->references('id')->on('CatNivelInteres');
            $table->foreign('idinteres_opc')->references('id')->on('CatNivelInteresOpc');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
      Schema::dropIfExists('CatGenero');
      Schema::dropIfExists('CatEstadoCivil');
      Schema::dropIfExists('CatNivelInteres');
        Schema::dropIfExists('CatNivelInteresOpc');
        Schema::dropIfExists('users');
    }
}
