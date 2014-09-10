package uqbar.tpFutbol.inscripcion

import java.util.List
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.domain.Partido

interface TipoDeInscripcion {
	
	def abstract List<Jugador> participantes()
	def abstract Partido partido()
	
	def abstract void inscribiA(Jugador jugador)
	def abstract void darDeBajaJugador(Jugador jugador)
}