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
//	@Property Jugador reemplazante	NO ES UN ATRIBUTO
	@Property List<Calificaciones> calificaciones = new ArrayList
	@Property List<Jugador> pendientesDeCalificar = new ArrayList
	@Property ComunidadFutbolera comunidad
	@Property int NivelDeJuego
	
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
	
	def sugerirMiembro(Jugador jugador){
		comunidad.sugerirMiembro(jugador)
	}
	

	def calificarYCriticarACadaJug(List<Jugador> jugadores){
		var listaAux = jugadores.filter[jugador|jugador != this]//UN JUGADOR NO DEBE CALIFICARSE A SI MISMO
		listaAux.forEach[jug|this.agregarALaListaDependientesDeCalificar(jug)]
			
	}
	
	def agregarALaListaDependientesDeCalificar(Jugador jug){
		pendientesDeCalificar.add(jug)
	}
	
	
	def generarUnaCalificacionParaEseJug(Jugador otroJug, int nota, String descripcion){
		this.pendientesDeCalificar.remove(otroJug)
		var nuevaCalificacion = new Calificaciones(nota,descripcion)
		otroJug.agregarCalificacion(nuevaCalificacion)
		
	}
	
	def agregarCalificacion(Calificaciones calificacion) {
		this.calificaciones.add(calificacion)
	}
	
	def sosDeLaComunidad(ComunidadFutbolera comunidad){
		this.setComunidad(comunidad)
	}
	
}
	
		

	
	
