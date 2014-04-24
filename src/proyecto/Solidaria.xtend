package proyecto
import proyecto.Partido

class Solidaria implements TipoSuscripcion {
	def inscribirJugador (Jugador jugador,Partido partido){
		partido.inscriptosSolidarios.add(jugador)
		}
	}
	
	
