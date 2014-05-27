package proyecto


class Condicional implements TipoDeSuscripcion{
	
	@Property int prioridad = 2
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		partido.inscribiSiPodesA(jugador)		
	}
	
	override prioridad() {
		this.getPrioridad
	}
			
} 
	
	
	
	
