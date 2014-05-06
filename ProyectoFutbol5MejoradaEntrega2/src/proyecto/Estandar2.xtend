package proyecto

class Estandar2 implements TipoDeSuscripcionn2 {
	
	override inscribirSegunTipoDeSuscripcion2(Partido2 partido2,Jugador2 jugador2){
		
		if(partido2.quedaLugar  && !(partido2.participantes.contains(jugador2))){
			
			
			partido2.participantes.add(jugador2)	
			
		}
		
		
	}
	
	
	def sosEstandar2(TipoDeSuscripcionn2 Estandar2){
		
		true
		
		
		
	}
	
	
	
}