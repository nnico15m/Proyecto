package proyecto



class Jugador {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia 
	@Property double contadorPartidos
//	@Property int nivelDePrioridad
	@Property TipoDeSuscripcion formaDeInscripcion

	
	def trataDeInscribirteAlPartido(Partido partido){
		this.formaDeInscripcion.inscribirSegunTipoDeSuscripcion(partido,this)
	}
	
	def prioridad() {
		this.formaDeInscripcion.prioridad()
	}

def darseDeBajaAPartido(Partido partido){
		 
		var Jugador reemplazante 
		
		if(reemplazante != null){
			
			partido.darDeBajaJugador(this)
			partido.inscribiSiPodesA(reemplazante) 
			// reemplazante dar aviso que se anoto a sus amigos observer
			
		}else{
			
			// partido.darAvisoAlAdministrador() observer
			partido.darDeBajaJugador(this)
			partido.generarInfraccionParaInfractor(this)
			
			
			
		}
		
	}

}
	
		

	
	
