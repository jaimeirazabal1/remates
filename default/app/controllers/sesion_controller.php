<?php 
Load::models("sesion");
class SesionController extends AppController{

	public function inicio(){
        if (Input::hasPost("user","password")){
            $pwd = md5(Input::post("password"));
            $usuario= Input::post("user");
            $auth = new Auth("model", "class: sesion", "user: $usuario", "password: $pwd");
            if ($auth->authenticate()) {
                Router::toAction("dashboard");
            } else {
                Flash::error("Usuario o contraseña invalidos");
            }
        }		
	}
	public function nuevo_usuario(){
        if (Input::hasPost("sesion")){
        	$u = new Sesion(Input::post("sesion"));
           	$u->password = md5($u->password);
           	if ($u->save()) {
           		Flash::valid("Usuario creado");
           	}else{
           		Flash::error("Error");
           	}
        }			
	}
	public function dashboard(){
		
	}
}

 ?>