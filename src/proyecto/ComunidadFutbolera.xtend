package proyecto

import java.util.List
import java.util.ArrayList

class ComunidadFutbolera {
	
	@Property List<Jugador> miembros = new ArrayList(25)
	@Property List<Partido> partidos = new ArrayList(25)
	@Property Administrador admin
	
	def esDeLaComunidad(Jugador jugador){
		this.miembros.contains(jugador)
	}
	
	def void sugerirMiembro(Jugador jugador){
		admin.sugerirMiembro(jugador)
	}
	
	def agregarALaComunidad(Jugador jugador) {
		this.miembros.add(jugador)
		jugador.sosDeLaComunidad(this)
	}
	
	def agregaPartido(Partido partido) {
		this.partidos.add(partido)
		partido.tuComunidadEs(this)
	}
	
}