@extends('layouts.app')

@section('content')
<div class="container">
    <div class="form-row">
        <div class="col-md-offset-1 col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading"> <strong>Registro</strong></div>

                <div class="panel-body">
                    <form class="form-group" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}
                      <div class="col-md-12">
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                          <label for="name" class=" control-label" style="text-align: left;">Nombre</label><br>

                          <input id="name" type="text" class="form-control" onkeypress="return soloLetras(event)" name="name" value="{{ old('name') }}" required autofocus>

                          @if ($errors->has('name'))
                              <span class="help-block">
                                  <strong>{{ $errors->first('name') }}</strong>
                              </span>
                          @endif

                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group{{ $errors->has('paterno') ? ' has-error' : '' }}">
                          <label for="paterno" class=" control-label" style="text-align: left;">Apellido Paterno</label><br>
                          <input id="paterno" type="text" class="form-control" onkeypress="return soloLetras(event)"  name="paterno" value="{{ old('paterno') }}" required autofocus>

                          @if ($errors->has('paterno'))
                              <span class="help-block">
                                  <strong>{{ $errors->first('paterno') }}</strong>
                              </span>
                          @endif

                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group {{ $errors->has('materno') ? ' has-error' : '' }}">
                          <label for="materno" class=" control-label" style="text-align: left;">Apellido Materno</label><br>
                          <input id="materno" type="text" class="form-control" onkeypress="return soloLetras(event)"  name="materno" value="{{ old('materno') }}" required autofocus>

                          @if ($errors->has('materno'))
                              <span class="help-block">
                                  <strong>{{ $errors->first('materno') }}</strong>
                              </span>
                          @endif

                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group {{ $errors->has('genero') ? ' has-error' : '' }}">
                          <label for="name" class=" control-label" style="text-align: left;">Género</label><br>
                          <select id="genero" name="genero" class="form-control" required autofocus>
                              <option>------Seleccionar------</option>
                            @foreach ($genero  as $key => $title)
                              <option value=" {{$title}}">{{ $key}}</option>
                            @endforeach
                          </select>
                          <span class="help-block"><p style="color:red;">{{$errors->first('genero')}}</p>  </span>

                          </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group {{ $errors->has('name') ? ' has-error' : '' }}">
                          <label for="edad" class=" control-label" style="text-align: left;">Edad</label><br>
                          <input id="edad" type="text" class="form-control" onkeypress="return Numeros(event)"  name="edad" value="{{ old('edad') }}" required autofocus>
                          <span class="help-block"><p style="color:red;">{{$errors->first('edad')}}</p>  </span>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group {{ $errors->has('id_role') ? ' has-error' : '' }}">
                          <label for="name" class=" control-label" style="text-align: left;">Estado Civil</label><br>
                          <select id="id_role" name="id_role" class="form-control" required autofocus>
                              <option>------Seleccionar------</option>
                            @foreach ($CatEstado  as $key => $name)
                              <option value=" {{$name}}">{{ $key}}</option>
                            @endforeach
                          </select>
                          <span class="help-block"><p style="color:red;">{{$errors->first('id_role')}}</p>  </span>

                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="control-label">E-Mail</label>
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>
                                <span class="help-block"><p style="color:red;">{{$errors->first('email')}}</p>  </span>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class=" control-label">Contraseña</label>
                                <input id="password" type="password" class="form-control" name="password" required>
                                <span class="help-block"><p style="color:red;">{{$errors->first('password')}}</p>  </span>
                            </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                            <label for="password-confirm" class=" control-label">Confirmar Contraseña</label>
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group {{ $errors->has('id_interes') ? ' has-error' : '' }}">
                          <label for="name" class=" control-label" style="text-align: left;">Nivel Interes</label><br>
                          <select id="id_interes" name="id_interes" class="form-control" required autofocus>
                              <option>------Selecciona------</option>
                            @foreach ($CatNivelInteres  as $key => $name)
                              <option value="{{$name}}">{{ $key}}</option>
                            @endforeach
                          </select>
                          <span class="help-block"><p style="color:red;">{{$errors->first('id_interes')}}</p>  </span>

                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group {{ $errors->has('id_opc') ? ' has-error' : '' }}">
                          <label for="name" class=" control-label" style="text-align: left;">Estado Civil</label><br>
                          <select id="id_opc" name="id_opc" class="form-control" required autofocus>
                              <option value ='0'>------Selecciona------</option>
                          </select>
                          <span class="help-block"><p style="color:red;">{{$errors->first('id_opc')}}</p>  </span>

                        </div>
                      </div>

                        <div class="col-md-12 ">
                          <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">
                                Registrar
                            </button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
<script src="{{ asset('js/jquery.js') }}"></script>
<script src="{{ asset('js/escuela.js') }}"></script>
