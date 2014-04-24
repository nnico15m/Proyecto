package proyecto
import java.util.List
import proyecto.Partido
import java.util.ArrayList

class Estandar implements TipoSuscripcion {
	

	
	
		
	def inscribirJugador (Jugador jugador,Partido partido){
		if(partido.participantes.length <10){
		partido.participantes.add(jugador)
		}
	}
	
	
}