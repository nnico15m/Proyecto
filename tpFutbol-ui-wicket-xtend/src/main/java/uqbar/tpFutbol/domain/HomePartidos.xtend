package uqbar.tpFutbol.domain
import org.uqbar.commons.model.CollectionBasedHome
import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.ordenamiento.OrdenamientoPorHandicap
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.inscripcion.InscripcionAbierta
import uqbar.tpFutbol.observers.NotificadorDeAdministradorObserver
import uqbar.tpFutbol.division.DividirPorParEImpar
import uqbar.tpFutbol.inscripcion.Estandar
import uqbar.tpFutbol.observers.StubMensajero
import org.uqbar.commons.utils.ApplicationContext
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import java.util.Date
import java.text.SimpleDateFormat

class HomePartidos extends CollectionBasedHome<Partido>{
	
	
	
new() {
this.init
}


def void init() {
	


var partido = new Partido
var losPibes = new ComunidadFutbolera()
var criterioDeOrdenamiento = new OrdenamientoPorHandicap()
var criterioDeDivision = new DividirPorParEImpar
var inscripciones = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))
var inscripciones2 = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))
var inscripciones3 = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))
var inscripciones4 = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))




//INFRACCIONES

var infraccionesEpi = new ArrayList()
var infracciones1 = new ArrayList()
var infracciones2 = new ArrayList()
var infracciones3 = new ArrayList()
var infracciones4 = new ArrayList()
var infraccionesNulas = new ArrayList()
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
///////////////////////////////////		

var amigosEpi = new ArrayList<Jugador>
var amigos2 = new ArrayList<Jugador>
var amigos1 = new ArrayList<Jugador>
var amigos3 = new ArrayList<Jugador>



var formaDeInsc = new Estandar()
var mensajero = new StubMensajero()



//CALIFICACIONES//////////////////////
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
var calificaciones = new ArrayList
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


/////////////////////////////////
var pendientesC = new ArrayList()
var comunidad = new ComunidadFutbolera()
var listaC= new ArrayList()
val fechaHoy = new Date()
val fecha1 = new Date(98,11,11)
val fecha2 = new Date(85,4,14)
val fecha3= new Date(100,5,25)
val fecha4= new Date(82,0,20)

listaC.add(6)
listaC.add(5)

