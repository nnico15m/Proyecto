package proyecto

class Estandar implements TipoDeSuscripcion {
	
	@Property int prioridad = 0
	
	
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		partido.inscribiSiPodesA(jugador)	
	}
	
	override prioridad() {
		this.getPrioridad
	}
	
		
}
	
	
//AHORA EL MESNSAJE ES POLIMORFICO A LAS 3 CLASES, LO NICO QUE VARIA ES LA PRIORIDAD. QUIZAS SE PODRIA REDUCIR MAS PARA NO REPETIR CODIGO