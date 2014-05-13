package proyecto



class Jugador {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia 
	@Property double contadorPartidos
	@Property int nivelDePrioridad
	@Property TipoDeSuscripcion formaDeInscripcion

	
	def inscribirsePartido(Partido partido){
		
		if(partido.comunidad.contains(this)){
			this.inscribiSiPodes(partido)
		}
		
	}
	
	def inscribiSiPodes(Partido partido){
		if (partido.noQuedaLugar) {
			}
			else{
			this.formaDeInscripcion.inscribirSegunTipoDeSuscripcion(partido,this)
		}
		}
	}
		

	
	
