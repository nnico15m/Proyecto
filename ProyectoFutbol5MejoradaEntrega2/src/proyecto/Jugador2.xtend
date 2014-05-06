package proyecto



class Jugador2 {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia 
	@Property double contadorPartidos
	@Property int nivelDePrioridad
	@Property TipoDeSuscripcionn2 formaDeInscripcion
	@Property TipoDeSuscripcionn2 tipoDeSuscripcionn2
	
	def inscribirAjugador(Partido2 partido2){
		
		partido2.inscribimeApartido(this)
		
		
	}
	
	def ComoTeQueresInscribir(Partido2 partido2){
		
		
		this.tipoDeSuscripcionn2.inscribirSegunTipoDeSuscripcion2(partido2,this)
	

	}
	
	
		
		
	}
	
	
