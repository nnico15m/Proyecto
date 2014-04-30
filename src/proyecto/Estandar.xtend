package proyecto
import proyecto.Partido


class Estandar implements TipoSuscripcion2 {

	override inscribirSegunTipoDeSuscripcion(Partido partido, Jugador jugador){
		
			var String nombreDeClase = "Estandar"
		
		
		if(partido.quedaLugar() &&(nombreDeClase == jugador.estiloParaPartido) ){
			
		partido.participantes.add(jugador)
		
		} else {
			
		}
	}
	
	
	
		
	
	
	
}