package uqbar.tpFutbol.domain


import java.util.ArrayList
import java.util.List



import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.observers.StubMensajero
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import javax.persistence.Entity
import java.util.Date
import java.io.Serializable
import org.uqbar.commons.utils.Observable
import javax.persistence.Id
import javax.persistence.GeneratedValue
import javax.persistence.OneToMany
import javax.persistence.CascadeType
import javax.persistence.ManyToOne
import javax.persistence.Transient
import javax.persistence.Table
import javax.persistence.Column
import javax.persistence.ManyToMany
import javax.persistence.FetchType
import java.util.Set
import uqbar.tpFutbol.inscripcion.Inscripciones
import javax.persistence.JoinTable
import javax.persistence.JoinColumn
import uqbar.tpFutbol.dao.PartidosRepo
import uqbar.tpFutbol.dao.JugadoresRepo
import uqbar.tpFutbol.dao.SessionManager

@Entity
@Observable
@Table(name="jugadores") 
class Jugador implements Serializable {
	
//	@Property String nombreJugador
//	@Property String apodo
//	@Property int nivelDeJuego
//	@Property int promedioCalificacionesUltPart
//	@Property int promedioCalificaciones
//	@Property Date fechaDeNacimiento //HASTA QUE SEPAMOS USAR FECHAS...
	//@Property List<Jugador> amigos = new ArrayList(25)
//@Property List<Infracciones> infracciones = new ArrayList
	//@Property int cantPartidosJugados
	//@Property String mail
	//@Property List<Calificaciones> calificaciones = new ArrayList
	
	private Long id
	private String nombreJugador
	private String apodo
	private Date fechaDeNacimiento 
	private int nivelDeJuego
	private int promedioCalificaciones
	private int promedioCalificacionesUltPart
	private List<Infracciones> infracciones = new ArrayList
	private List<Jugador> amigos = new ArrayList(25)		
	private List<Calificaciones> calificaciones = new ArrayList
	private int cantPartidosJugados
	private String mail
	private int promedioConVariosCriteriosAplicados
	private ComunidadFutbolera comunidad
	

	
	
	//@Property TipoDeSuscripcion formaDeInscripcion
	//@Property StubMensajero mensajero
	//@Property List<Jugador> pendientesDeCalificar = new ArrayList
	//@Property ComunidadFutbolera comunidad
	//@Property ArrayList<Integer> listaCriterioDelJugador = new ArrayList<Integer>()
	//@Property int promedioConVariosCriteriosAplicados

 	private ArrayList<Integer> listaCriterioDelJugador = new ArrayList<Integer>()
 	private StubMensajero mensajero
	private List<Jugador> pendientes = new ArrayList
	private TipoDeSuscripcion formaDeInscripcion
	//private List<Jugador> equipo1
	//private List<Jugador> equipo2
	
		private List<Inscripciones> inscripcionesP = new ArrayList
	
	//private Partido partido
	//private Long partido_id
	

		
	
	@Id
	@GeneratedValue
	def getId() {
		id
	}

	def setId(Long value) {
		id = value
	}
	
	/** Constructor que necesita Hibernate */	
	new() {
		
	}
	@Column(name="nombre")
	def getNombreJugador() {
		nombreJugador
	}

	def void setNombreJugador(String value) {
		nombreJugador = value
	}	
	
	def getApodo() {
		apodo
	}

	def void setApodo(String value) {
		apodo = value
	}	
	//@Column(name="handicap")
	def getNivelDeJuego() {
		nivelDeJuego
	}

	def void setNivelDeJuego(int value) {
		nivelDeJuego = value
	}
	@Column(name="promedioultpart")
	def getPromedioCalificacionesUltPart() {
		promedioCalificacionesUltPart
	}

	def void setPromedioCalificacionesUltPart(int value) {
		promedioCalificacionesUltPart = value
	}
	@Column(name="promediocalif")
	def getPromedioCalificaciones() {
		promedioCalificaciones
	}
	
	def void setPromedioCalificaciones(int value) {
		promedioCalificaciones = value
	}
	
	def getFechaDeNacimiento() {
		fechaDeNacimiento
	}

