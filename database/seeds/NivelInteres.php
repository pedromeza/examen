<?php

use Illuminate\Database\Seeder;

class NivelInteres extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      \DB::table('CatNivelInteres')->insert([
          'name' => 'Preparatoria',
          'status' => '1',
          ]);
      \DB::table('CatNivelInteres')->insert([
          'name' => 'Licenciatura',
          'status' => '1',
          ]);
      \DB::table('CatNivelInteres')->insert([
          'name' => 'Posgrado',
          'status' => '1',
          ]);
    }
}
