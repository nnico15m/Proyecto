package observers

import proyecto.Partido
import proyecto.Jugador

interface NotificadorObserver {
	
	def void avisarPartidoConfirmado(Partido partido)
	
	def void avisarQueSeBajoUno(Partido partido, Jugador jugador)
	
	def void avisarALosAmigos(Partido partido, Jugador jugador)

}