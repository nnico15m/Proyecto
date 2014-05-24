package proyecto
import java.util.ArrayList			
import java.util.List


class Jugador {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia 
	@Property double contadorPartidos
//	@Property int nivelDePrioridad
	@Property TipoDeSuscripcion formaDeInscripcion
	@Property List<Infracciones> infracciones = new ArrayList
	@Property List<Jugador> amigos = new ArrayList(25)
	@Property String mail
	
	

	
	def trataDeInscribirteAlPartido(Partido partido){
		this.formaDeInscripcion.inscribirSegunTipoDeSuscripcion(partido,this)
	}
	
	def prioridad() {
		this.formaDeInscripcion.prioridad()
	}

def void darseDeBajaAPartido(Partido partido){
		 
		var Jugador reemplazante 
		
		if(reemplazante != null){
			
			partido.darDeBajaJugador(this)
			partido.inscribiSiPodesA(reemplazante) 
			// reemplazante dar aviso que se anoto a sus amigos observer
			
		}else{
			
			partido.darAvisoAlAdministrador()
			partido.darDeBajaJugador(this)
			partido.generarInfraccionParaInfractor(this)
			
			
			
		}
		
	}
def sancionateCon(Infracciones infraccion) {
		infracciones.add(infraccion)
	}
}
	
		

	
	
