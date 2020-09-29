<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

     const CREATED_AT = 'created_at';
     const UPDATED_AT = 'updated_at';
     protected $table = "users";
     protected $primaryKey = 'id';
    protected $fillable = [
        'name','apellido_paterno','apellido_materno','idgenero','edad','idestado_civil','email', 'password','idnivel_interes','idinteres_opc',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
}
