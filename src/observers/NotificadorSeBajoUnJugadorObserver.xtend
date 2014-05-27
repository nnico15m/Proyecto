package observers

import proyecto.Partido
import proyecto.Jugador

class NotificadorSeBajoUnJugadorObserver implements NotificadorObserver {
	
	@Property String mailAdministrador
	
	override avisarPartidoConfirmado(Partido partido) {}
	
	override avisarQueSeBajoUno(Partido partido, Jugador jugador) {
		
		
		
	}
	
	override avisarALosAmigos(Partido partido, Jugador jugador) {}
	
	
	
	
}