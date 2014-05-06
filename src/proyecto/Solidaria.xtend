package proyecto

class Solidaria implements TipoDeSuscripcion {
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		if((partido.hayLugarParaSolidario) && !(partido.inscriptosSolidarios.contains(jugador))){
			
			
			partido.inscriptosSolidarios.add(jugador)
			
		}
		
		
		
	}
	
	}



	
