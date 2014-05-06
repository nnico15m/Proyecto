package proyecto

class Solidaria2 implements TipoDeSuscripcionn2 {
	
	override inscribirSegunTipoDeSuscripcion2(Partido2 partido2,Jugador2 jugador2){
		
		if((partido2.hayLugarParaSolidario) && !(partido2.inscriptosSolidarios.contains(jugador2))){
			
			
			partido2.inscriptosSolidarios.add(jugador2)
			
		}
		
		
		
	}
	
	}



	
