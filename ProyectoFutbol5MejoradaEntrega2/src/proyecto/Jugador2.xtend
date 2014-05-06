package proyecto



class Jugador2 {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia 
	@Property double contadorPartidos
	@Property int nivelDePrioridad
	@Property TipoDeSuscripcionn2 formaDeInscripcion

	
	def inscribirsePartido(Partido2 partido2){
		
		if(partido2.comunidad.contains(this)){
			this.formaDeInscripcion.inscribirSegunTipoDeSuscripcion2(partido2,this)
		}
		
	}
	
		
}
	
	
