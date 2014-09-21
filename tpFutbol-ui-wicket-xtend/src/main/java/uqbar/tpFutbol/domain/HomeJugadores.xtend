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
		
		
		
		var infracciones = new ArrayList()
		var amigosEpi = new ArrayList()
		var formaDeInsc = new Estandar()
		var mensajero = new StubMensajero()
		var calificaciones = new ArrayList()
		var pendientesC = new ArrayList()
		var listaC= new ArrayList()
		var comunidad = new ComunidadFutbolera()
		this.create("epi","epielbostero",1,5,5,1995,amigosEpi,infracciones,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
		this.create("p2","p2",6,1,5,1996,amigosEpi,infracciones,6,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,2)
		this.create("p3","p3",3,8,5,1998,amigosEpi,infracciones,9,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,1)
		this.create("p4","p4",55,9,5,1991,amigosEpi,infracciones,12,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,2)
		this.create("p5","p5",3,3,5,1990,amigosEpi,infracciones,22,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,6)
		this.create("p6","p6",0,0,5,1990,amigosEpi,infracciones,1,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,2)
		//this.create("p7","p7",3,11,5,1990,amigosEpi,infracciones,0,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0
		//this.create("p8","p8",30,22,5,1990,amigosEpi,infracciones,9,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,1)
		//this.create("p9","p9",51,7,5,1990,amigosEpi,infracciones,4,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,4)
		//this.create("p10","p10",12,7,5,1990,amigosEpi,infracciones,4,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,5)
		}


//USAR BUILDER!!!!

	def void create(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,int fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones>  calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador, int promedioConVariosCriteriosAplicados) {
		
		
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
			
		
	
		 
				
		
		
		
		this.create(jugador)
	}
	
	def Jugador create2(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,int fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones>  calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador, int promedioConVariosCriteriosAplicados) {
		
		
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
	// ********************************************************
	// ** Búsquedas
	// ********************************************************
	
		
	
	
		
	def search(String nombreJugador, String apodo, int fechaPedida) {
		allInstances.filter[jugador|this.empiezaCon(nombreJugador, jugador.getNombreJugador) && this.contiene(apodo, jugador.getApodo) && this.esAnterior(fechaPedida, jugador.getFechaDeNacimiento)].toList
	}
	
/*	def search(String nombreJugador, String apodo) {
		allInstances.filter[jugador|this.match(nombreJugador, jugador.getNombreJugador) && this.match(apodo, jugador.getApodo)].toList
	}
*/	
	def contiene(Object expectedValue, Object realValue) {
		if (expectedValue == null) {
			return true
		}
		if (realValue == null) {
			return false
		}
		realValue.toString().toLowerCase().contains(expectedValue.toString().toLowerCase())
	}
	
	def empiezaCon(Object expectedValue, Object realValue){
		if (expectedValue == null) {
			return true
		}
		if (realValue == null) {
			return false
		}
		empiezanIgual(expectedValue.toString().toLowerCase(), realValue.toString().toLowerCase())
	}
	
	def empiezanIgual(String esperado, String real){
		for(var i = 0; (i==esperado.length) || (i==real.length); i++){
			if (!(esperado.charAt(i)==real.charAt(i))){
				return false
			}
		}
		return true
	}
	
	//def esAnterior(int fecha, int fechaReferencia){
		//fecha > fechaReferencia
//	}
	
	def esAnterior(int fecha, int fechaReferencia){
		if (fecha == 0){
			return true
		}
		if (fechaReferencia == 0){
			return false
		}
		fecha > fechaReferencia
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