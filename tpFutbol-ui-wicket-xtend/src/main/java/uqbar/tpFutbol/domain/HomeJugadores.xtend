package uqbar.tpFutbol.domain


import org.uqbar.commons.model.CollectionBasedHome
import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import uqbar.tpFutbol.inscripcion.Estandar
import uqbar.tpFutbol.observers.StubMensajero
import java.util.Date

class HomeJugadores extends CollectionBasedHome<Jugador>{
	
	new() {
		this.init
	 }
	
	def void init() {
		
		
		
		var infraccionesEpi = new ArrayList()
		var infracciones1 = new ArrayList()
		var infracciones2 = new ArrayList()
		var infracciones3 = new ArrayList()
		var infracciones4 = new ArrayList()
		var infraccionesNulas = new ArrayList()
		var amigos2 = new ArrayList<Jugador>()
		var amigosEpi = new ArrayList<Jugador>()
		var amigos1 = new ArrayList<Jugador>
		var amigos3 = new ArrayList<Jugador>
		var formaDeInsc = new Estandar()
		var mensajero = new StubMensajero()
		var calificaciones = new ArrayList()
		var pendientesC = new ArrayList()
		var listaC= new ArrayList()
		var comunidad = new ComunidadFutbolera()
		
		var calificacion1 = new Calificaciones(11,6,"descripcion")
var calificacion3 = new Calificaciones(12,4,"descripcion")
var calificacion2 = new Calificaciones(10,0,"descripcion")
var calificacion4 = new Calificaciones(13,3,"descripcion")
var calificacion5 = new Calificaciones(13,6,"descripcion")
var calificacion6 = new Calificaciones(10,12,"descripcion")
var calificacion7 = new Calificaciones(10,2,"descripcion")
var calificacion8 = new Calificaciones(9,1,"descripcion")
var calificacion9 = new Calificaciones(7,0,"descripcion")
var calificacionX = new Calificaciones(8,4,"descripcion")
var calificacion10 = new Calificaciones(11,4,"descripcion")
var calificacion11 = new Calificaciones(12,6,"descripcion")
var calificaciones2 = new ArrayList
var calificaciones3 = new ArrayList
var calificaciones4 = new ArrayList
calificaciones.add(calificacion6)
calificaciones.add(calificacion1)
calificaciones.add(calificacion2)
calificaciones.add(calificacion3)
calificaciones.add(calificacion4)
calificaciones.add(calificacion9)
calificaciones4.add(calificacion5)
calificaciones4.add(calificacionX)
calificaciones4.add(calificacion7)
calificaciones2.add(calificacion3)
calificaciones2.add(calificacion4)
calificaciones2.add(calificacion2)
calificaciones2.add(calificacion1)
calificaciones2.add(calificacionX)
calificaciones3.add(calificacion4)
calificaciones3.add(calificacion3)
calificaciones3.add(calificacion2)
calificaciones3.add(calificacionX)
calificaciones3.add(calificacion6)
calificaciones3.add(calificacion8)
calificaciones4.add(calificacion1)
calificaciones4.add(calificacion2)
calificaciones4.add(calificacion3)
calificaciones4.add(calificacion4)
calificaciones4.add(calificacion5)
calificaciones4.add(calificacionX)
calificaciones3.add(calificacion6)
calificaciones.add(calificacion10)
calificaciones3.add(calificacion7)
calificaciones3.add(calificacion8)
calificaciones3.add(calificacion9)
calificaciones2.add(calificacion7)
calificaciones2.add(calificacion8)
calificaciones2.add(calificacion9)
calificaciones4.add(calificacion7)
calificaciones4.add(calificacion8)
calificaciones4.add(calificacion9)
calificaciones.add(calificacion7)
calificaciones.add(calificacion8)
calificaciones.add(calificacion9)
calificaciones2.add(calificacion10)
calificaciones3.add(calificacion11)
		
		
		var infraccion1 = new Infracciones("falto",1)
		var infraccion2 = new Infracciones("jugo mal",1)
		var infraccion3 = new Infracciones("expulsado",2)
		var infraccion4 = new Infracciones("pecho frio",2)
		var infraccion5 = new Infracciones("sin codigo",10)
		var infraccion6 = new Infracciones("manco",1)
		
		infraccionesEpi.add(infraccion2)
		infraccionesEpi.add(infraccion5)
		infracciones1.add(infraccion1)
		infracciones1.add(infraccion6)
		infracciones2.add(infraccion4)
		infracciones2.add(infraccion3)
		infracciones3.add(infraccion2)
		infracciones3.add(infraccion5)
		infracciones4.add(infraccion6)
		infracciones4.add(infraccion5)
		

		
		val fechaHoy = new Date()
		val fecha1 = new Date(98,11,11)
		val fecha2 = new Date(85,4,14)
		val fecha3= new Date(100,5,25)
		val fecha4= new Date(82,0,20)
		
		val p1 = this.createJug("p1","p1",5,6,5,fecha1,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
		val p5 = this.createJug("p5","p5",4,8,5,fecha2,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,8)
		val p7 = this.createJug("p7","p7",2,3,5,fecha3,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
		val p8=this.createJug("p8","p8",9,3,6,fecha1,amigos1,infracciones4,3,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
		val p9=this.createJug("p9","p9",4,9,8,fecha2,amigos1,infracciones2,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,7)
		val p2=this.createJug("p2","p2",5,3,6,fecha3,amigos2,infracciones1,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,4)
		val p3=this.createJug("p3","p3",7,1,8,fecha3,amigos2,infracciones4,6,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
		val p4=this.createJug("p4","p4",3,7,2,fecha1,amigos1,infracciones1,2,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
		
		amigos2.add(p1)
		amigosEpi.add(p5)
		amigosEpi.add(p7)
		amigos1.add(p3)
		amigos1.add(p2)
		amigos1.add(p9)
		amigos2.add(p4)
		amigos2.add(p5)
		amigos3.add(p7)
		amigos3.add(p8)
		
		
		
		
		
		this.create("epi","epielbostero",1,2,5,fecha1,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
		this.create("p1","p1",5,6,5,fecha2,amigos2,infracciones2,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
		this.create("p2","p2",5,2,5,fecha3,amigos2,infracciones1,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,4)
		this.create("p3","p3",7,1,5,fecha4,amigos2,infracciones4,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
		this.create("p4","p4",11,7,5,fecha1,amigos2,infracciones1,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
		this.create("p5","p5",4,8,5,fecha2,amigos2,infracciones1,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,8)	
		this.create("p6","p6",0,9,5,fecha3,amigos2,infracciones2,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
		this.create("p7","p7",2,3,5,fecha1,amigos2,infracciones3,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
		this.create("p8","p8",9,5,5,fecha1,amigos2,infracciones4,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
		this.create("p9","p9",4,5,5,fecha4,amigos2,infracciones2,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,7)
		this.create("p10","p10",9,6,9,fecha2,amigos2,infracciones1,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,2)
		this.create("p11","p11",6,2,4,fecha1,amigos2,infracciones1,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,1)
		this.create("p12","p12",6,5,3,fecha1,amigos2,infracciones4,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
		this.create("jorge","george",11,7,5,fecha3,amigos2,infracciones2,5,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
		this.create("emanuel","manu",2,3,5,fecha4,amigos2,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
		this.create("jugadorSinInfracciones","jugLimpio",2,3,5,fechaHoy,amigos2,infraccionesNulas,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
		
		
		
		}


//USAR BUILDER!!!!

	def void create(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,Date fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones>  calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador, int promedioConVariosCriteriosAplicados) {
		
		
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
	
	def Jugador create2(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,Date fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones>  calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador, int promedioConVariosCriteriosAplicados) {
		
		
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
	
	def search(String nombreJugador, String apodo) {
		this.search(nombreJugador, apodo, null,0,100,0,100, false)
	}	
	
	
		
	def search(String nombreJugador, String apodo, Date fechaPedida, int desdeHandicap, int hastaHandicap,int desdePromUltPart,int hastaPromUltPart, boolean tieneInfracciones) {
		allInstances.filter[jugador|this.empiezaCon(nombreJugador, jugador.getNombreJugador) && this.contiene(apodo, jugador.getApodo) && this.esAnterior(fechaPedida, jugador.getFechaDeNacimiento) && this.tieneInfracciones(tieneInfracciones,jugador.getInfracciones)&& this.handicapEstaEntre(desdeHandicap,hastaHandicap,jugador.getNivelDeJuego)&& this.promedioEstaEntre(desdePromUltPart,hastaPromUltPart,jugador.promedioCalificacionesUltPart)].toList
	}
	
	
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
	
		realValue.toString().toLowerCase.startsWith(expectedValue.toString().toLowerCase())
	}
	
	
	

	
	
	
	def esAnterior(Date fechaPedida, Date fechaJugador){
		if (fechaPedida == null){
			return true
		}
		
		if (fechaJugador == null){
			return false
		}
		fechaJugador.before(fechaPedida)
		
	}
	
	
	def tieneInfracciones(Object expectedValue, List<Infracciones> realValue){
		if (expectedValue == false){
			return true
		}
		
		if (realValue == true) {
			return false
		}
		
		realValue.size > 0
		
	}
	
	def handicapEstaEntre(int num1, int num2, int handicapJug){
		if ((num1 == 0)&& (num2 ==0)){
			return true
		}
		
		if (handicapJug == 0)  {
			return false
		}
	
	(num1 <= handicapJug) && (handicapJug <= num2)
	}
	
	def promedioEstaEntre(int num1, int num2, int promedioUltPart){
		if ((num1 == 0)&& (num2 ==0)){
			return true
		}
		
		if (promedioUltPart == 0)  {
			return false
		}
	
	(num1 <= promedioUltPart) && (promedioUltPart<= num2)
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
	
	def Jugador createJug(String nombreJugador, String apodo, int nivelDeJuego, int promedioCalificacionesUltPart, int promedioCalificaciones,Date fechaDeNacimiento, ArrayList<Jugador> amigos, ArrayList<Infracciones> infracciones, int cantPartidosJugados, TipoDeSuscripcion formaDeInscripcion,String mail,StubMensajero mensajero, List<Calificaciones> calificaciones,List<Jugador> pendientesDeCalificar,ComunidadFutbolera comunidad,ArrayList<Integer> listaCriterioDelJugador, int promedioConVariosCriteriosAplicados) {
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