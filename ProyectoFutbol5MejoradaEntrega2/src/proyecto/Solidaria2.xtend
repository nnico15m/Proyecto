package proyecto

class Solidaria2 implements TipoDeSuscripcionn2 {
	
	override inscribirSegunTipoDeSuscripcion2(Partido2 partido2,Jugador2 jugador2){
		
		if(sosSolidario(jugador2.formaDeInscripcion) && (partido2.hayLugarParaSolidario)){
			
			
			partido2.inscriptosSolidarios.add(jugador2)
			
		}
		
		
		
	}
	
	



	def sosSolidario(TipoDeSuscripcionn2 Solidaria2){
	
		true
		
	
	
	}

}