	def void setFechaDeNacimiento(Date value) {
		fechaDeNacimiento = value
	}					
	
	 
	
	
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="jugador")
	def getInfracciones() {
		infracciones
	}

	def void setInfracciones(List<Infracciones> value) {
		infracciones = value
	}
	/* 
	@Transient 
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="amigos")
	def getAmigos() {
		amigos
	}

	def void setAmigos(List<Jugador> value) {
		amigos= value
	}
	*/
	
	
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="amigos")
	def getAmigos() {
		amigos
	}
	
	def void setAmigos(List<Jugador> value) {
		amigos= value
	}
	
	
	
	@Transient
	def getCantPartidosJugados() {
		cantPartidosJugados
	}

	def void setCantPartidosJugados(int value) {
		cantPartidosJugados = value
	}
	@Transient
	def getMail() {
		mail
	}

	def void setMail(String value) {
		mail = value
	}
	@Transient  
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="jugador")
	def getCalificaciones() {
		calificaciones
	}

	def void setCalificaciones(List<Calificaciones> value) {
		calificaciones = value
	}
	@Column(name="promediovarios")
	def getPromedioConVariosCriteriosAplicados() {
	promedioConVariosCriteriosAplicados
	}

	def void setPromedioConVariosCriteriosAplicados(int value) {
		promedioConVariosCriteriosAplicados = value
	}
	

	
	@Transient
	def getListaCriterioDelJugador(){
		listaCriterioDelJugador
	}
	
	def setListaCriterioDelJugador(ArrayList<Integer> c) {
		this.listaCriterioDelJugador = c
	}
	

	@Transient
	def getMensajero() {
		mensajero
	}

	def void setMensajero(StubMensajero value) {
		mensajero = value
	}
	 
	
	@ManyToOne
	@Transient
	def getFormaDeInscripcion() {
		formaDeInscripcion
	}

	def void setFormaDeInscripcion(TipoDeSuscripcion value) {
		formaDeInscripcion = value
	}

	//@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="pendientes")
	@Transient
	def getPendientes() {
	pendientes
	}

	def void setPendientes(List<Jugador> value) {
	pendientes = value
	} 
	 
	@Transient
	@ManyToOne
	def getComunidad(){ 
		comunidad
	}
	
	def setComunidad(ComunidadFutbolera c) {
		comunidad = c
	}
	/*
	@ManyToOne
	def getEquipo1(){ 
		comunidad
	}
	
	def setEquipo(List<Jugador> c) {
		equipo1 = c
	}
	
	@ManyToOne
	def getEquipo2(){ 
		comunidad
	}
	
	def setEquipo2(List<Jugador> c) {
		equipo2 = c
	}
	*/
	
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true, mappedBy="jugador")
	def getInscripcionesP(){
		inscripcionesP
	}
	
	def setInscripcionesP(List<Inscripciones>inscripciones) {
		this.inscripcionesP = inscripciones
	}
	
	

/* 	
	@ManyToOne
	def getPartido() {
		partido
	}
	
	
	
	def void setPartido(Partido value) {
		partido = value
	}
	
	@Column(name = "partido_id", insertable = false, updatable = false)
	def getPartido_id() {
		partido_id
	}

	def setPartido_id(Long value) {
		partido_id = value
	}
	
*/
	
	//new(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,int fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones>  calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador,  int m) {
//		
//	}
	
	
	

//USAR BUILDER!!!!


	
	def prioridad() {
		this.formaDeInscripcion.getPrioridad()
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
		pendientes.add(jug)
	}
	
	
	def generarUnaCalificacionParaEseJug(Jugador otroJug, int nota, String descripcion,int codPartidoJugado){
		this.pendientes.remove(otroJug)
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
		val ultimasNCalificaciones = calificaciones.subList((calificaciones.size - numeroPedido),calificaciones.size)
		val valor =(ultimasNCalificaciones.fold(0, [ acum, jugador | (acum + jugador.nota)]))
		if ((ultimasNCalificaciones.size) != 0) {
		 this.setPromedioCalificaciones(valor/(ultimasNCalificaciones.size))
		 
		 
		 
		 
		
				 
				
			}
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
		
	def setearPromedioObtenidoPruebaNPartidos(List<Calificaciones> listaCalificacionesAux) {
		val valor =(listaCalificacionesAux.fold(0, [ acum, jugador | (acum + jugador.nota)]))
		if ((listaCalificacionesAux.size) == 0) {
		 this.setPromedioCalificaciones(0)
		 
		 }
			else{
				this.setPromedioCalificaciones(valor) 
				
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

		!this.unJugEsImpar(partido)
	}
	

	def obtenerPosicion(Partido partido) {
		//partido.participantes.indexOf(this)
		partido.inscripcionesAuxOrd.indexOf(this)
	}
	
	
	
	def void ingresarElEquipo(Partido partido, int numero) {
		val jugEncontrado = new PartidosRepo().encontrarInscripto(partido,this)
		val inscripcion = new JugadoresRepo().actualizarEquipo(jugEncontrado,partido,numero)
		
		inscripcion.actualizateEnLaBase(numero)
		
	}
	
	
	
	
	def Jugador crearUnJugador(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,Date fechaDeNacimiento, List<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones>  calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador, int promedioConVariosCriteriosAplicados) {
		
		
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
		jugador.pendientes = pendientesDeCalificar
		jugador.comunidad = comunidad
		jugador.listaCriterioDelJugador = listaCriterioDelJugador
		jugador.promedioConVariosCriteriosAplicados = promedioConVariosCriteriosAplicados
			
		
	
		 
				
		
		
		
		return jugador
	}
	
}
