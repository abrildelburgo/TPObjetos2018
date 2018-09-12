import hechiceria.*
import lucha.*

object armadura{
	var property duenio = rolando
	var property refuerzo = ninguno
	
	method aporte(){
		return 2 + refuerzo.valor(duenio)
	}
}

object cotaDeMalla{
	method valor(duenio) {
		return 1
	}
}

object bendicion{
	method valor(duenio){
		return duenio.nivelDeHechiceria()
	}
}

object hechizo{
	var property tipoDeHechizo = null
	
	method valor(duenio){
		return tipoDeHechizo.poder()
	}	
}

object ninguno{
	method valor(duenio){
		return 0
	}
}

// ESPEJO
object espejo{
	var property duenio = rolando 
	
	method aporte(){
		if(duenio.removerEspejos().isEmpty()){
			return 0
		}
		else{
			return duenio.maximoAporte()
		}
	}
}



