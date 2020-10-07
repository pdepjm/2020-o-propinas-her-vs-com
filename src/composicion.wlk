class Cliente {
	var propina
	method cuantoPaga(costoBase) = costoBase + propina.monto(costoBase)
	method propina(propi){
		propina = propi
	} 
}

object comun {
	method monto(costoBase) = costoBase * 0.1
}
class Comedido { 
	var montoMaximo 
	method monto(costoBase) = montoMaximo.min(costoBase * 0.2)
}
object amarrete { 
	method monto(costoBase) = 0
}

// estatico, dinamico, codigo, instanciación

// comparar ambas cosas con los anteojos de la simplicidad y de la flexibilidad
// a.k.a cambiar de clase, multiple subclasificacion???? (el famoso "la herencia
// es un arma de un solo tiro"), 
// taxonomía, naturaleza, esencia vs compartir código
// si yo heredo estoy acoplado x

object abuelita {
	var property nieto 
}

object rasta {
	var property pollo
}

// ¡Reificar los criterios de propinas como objetos nos permite componerlos fácilmente!
object bipolar {
	method monto(costoBase) {
		const criterio = if (1.randomUpTo(10) > 5) comun else amarrete
		return criterio.monto(costoBase)
	}
}