<?php

use Illuminate\Database\Seeder;

class Genero extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      \DB::table('CatGenero')->insert([
          'name' => 'Masculino',
          'status' => '1',
          ]);
      \DB::table('CatGenero')->insert([
          'name' => 'Femenino',
          'status' => '1',
          ]);
      \DB::table('CatGenero')->insert([
          'name' => 'Otro',
          'status' => '1',
          ]);
    }
}
