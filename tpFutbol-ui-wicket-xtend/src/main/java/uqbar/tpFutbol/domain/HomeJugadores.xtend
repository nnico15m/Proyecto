package uqbar.tpFutbol.domain


import org.uqbar.commons.model.CollectionBasedHome
import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.inscripcion.Estandar
import uqbar.tpFutbol.observers.StubMensajero

class HomeJugadores extends CollectionBasedHome<Jugador>{
	
	new() {
		this.init
	 }
	
	def void init() {
		
		
		var formaDeInsc = new Estandar()
		var mensajero = new StubMensajero()
		var infracciones = new ArrayList()
		var amigos = new ArrayList()
		var calificaciones = new ArrayList()
		var pendientesC = new ArrayList()
		var comunidad = new ComunidadFutbolera()
		var listaC= new ArrayList()
		this.create("epi","epielbostero",1990,formaDeInsc,infracciones,amigos,"jaun@hotmail.com", mensajero,calificaciones,pendientesC,comunidad,1,listaC,5,8)
		
		}


//USAR BUILDER!!!!

	def void create(String nombreJugador, String apodo, int fecha, TipoDeSuscripcion formaDeInsc, List<Infracciones> infracciones, List<Jugador> amigos,String mail, StubMensajero mensajero,List<Calificaciones> calificaciones, List<Jugador> pendientesDeCalificar, ComunidadFutbolera comunidad,int nivelDeJuego,ArrayList<Integer> listaCriterioDelJugador, int promedioCalificacionesUltPart, int promedioConVariosCriteriosAplicados
	) {
		var jugador = new Jugador
		jugador.nombreJugador = nombreJugador
		jugador.apodo = apodo
		jugador.fechaDeNacimiento = fecha
		jugador.formaDeInscripcion = formaDeInsc
		jugador.infracciones = new ArrayList<Infracciones>
		jugador.amigos = new ArrayList<Jugador>
		jugador.mail = mail
		jugador.mensajero = mensajero
		jugador.calificaciones = new ArrayList<Calificaciones>
		jugador.pendientesDeCalificar = new ArrayList<Jugador>
		jugador.comunidad = comunidad
		jugador.nivelDeJuego = nivelDeJuego
		jugador.listaCriterioDelJugador =new ArrayList<Integer>
		jugador.promedioCalificacionesUltPart = promedioCalificacionesUltPart
		jugador.promedioConVariosCriteriosAplicados = promedioConVariosCriteriosAplicados
		
		this.create(jugador)
	}
	// ********************************************************
	// ** Búsquedas
	// ********************************************************
	
		
	
	
		
	def search(String nombreJugador, String apodo, int fechaPedida) {
		allInstances.filter[jugador|this.match(nombreJugador, jugador.getNombreJugador) && this.match(apodo, jugador.getApodo) ].toList
	}
	
	def search(String nombreJugador, String apodo) {
		allInstances.filter[jugador|this.match(nombreJugador, jugador.getNombreJugador) && this.match(apodo, jugador.getApodo)].toList
	}
	
	def match(Object expectedValue, Object realValue) {
		if (expectedValue == null) {
			return true
		}
		if (realValue == null) {
			return false
		}
		realValue.toString().toLowerCase().contains(expectedValue.toString().toLowerCase())
	}
	
	def alguno(){
		allInstances.get(0)
	}

	override def getCriterio(Jugador example) {
		null
	}
	
	override createExample() {
		new Jugador
	}
	
	override getEntityType() {
		typeof (Jugador)
	}
	
	
	

}