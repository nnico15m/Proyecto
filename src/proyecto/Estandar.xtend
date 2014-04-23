package proyecto
import java.util.List
import java.util.ArrayList

class Estandar implements TipoSuscripcion {
	

	
	
		
	def inscribirJugador (Jugador jugador,Partido partido){
		if(partido.participantes.lenght <10){
		partido.participantes.add(jugador)
		}
	}
	
	
}