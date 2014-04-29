package proyecto
import proyecto.Partido


class Estandar implements TipoSuscripcion {

	override  inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
			var String nombreDeClase = "Estandar"
		
		
		if((partido.participantes.length <10) &&(nombreDeClase == jugador. estiloParaPartido) ){
		partido.participantes.add(jugador)
		}
	}
	
	
	
		
	
	
	
}