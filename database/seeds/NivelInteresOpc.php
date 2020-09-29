<?php

use Illuminate\Database\Seeder;

class NivelInteresOpc extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      \DB::table('CatNivelInteresOpc')->insert([
          'name' => 'Lic. En Derecho',
          'interesopc_id' => '2',
          'status' => '1',
          ]);
      \DB::table('CatNivelInteresOpc')->insert([
          'name' => 'Lic. En Finanzas',
          'interesopc_id' => '2',
          'status' => '1',
          ]);
      \DB::table('CatNivelInteresOpc')->insert([
          'name' => 'Mtria. Admon. De Negocios',
          'interesopc_id' => '3',
          'status' => '1',
          ]);
      \DB::table('CatNivelInteresOpc')->insert([
          'name' => 'Mtria. Direccion de proyectos',
          'interesopc_id' => '3',
          'status' => '1',
          ]);

    }
}
