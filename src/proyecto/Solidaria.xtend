package proyecto


class Solidaria implements TipoSuscripcion {
	override  inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		partido.getInscriptosSolidarios.add(jugador)
		}
	}
	
	
