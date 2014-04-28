package proyecto


class Solidaria implements TipoSuscripcion {
	override  inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		
		var String nombreDeClase = "Solidaria"
		
		if( nombreDeClase   == jugador.getestiloParaPartido){
			
			partido.getInscriptosSolidarios.add(jugador)
			
		}
		
		partido.getInscriptosSolidarios.add(jugador)
		}
	}
	
	
