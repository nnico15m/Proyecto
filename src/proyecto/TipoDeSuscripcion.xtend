package proyecto

interface TipoDeSuscripcion {
	
	def abstract void inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador)
	
	def abstract int prioridad()
	
}