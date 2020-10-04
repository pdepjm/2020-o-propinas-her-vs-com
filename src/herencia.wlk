class Cliente {
	method cuantoPaga(costoBase) = costoBase + self.montoPropina(costoBase) 
	method montoPropina(costoBase)
}

class ClienteComun inherits Cliente { 
	method montoPropina(costoBase) = costoBase * 0.1
}
class ClienteDeBolsillo inherits Cliente { 
	var valorBolsillo 
	method montoPropina(costoBase) = valorBolsillo.min(costoBase)
}
class ClienteAmarrete inherits Cliente {
	method montoPropina(costoBase) = 0
}






object abuelita {
	var property nieto 
}

object rasta {
	var property pollo
}