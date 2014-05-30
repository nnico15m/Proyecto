package proyecto

import java.util.List
import java.util.ArrayList

class ComunidadFutbolera {
	
	@Property List<Jugador> miembros = new ArrayList(25)
	@Property List<Jugador> pendientesDeAprobacion = new ArrayList(25)
	@Property List<Partido> partidos = new ArrayList(25)
	@Property List<NotaDeRechazo> rechazos = new ArrayList(25)
	
	def esDeLaComunidad(Jugador jugador){
		this.miembros.contains(jugador)
	}
	
	def sugerirMiembro(Jugador jugador){
		this.pendientesDeAprobacion.add(jugador)
	}
	
	def aprobarJugador(Jugador jugador){
		this.pendientesDeAprobacion.remove(jugador)
		this.agregarALaComunidad(jugador)
	}
	
	def agregarALaComunidad(Jugador jugador) {
		this.miembros.add(jugador)
	}
	
	def rechazarJugador(Jugador jugador, String motivo){
		this.pendientesDeAprobacion.remove(jugador)
		this.generarNotaDeRechazo(jugador, motivo)
	}
	
	def generarNotaDeRechazo(Jugador jugador, String motivo) {
		var nota = new NotaDeRechazo(jugador, motivo, new Fecha().fechaDeHoy)
		this.rechazos.add(nota)
	}
	
	def agregaPartido(Partido partido) {
		this.partidos.add(partido)
		partido.tuComunidadEs(this)
	}
	
}