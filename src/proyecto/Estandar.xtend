package proyecto
import java.util.List
import java.util.ArrayList

class Estandar implements TipoSuscripcion {
	

	
	
	List<Participantes> participantes = new ArrayList
	}
	
	new() {
		participantes = new ArrayList<Participantes>()
	}
	
	
	def inscribirJugador (Jugador jugador,Partido partido,){
		if(this.partido.participantes.lenght <10){
		this.partido.participantes.add(jugador)
		}
	}
	
	
}