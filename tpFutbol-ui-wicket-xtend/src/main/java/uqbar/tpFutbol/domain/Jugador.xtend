package uqbar.tpFutbol.domain


import java.util.ArrayList
import java.util.List



import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.observers.StubMensajero
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import org.uqbar.commons.model.Entity
import uqbar.tpFutbol.inscripcion.Estandar
import uqbar.tpFutbol.excepciones.LaInscripcionEstaCerradaException
import java.util.Date

class Jugador extends Entity {
	
	@Property String nombreJugador
	@Property String apodo
	@Property int nivelDeJuego
	@Property int promedioCalificacionesUltPart
	@Property int promedioCalificaciones
	@Property Date fechaDeNacimiento //HASTA QUE SEPAMOS USAR FECHAS...
	@Property List<Jugador> amigos = new ArrayList(25)
	@Property List<Infracciones> infracciones = new ArrayList
	@Property int cantPartidosJugados
	@Property TipoDeSuscripcion formaDeInscripcion
	@Property String mail
	@Property StubMensajero mensajero
	@Property List<Calificaciones> calificaciones = new ArrayList
	@Property List<Jugador> pendientesDeCalificar = new ArrayList
	@Property ComunidadFutbolera comunidad
	@Property ArrayList<Integer> listaCriterioDelJugador = new ArrayList<Integer>()
	@Property int promedioConVariosCriteriosAplicados
	

		
	
	
	
	
	
	
	
	
	//new(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,int fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones>  calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador,  int m) {
//		
//	}
	
	
	

//USAR BUILDER!!!!


	
	def prioridad() {
		this.formaDeInscripcion.prioridad()
	}
	
	// AHORA TENEMOS QUE INSCRIBIRNOS POR AC�
	def inscribiteA(Partido partido){
		partido.inscribiSiPodesA(this)
	}

	def void darseDeBajaAPartido(Partido partido){
		
		partido.dameDeBaja(this)
		
		}
		
	def void darseDeBajaAPartidoTeniendoReemplazante(Partido partido, Jugador reemplazante){
		
		partido.reemplazameCon(this, reemplazante)
	}
	
	//POL�MICO
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
	
	
	def generarUnaCalificacionParaEseJug(Jugador otroJug, int nota, String descripcion,int codPartidoJugado){
		this.pendientesDeCalificar.remove(otroJug)
		var nuevaCalificacion = new Calificaciones(codPartidoJugado,nota,descripcion)
		otroJug.agregarCalificacion(nuevaCalificacion)
		
	}
	
	def agregarCalificacion(Calificaciones calificacion) {
		this.calificaciones.add(calificacion)
	}
	
	def sosDeLaComunidad(ComunidadFutbolera comunidad){
		this.setComunidad(comunidad)
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
														//Entrega 4//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////							

	
	def promedioDeCalificacionesUltimoPartido(Partido partidoAOrganizar){
		val codUltimoPartidoJugado = (partidoAOrganizar.getCodPartido() ) - 1
		val listaCalificacionesAux = calificaciones.filter[codPartidoJugado == codUltimoPartidoJugado - 1].toList
		setearPromedioObtenido(listaCalificacionesAux)
	
			
	}
	
	def promedioDeCalificacionesUltimoPartidoPrueba(Partido partidoAOrganizar){
		val codUltimoPartidoJugado = (partidoAOrganizar.getCodPartido()) - 1
		val listaCalificacionesAux = calificaciones.filter[codPartidoJugado == codUltimoPartidoJugado].toList
		setearPromedioObtenidoPrueba(listaCalificacionesAux)
	
			
	}
		

	def promedioDeUltimasNCalificacionesPedidas(Partido partidoAOrganizar,int numeroPedido){
		val ultimasNCalificaciones = calificaciones.subList(calificaciones.size - numeroPedido ,calificaciones.size)
		setearPromedioObtenido(ultimasNCalificaciones)
	
	}
	
		def promedioDeUltimasNCalificacionesPedidasPrueba(Partido partidoAOrganizar,int numeroPedido){
		val ultimasNCalificaciones = calificaciones.subList(calificaciones.size - numeroPedido ,calificaciones.size)
		setearPromedioObtenidoPrueba(ultimasNCalificaciones)
	
	}
	
	
	def setearPromedioObtenido(List<Calificaciones> listaCalificacionesAux) {
		val promedioObtenido = listaCalificacionesAux.fold (0, [ acum, jugador | (acum + jugador.nota)])/(listaCalificacionesAux.size)
		this.setPromedioCalificacionesUltPart(promedioObtenido)
		return promedioObtenido
	}
	
	def setearPromedioObtenidoPrueba(List<Calificaciones> listaCalificacionesAux) {
		val valor =(listaCalificacionesAux.fold(0, [ acum, jugador | (acum + jugador.nota)]))
		if ((listaCalificacionesAux.size) == 0) {
		 this.setPromedioCalificacionesUltPart(0)
		 
		 }
			else{
				this.setPromedioCalificacionesUltPart(valor) 
				
			}
		}
		
		
		
		
	
	
	
	
	def int valorPromedioDeVariosCriterios(Partido partidoAOrganizar,List<OrganizadorCommand> listaCriterios,int n){
		
		val numeroObtenido = listaCriterios.fold(0,[acum,criterio|(acum + criterio.obtenerValor(partidoAOrganizar,this, n))])/(listaCriterios.size)
		this.setPromedioConVariosCriteriosAplicados(numeroObtenido)
		return numeroObtenido
	
	}
	
 	def unJugEsImpar(Partido partido){
		val posicionJug = obtenerPosicion(partido)
		(posicionJug % 2) == 1
	}
	
	def unJugEsPar(Partido partido){
/*		val posicionJug = obtenerPosicion(partido)
		(posicionJug % 2) == 0
		*/
		!this.unJugEsImpar(partido)
	}
	
		
/*	def esDeLaPosicion14589(Partido partido){
		val posicionJug = obtenerPosicion(partido)
		val DividirEquiposCommand criterioOrd = new DividirPorPosicion14589
		criterioOrd.es14589(posicionJug)
	}
	
	def esDeLaPosicion236710(Partido partido){
		val posicionJug = obtenerPosicion(partido)
		val DividirEquiposCommand criterioOrd = new DividirPorPosicion14589
		criterioOrd.es236710(posicionJug)
	}
*/	
	def obtenerPosicion(Partido partido) {
		partido.participantes.indexOf(this)
	}
	
	
	
	def Jugador crearUnJugador(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,Date fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones>  calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador, int promedioConVariosCriteriosAplicados) {
		
		
		var jugador = new Jugador
		
		jugador.nombreJugador = nombreJugador
		jugador.apodo = apodo
		jugador.nivelDeJuego = nivelDeJuego
		jugador.promedioCalificacionesUltPart = promedioCalificacionesUltPart
		jugador.promedioCalificaciones = promedioCalificaciones
		jugador.fechaDeNacimiento = fechaDeNacimiento
		jugador.amigos = amigos
		jugador.infracciones = infracciones
		jugador.cantPartidosJugados = cantPartidosJugados
		jugador.formaDeInscripcion= formaDeInscripcion
		jugador.mail = mail
		jugador.mensajero = mensajero
		jugador.calificaciones = calificaciones
		jugador.pendientesDeCalificar = pendientesDeCalificar
		jugador.comunidad = comunidad
		jugador.listaCriterioDelJugador = listaCriterioDelJugador
		jugador.promedioConVariosCriteriosAplicados = promedioConVariosCriteriosAplicados
			
		
	
		 
				
		
		
		
		return jugador
	}
	
}
