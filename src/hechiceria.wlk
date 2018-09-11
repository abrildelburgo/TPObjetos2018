object rolando{
	const property valorBase = 3
	var property hechizoPreferido = espectroMalefico
		
	method nivelDeHechiceria(){
		return valorBase*hechizoPreferido.poder()+fuerzaOscura.valor()
	}
	
	method seCreePoderoso() = hechizoPreferido.poderoso()
}

object espectroMalefico{
	var property nombre = "Espectro Malefico"
	
	method poder(){
		return nombre.size()
	}
	
	method poderoso() = self.poder()>15
}

object hechizoBasico{
	method poder(){   //es method o var?
		return 10    
	}
	
	method poderoso() = false
}

object fuerzaOscura{
	var property valor = 5
	
	method duplicarValor(){
		valor = valor*2
	}
}

object eclipse{
	method eclipsar(){
		fuerzaOscura.duplicarValor()
	}
}