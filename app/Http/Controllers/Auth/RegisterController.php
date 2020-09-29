<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use App\CatGenero;
use Carbon\Carbon;
use DB;
use Response;
use Illuminate\Support\Facades\Auth;
use App\CatEstadoCivil;
use App\CatNivelInteres;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    public function showRegistrationForm( Request $request)
    {
      // Envia el valor de descripcion y el id para los selects con estatus 1 = activos
        $genero = CatGenero::where('status','=','1')->pluck('id','name');
        $CatEstado = CatEstadoCivil::where('status','=','1')->pluck('id','name');
        $CatNivelInteres = CatNivelInteres::where('status','=','1')->pluck('id','name');

          return view('auth.register', compact('genero','CatEstado','CatNivelInteres'));
    }

    public function getopc(Request $request, $id){

              $getopc = DB::table('CatNivelInteres')
              ->join('CatNivelInteresOpc','CatNivelInteresOpc.interesopc_id','=','CatNivelInteres.id')
              ->select('CatNivelInteres.id','CatNivelInteres.name','CatNivelInteresOpc.id','CatNivelInteresOpc.name')
              ->where('CatNivelInteresOpc.interesopc_id','=',$id)
              ->where('CatNivelInteresOpc.interesopc_id','=',$id)
              ->orderby('CatNivelInteres.id','asc')
              ->get();

              return response::json($getopc);
           }

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    // protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|regex:/^[\pL\s\-]+$/u|min:3|max:30',
            'paterno' => 'required|string|regex:/^[\pL\s\-\.]+$/u|min:3|max:40',
            'materno' => 'required|string|regex:/^[\pL\s\-\.]+$/u|min:3|max:40',
            'genero' => 'required|numeric|min:1',
            'edad' => 'required|numeric|min:1',
            'id_role' => 'required|numeric|min:1',
            'id_interes' => 'required|numeric|min:1',
            // 'id_opc' => 'numeric|min:1',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]  ,[

                 'name.min' => 'El campo nombre debe tener más de 3 caracteres.',
                 'name.max' => 'El campo nombre debe tener menos de 30 caracteres.',
                 'paterno.required' => 'El apellido paterno es requerido.',
                 'paterno.min' => 'El apellido paterno debe tener más de 3 caracteres.',
                 'paterno.max' => 'El apellido paterno debe tener menos de 40 caracteres.',
                 'paterno.string' => 'Solo se aceptan caracteres.',
                 'materno.min' => 'El apellido paterno debe tener más de 3 caracteres.',
                 'materno.max' => 'El apellido paterno debe tener menos de 40 caracteres.',
                 'materno.required' => 'El apellido materno es requerido',
                 'materno.string' => 'Solo se aceptan caracteres.',
                 'genero.required' => 'el genero es requerido.',
                 'edad.required' => 'la Edad es requerido.',
                 'id_role.required' => 'El Estado Civil requerido.',
                 'id_role.numeric' => 'Selecciona una de las opciones.',
                 'id_interes.required' => 'El Nivel Interes requerida.',
                 'id_interes.numeric' => 'Selecciona una de las opciones.',
                 'id_opc.numeric' => 'Selecciona una de las opciones.',
    		    ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'apellido_paterno' => $data['paterno'],
            'apellido_materno' => $data['materno'],
            'idgenero' => $data['genero'],
            'edad' => $data['edad'],
            'idestado_civil' => $data['id_role'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'idnivel_interes' => $data['id_interes'],
            'idinteres_opc' => $data['id_opc'],

        ]);
    }
}
