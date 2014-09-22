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
class HomePartidos extends CollectionBasedHome<Partido>{
	
	
	
new() {
this.init
}


def void init() {
	

var fecha = new Fecha
var partido = new Partido
var losPibes = new ComunidadFutbolera()
var criterioDeOrdenamiento = new OrdenamientoPorHandicap()
var criterioDeDivision = new DividirPorParEImpar
var inscripciones = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))
var inscripciones2 = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))
var inscripciones3 = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))
var inscripciones4 = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))

var amigosEpi = new ArrayList
var infraccionesEpi = new ArrayList
var formaDeInsc = new Estandar()
var mensajero = new StubMensajero()
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
var pendientesC = new ArrayList()
var comunidad = new ComunidadFutbolera()
var listaC= new ArrayList()
listaC.add(6)
listaC.add(5)

val epi2=this.createJug("epi","epielbostero",1,3,2,1990,amigosEpi,infraccionesEpi,3,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p1=this.createJug("p1","p1",5,8,9,1990,amigosEpi,infraccionesEpi,1,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
val p2=this.createJug("p2","p2",5,3,6,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,4)
val p3=this.createJug("p3","p3",7,1,8,1990,amigosEpi,infraccionesEpi,6,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
val p4=this.createJug("p4","p4",3,7,2,1990,amigosEpi,infraccionesEpi,2,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
val p5=this.createJug("p5","p5",4,2,5,1990,amigosEpi,infraccionesEpi,0,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,8)	
val p6=this.createJug("p6","p6",5,6,4,1990,amigosEpi,infraccionesEpi,0,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,5)
val p7=this.createJug("p7","p7",2,2,6,1993,amigosEpi,infraccionesEpi,4,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
val p8=this.createJug("p8","p8",9,3,6,1996,amigosEpi,infraccionesEpi,3,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,3)
val p9=this.createJug("p9","p9",4,9,8,1996,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,7)
val p10=this.createJug("p10","p10",5,7,9,1994,amigosEpi,infraccionesEpi,8,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,2)
val p11=this.createJug("p11","p11",3,4,4,1991,amigosEpi,infraccionesEpi,4,formaDeInsc,"asd",mensajero,calificaciones2,pendientesC,comunidad,listaC,1)
val p12=this.createJug("p12","p12",7,6,3,1942,amigosEpi,infraccionesEpi,4,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
val p13=this.createJug("p12","p12",3,1,3,1981,amigosEpi,infraccionesEpi,1,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)
val jorge=this.createJug("jorge","george",11,7,5,1960,amigosEpi,infraccionesEpi,2,formaDeInsc,"asd",mensajero,calificaciones3,pendientesC,comunidad,listaC,9)
val manu=this.createJug("emanuel","manu",2,3,5,1990,amigosEpi,infraccionesEpi,2,formaDeInsc,"asd",mensajero,calificaciones4,pendientesC,comunidad,listaC,4)


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


inscripciones.participantes().addAll(inscriptosPartido)
inscripciones2.participantes().addAll(inscriptosPartido2)
inscripciones3.participantes().addAll(inscriptosPartido3)
inscripciones4.participantes().addAll(inscriptosPartido4)
this.create(fecha,2144,losPibes,criterioDeOrdenamiento,criterioDeDivision,11,equipo1,equipo2,inscripciones)
this.create(fecha,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,12,equipo1,equipo2,inscripciones4)
this.create(fecha,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,13,equipo1,equipo2,inscripciones3)
this.create(fecha,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,14,equipo1,equipo2,inscripciones2)
}



//USAR BUILDER!!!!
def void create(Fecha fecha, double hora, ComunidadFutbolera losPibes, OrdenamientoPorHandicap criterioOrdenamiento, DividirPorParEImpar criterioDivision, int codPartido, List<Jugador> equipo1,List<Jugador> equipo2, InscripcionAbierta inscripciones)
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