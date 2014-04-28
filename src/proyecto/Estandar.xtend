package proyecto
import proyecto.Partido


class Estandar implements TipoSuscripcion {
	

	
	
		
	def inscribirJugador (Jugador jugador,Partido partido){
		if(partido.participantes.length <10){
		partido.participantes.add(jugador)
		}
	}
	
	
}