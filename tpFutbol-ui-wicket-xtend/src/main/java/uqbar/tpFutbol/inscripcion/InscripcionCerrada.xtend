package uqbar.tpFutbol.inscripcion

import java.util.List
import java.util.ArrayList

import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.excepciones.LaInscripcionEstaCerradaException

class InscripcionCerrada implements TipoDeInscripcion{
	
	@Property List<Jugador> participantes = new ArrayList (10)
	@Property Partido partido
	
	override participantes() {
		this.getParticipantes()
	}
	
	override partido() {
		this.getPartido
	}
	
	new(Partido unPartido, List<Jugador> jugadores){
		this.setPartido(unPartido)
		this.setParticipantes(jugadores)
	}
	
	override inscribiA(Jugador jugador){
		throw new LaInscripcionEstaCerradaException
	}
	
	def quedaLugar() {
		this.cantParticipantes < 10
	}
	
	def cantParticipantes() { // mide la longitud de la lista de participantes
		this.participantes().length
	}
	
	def yaEstaAnotado(Jugador jugador) {
		this.participantes().contains(jugador)
	}
	
	override darDeBajaJugador(Jugador jugador) {
		throw new LaInscripcionEstaCerradaException
	}
	
}