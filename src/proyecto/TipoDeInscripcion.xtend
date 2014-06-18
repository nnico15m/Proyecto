package proyecto

import java.util.List

interface TipoDeInscripcion {
	
	def abstract List<Jugador> participantes()
	def abstract Partido partido()
	
	def abstract void inscribiA(Jugador jugador)
	def abstract void darDeBajaJugador(Jugador jugador)
}