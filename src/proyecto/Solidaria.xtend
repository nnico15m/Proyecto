package proyecto

class Solidaria implements TipoSuscripcion {
	def inscribirJugador (Jugador jugador,Partido partido){
		partido.inscriptos.add(jugador)
		}
	}
	
	
