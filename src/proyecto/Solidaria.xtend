package proyecto

import java.util.List
import proyecto.Partido

class Solidaria implements TipoDeSuscripcion {
	
	@Property int prioridad = 1
	
		override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		partido.inscribirAlPartido(jugador)	
		
		
		
	}


}


	
