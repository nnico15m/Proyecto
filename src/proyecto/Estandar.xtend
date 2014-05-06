package proyecto

class Estandar implements TipoDeSuscripcion {
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		if(partido.quedaLugar  && !(partido.participantes.contains(jugador))){
			
			
			partido.participantes.add(jugador)	
			
		}
		
		
	}
	
	
	def sosEstandar(TipoDeSuscripcion Estandar){
		
		true
		
		
		
	}
	
	
	
}