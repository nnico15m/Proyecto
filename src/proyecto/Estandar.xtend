package proyecto





class Estandar implements TipoDeSuscripcion {
	
	@Property int prioridad = 0
	
	
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		partido.inscribirAlPartido(jugador)	
				}
	
		
	}
	
	
