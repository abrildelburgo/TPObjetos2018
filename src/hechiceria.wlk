import lucha.*

object rolando{
	const property valorBaseHechiceria = 3
	var property hechizoPreferido = espectroMalefico
	var property valorBaseLucha = 1 // es diferente del valorbasehechiceria?
	var property artefactos = [espadaDelDestino, collarDivino, mascaraOscura]
		
	method nivelDeHechiceria(){
		return valorBaseHechiceria*hechizoPreferido.poder()+fuerzaOscura.valor()
	}
	
	method seCreePoderoso() = hechizoPreferido.poderoso()
	
	method agregarArtefacto(unArtefacto){
		artefactos.add(unArtefacto)
	}
	
	method removerArtefacto(unArtefacto){
		artefactos.remove(unArtefacto)
	}
	
	method valorDeLucha(){
		return valorBaseLucha + self.aporteDeArtefactos()
	}
	
	method aporteDeArtefactos(){
		return artefactos.map({artefacto => artefacto.aporte()}).sum()
	}
	
	method mayorLuchaQueHechiceria() = self.valorDeLucha() > self.nivelDeHechiceria()
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

