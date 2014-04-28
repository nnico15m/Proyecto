package proyecto
import proyecto.Partido


class Estandar implements TipoSuscripcion {

	override  inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		if(partido.participantes.length <10){
		partido.participantes.add(jugador)
		}
	}
	
	
	
		
	
	
	
}