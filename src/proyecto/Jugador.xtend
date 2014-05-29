package proyecto
import java.util.ArrayList			
import java.util.List
import observers.StubMensajero
import proyecto.Partido
import builders.CreadorNuevoJugadorBuilder



class Jugador {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia 
	@Property double contadorPartidos
//	@Property int nivelDePrioridad
	@Property TipoDeSuscripcion formaDeInscripcion
	@Property List<Infracciones> infracciones = new ArrayList
	@Property List<Jugador> amigos = new ArrayList(25)
	@Property String mail
	@Property StubMensajero mensajero
	@Property Jugador reemplazante
	@Property CreadorNuevoJugadorBuilder creadorJugador
	
	

	
	
	def prioridad() {
		this.formaDeInscripcion.prioridad()
	}

// Hay que modificar esto 

	def void darseDeBajaAPartido(Partido partido){
		 
		partido.darDeBajaJugador(this)
		partido.generarInfraccionParaInfractor(this) 
					
			
		}
		
	
	
	def void darseDeBajaAPartidoTeniendoReemplazante(Partido partido, Jugador reemplazante){
		
		partido.darDeBajaJugador(this)
		partido.inscribiSiPodesA(reemplazante)
	}
	
	
	
	def sancionateCon(Infracciones infraccion) {
		infracciones.add(infraccion)
	}
	
	def fuisteAnotadoAlPartido() {
		amigos.forEach[amigo| mensajero.mandaMail(amigo.mail, "Voy a jugar un partido")]
	}
	
	def proponerUnAmigoParaAgregarALaComunidad(Partido partido){
		var amigo = new Jugador
		
		creadorJugador.crearNuevoParticipante(amigo)
		
	}	
	
}
	
		

	
	
