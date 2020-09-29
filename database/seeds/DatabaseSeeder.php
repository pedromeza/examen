<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
          $this->call(Genero::class);
          $this->call(EstadoCivil::class);
          $this->call(NivelInteres::class);
          $this->call(NivelInteresOpc::class);

    }
}
