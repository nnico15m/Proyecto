package proyecto

class Condicional implements TipoSuscripcion{
	
	def inscribirJugador (Jugador jugador,Partido partido){
		partido.cunmpleConLaCondicion.inscriptos.add(jugador)
		}
}