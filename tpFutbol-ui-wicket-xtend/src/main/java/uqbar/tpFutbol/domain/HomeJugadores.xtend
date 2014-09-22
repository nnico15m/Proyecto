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
		
		
		
		var infraccionesEpi = new ArrayList()
		var amigos2 = new ArrayList<Jugador>()
		var amigosEpi = new ArrayList<Jugador>()
		var formaDeInsc = new Estandar()
		var mensajero = new StubMensajero()
		var calificaciones = new ArrayList()
		var pendientesC = new ArrayList()
		var listaC= new ArrayList()
		var comunidad = new ComunidadFutbolera()
		
		var calificaciones2 = new ArrayList
		var calificaciones3 = new ArrayList
		var calificaciones4 = new ArrayList
		var calificacion1 = new Calificaciones(11,6,"descripcion")
		var calificacion3 = new Calificaciones(12,4,"descripcion")
		var calificacion2 = new Calificaciones(10,8,"descripcion")
		var calificacion4 = new Calificaciones(13,5,"descripcion")
		var calificacion5 = new Calificaciones(13,6,"descripcion")
		var calificacion6 = new Calificaciones(10,5,"descripcion")
		var calificacionX = new Calificaciones(10,4,"descripcion")
		
		
		calificaciones.add(calificacion6)
		calificaciones.add(calificacion1)
		calificaciones.add(calificacion2)
		calificaciones.add(calificacion3)
		calificaciones.add(calificacion4)
		calificaciones4.add(calificacion5)	
		calificaciones4.add(calificacionX)
		calificaciones2.add(calificacion3)
		calificaciones2.add(calificacion4)
		calificaciones2.add(calificacion2)
		calificaciones2.add(calificacion1)
		calificaciones2.add(calificacionX)
		calificaciones3.add(calificacion4)
		calificaciones3.add(calificacion3)
		calificaciones3.add(calificacion2)
		calificaciones3.add(calificacionX)
		calificaciones4.add(calificacion1)
		calificaciones4.add(calificacion2)
		calificaciones4.add(calificacion3)
		calificaciones4.add(calificacion4)
		calificaciones4.add(calificacion5)
		calificaciones4.add(calificacionX)
		
		val p1 = this.createJug("p1","p1",5,6,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
		
		amigos2.add(p1)
		
		
		
		
		this.create("epi","epielbostero",1,2,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
		this.createJug("p1","p1",5,6,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
		this.create("p2","p2",5,2,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,4)
		this.create("p3","p3",7,1,5,1990,amigos2,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
		this.create("p4","p4",11,7,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
		this.create("p5","p5",4,8,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,8)	
		this.create("p6","p6",0,9,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
		this.create("p7","p7",2,3,5,1993,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
		this.create("p8","p8",9,5,5,1996,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
		this.create("p9","p9",4,5,5,1996,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,7)
		this.create("p10","p10",9,6,9,1994,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,2)
		this.create("p11","p11",6,2,4,1991,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,1)
		this.create("p12","p12",6,5,3,1942,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
		this.create("jorge","george",11,7,5,1960,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
		this.create("emanuel","manu",2,3,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
		
		
		
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
	
	def Jugador createJug(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,int fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones> calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador, int promedioConVariosCriteriosAplicados) {
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