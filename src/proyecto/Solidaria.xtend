package proyecto


class Solidaria implements TipoSuscripcion2 {
	
	override  inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		var String nombreDeClase = "Solidaria"
		
		if(partido.hayLugarParaSolidario() && (nombreDeClase == jugador.estiloParaPartido)){
			
			partido.inscriptosSolidarios.add(jugador)
			
		}
		
		}
	}
	
	
