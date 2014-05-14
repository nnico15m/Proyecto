package proyecto

class Solidaria implements TipoDeSuscripcion {
	
	@Property int prioridad = 1
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		partido.inscribirEstandarOSolidario(jugador)	
		
	}
	
	override prioridad() {
		this.prioridad()
	}


}


	
