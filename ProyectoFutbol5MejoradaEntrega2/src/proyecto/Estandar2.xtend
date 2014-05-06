package proyecto

class Estandar2 implements TipoDeSuscripcionn2 {
	
	override inscribirSegunTipoDeSuscripcion2(Partido2 partido2,Jugador2 jugador2){
		
		if(sosEstandar2(jugador2.formaDeInscripcion) && (partido2.quedaLugar)){
			
			
			partido2.participantes.add(jugador2)	
			
		}
		
		
	}
	
	
	def sosEstandar2(TipoDeSuscripcionn2 Estandar2){
		
		true
		
		
		
	}
	
	
	
}