val epi2=this.createJug("epi","epielbostero",1,3,2,fecha1,amigosEpi,infraccionesEpi,3,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p1=this.createJug("p1","p1",5,8,9,fecha2,amigos2,infracciones2,1,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
val p2=this.createJug("p2","p2",5,3,6,fecha3,amigos2,infracciones1,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,4)
val p3=this.createJug("p3","p3",7,1,8,fecha1,amigos2,infracciones4,6,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
val p4=this.createJug("p4","p4",3,7,2,fecha4,amigos1,infracciones1,2,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
val p5=this.createJug("p5","p5",4,2,5,fecha1,amigos3,infracciones1,0,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,8)	
val p6=this.createJug("p6","p6",5,6,4,fecha2,amigos3,infracciones2,0,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
val p7=this.createJug("p7","p7",2,2,6,fecha3,amigos1,infracciones3,4,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
val p8=this.createJug("p8","p8",9,3,6,fecha1,amigos1,infracciones4,3,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
val p9=this.createJug("p9","p9",4,9,8,fecha1,amigos1,infracciones2,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,7)
val p10=this.createJug("p10","p10",5,7,9,fecha4,amigos2,infracciones1,8,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,2)
val p11=this.createJug("p11","p11",3,4,4,fecha2,amigosEpi,infracciones1,4,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,1)
val p12=this.createJug("p12","p12",7,6,3,fecha2,amigos3,infracciones4,4,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
val p13=this.createJug("p12","p12",3,1,3,fecha1,amigos3,infracciones2,1,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
val jorge=this.createJug("jorge","george",11,7,5,fecha3,amigos1,infracciones1,2,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
val manu=this.createJug("emanuel","manu",2,3,5,fecha4,amigos2,infracciones2,2,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
val jugSinInf = this.createJug("jugadorSinInfracciones","jugLimpio",2,3,5,fechaHoy,amigos2,infraccionesNulas,5,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
//INSCRIPCIONES
var inscriptosPartido = new ArrayList()
var inscriptosPartido2 = new ArrayList()
var inscriptosPartido3 = new ArrayList()
var inscriptosPartido4 = new ArrayList()
var equipo1 = new ArrayList(5)
var equipo2 = new ArrayList(5)
inscriptosPartido.add(epi2)
inscriptosPartido.add(p1)
inscriptosPartido.add(p2)
inscriptosPartido.add(p3)
inscriptosPartido.add(jorge)
inscriptosPartido.add(p5)
inscriptosPartido.add(p6)
inscriptosPartido.add(manu)
inscriptosPartido.add(p8)
inscriptosPartido.add(p11)
inscriptosPartido2.add(p5)
inscriptosPartido2.add(p6)
inscriptosPartido2.add(p7)
inscriptosPartido2.add(p1)
inscriptosPartido2.add(p10)
inscriptosPartido2.add(p11)
inscriptosPartido2.add(p12)
inscriptosPartido2.add(p3)
inscriptosPartido2.add(jugSinInf)
inscriptosPartido2.add(jorge)
inscriptosPartido3.add(jorge)
inscriptosPartido3.add(p9)
inscriptosPartido3.add(p4)
inscriptosPartido3.add(p1)
inscriptosPartido3.add(p6)
inscriptosPartido3.add(p7)
inscriptosPartido3.add(p10)
inscriptosPartido3.add(p11)
inscriptosPartido3.add(jorge)
inscriptosPartido3.add(p3)
inscriptosPartido4.add(p4)
inscriptosPartido4.add(p11)
inscriptosPartido4.add(p1)
inscriptosPartido4.add(p2)
inscriptosPartido4.add(jorge)
inscriptosPartido4.add(manu)
inscriptosPartido4.add(p12)
inscriptosPartido4.add(p13)
inscriptosPartido4.add(p6)
inscriptosPartido4.add(p9)
inscripciones.participantes().addAll(inscriptosPartido)
inscripciones2.participantes().addAll(inscriptosPartido2)
inscripciones3.participantes().addAll(inscriptosPartido3)
inscripciones4.participantes().addAll(inscriptosPartido4)

////////////////////////////////////////////////

amigos1.add(p3)
amigos1.add(p2)
amigos1.add(p9)
amigos2.add(p4)
amigos2.add(p5)
amigos3.add(p7)
amigos3.add(p8)



this.create(fechaHoy,2144,losPibes,criterioDeOrdenamiento,criterioDeDivision,11,equipo1,equipo2,inscripciones)
this.create(fechaHoy,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,12,equipo1,equipo2,inscripciones4)
this.create(fechaHoy,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,13,equipo1,equipo2,inscripciones3)
this.create(fechaHoy,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,14,equipo1,equipo2,inscripciones2)
}



//USAR BUILDER!!!!
def void create(Date fecha, double hora, ComunidadFutbolera losPibes, OrdenamientoPorHandicap criterioOrdenamiento, DividirPorParEImpar criterioDivision, int codPartido, List<Jugador> equipo1,List<Jugador> equipo2, InscripcionAbierta inscripciones)
{
var partido = new Partido
partido.fecha = fecha
partido.hora= hora
partido.comunidad = losPibes
partido.criterioDeOrdenamiento = criterioOrdenamiento
partido.codPartido = codPartido
partido.equipo1 = equipo1
partido.equipo2 = equipo2
partido.inscripciones = inscripciones
this.create(partido)
}


def crearObserverDePartido(String mailAdministrador){
var observerDelPartido = new NotificadorDeAdministradorObserver
observerDelPartido.setMailAdministrador(mailAdministrador)
observerDelPartido
}


def search() {
allInstances
}



def alguno(){
allInstances.get(0)
}


override def getCriterio(Partido example) {
null
}


override createExample() {
new Partido
}



override getEntityType() {
typeof (Partido)
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


def List<Partido> getPartido() {
allInstances	
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