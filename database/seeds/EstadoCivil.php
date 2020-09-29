<?php

use Illuminate\Database\Seeder;

class EstadoCivil extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      \DB::table('CatEstadoCivil')->insert([
          'name' => 'Soltero',
          'status' => '1',
          ]);
      \DB::table('CatEstadoCivil')->insert([
          'name' => 'Casado',
          'status' => '1',
          ]);
      \DB::table('CatEstadoCivil')->insert([
          'name' => 'Divorciado',
          'status' => '1',
          ]);
    }
}
