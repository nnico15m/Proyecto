package proyecto


class Solidaria implements TipoSuscripcion {
	override  inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		
		var String nombreDeClase = "Solidaria"
		
		if( nombreDeClase   == jugador.estiloParaPartido){
			
			partido.getInscriptosSolidarios.add(jugador)
			
		}
		
		partido.inscriptosSolidarios.add(jugador)
		}
	}
	
	
