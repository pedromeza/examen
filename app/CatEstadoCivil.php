<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CatEstadoCivil extends Model
{
  const CREATED_AT = 'created_at';
const UPDATED_AT = 'updated_at';
protected $primaryKey = 'id';
protected $table = "CatEstadoCivil";
protected $fillable = ['name','status'];
}
