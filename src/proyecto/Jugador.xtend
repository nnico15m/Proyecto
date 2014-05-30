package proyecto
import java.util.ArrayList			
import java.util.List
import observers.StubMensajero
import proyecto.Partido
import proyecto.Calificaciones



class Jugador {
	
	@Property String nombreJugador
	@Property Fecha fechaDeNacimiento
//	@Property double nivelAdvertencia 
//	@Property double contadorPartidos
//	@Property int nivelDePrioridad
	@Property TipoDeSuscripcion formaDeInscripcion
	@Property List<Infracciones> infracciones = new ArrayList
	@Property List<Jugador> amigos = new ArrayList(25)
	@Property String mail
	@Property StubMensajero mensajero
	@Property Jugador reemplazante
	@Property List<Calificaciones> calificaciones = new ArrayList
	
	
	def prioridad() {
		this.formaDeInscripcion.prioridad()
	}

	def void darseDeBajaAPartido(Partido partido){
		
		partido.dameDeBaja(this)
		
		}
		
	def void darseDeBajaAPartidoTeniendoReemplazante(Partido partido, Jugador reemplazante){
		
		partido.reemplazameCon(this, reemplazante)
	}
	
	//POLÉMICO
	def reinscribite(TipoDeSuscripcion suscripcion){		
		this.formaDeInscripcion = suscripcion
	}
	
	def sancionateCon(Infracciones infraccion) {
		infracciones.add(infraccion)
	}
	
	def fuisteAnotadoAlPartido() {
		amigos.forEach[amigo| mensajero.mandaMail(amigo.mail, "Voy a jugar un partido")]
	}
	
	def agregaAmigo(Jugador jugador) {
		this.amigos.add(jugador)
	}
	

	def calificarYCriticarACadaJug(Partido partido){
		val listaAux = partido.participantes.filter[jugador|jugador != this]//UN JUGADOR NO DEBE CALIFICARSE A SI MISMO
		//listaAux.forEach[jug|this.generarUnaCalificacionParaEseJug(jug)]
			
	}
	
	def generarUnaCalificacionParaEseJug(Jugador otroJug, int nota, String descripcion){
		var nuevaCalificacion = new Calificaciones(nota,descripcion)
		otroJug.calificaciones.add(nuevaCalificacion)
		
	}
}
	
		

	
	
