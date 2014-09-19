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

var amigosEpi = new ArrayList
var infraccionesEpi = new ArrayList
var formaDeInsc = new Estandar()
var mensajero = new StubMensajero()
var calificacion1 = new Calificaciones(11,6,"descripcion")
var calificacion3 = new Calificaciones(11,4,"descripcion")
var calificacion2 = new Calificaciones(10,8,"descripcion")
var calificacion4 = new Calificaciones(10,5,"descripcion")
var calificaciones = new ArrayList
var pendientesC = new ArrayList()
var comunidad = new ComunidadFutbolera()
var listaC= new ArrayList()
listaC.add(6)
listaC.add(5)

val epi2=this.createJug("epi","epielbostero",1,2,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p1=this.createJug("p1","p1",5,6,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p2=this.createJug("p2","p2",5,2,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p3=this.createJug("p3","p3",7,1,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p4=this.createJug("p4","p4",11,7,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p5=this.createJug("p5","p5",4,8,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)	
val p6=this.createJug("p6","p6",0,9,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p7=this.createJug("p7","p7",2,3,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p8=this.createJug("p8","p8",9,5,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p9=this.createJug("p9","p9",4,5,5,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p10=this.createJug("p10","p10",9,6,9,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p11=this.createJug("p11","p11",6,2,4,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)
val p12=this.createJug("p12","p12",6,5,3,1990,amigosEpi,infraccionesEpi,5,formaDeInsc,"asd",mensajero,calificaciones,pendientesC,comunidad,listaC,0)

var inscriptosPartido = new ArrayList()
var inscriptosPartido2 = new ArrayList()
var equipo1 = new ArrayList(5)
var equipo2 = new ArrayList(5)
inscriptosPartido.add(epi2)
inscriptosPartido.add(p1)
inscriptosPartido.add(p2)
inscriptosPartido.add(p3)
inscriptosPartido.add(p4)
inscriptosPartido.add(p5)
inscriptosPartido.add(p6)
inscriptosPartido.add(p7)
inscriptosPartido.add(p8)
inscriptosPartido.add(p9)
inscriptosPartido2.add(p5)
inscriptosPartido2.add(p6)
inscriptosPartido2.add(p7)
inscriptosPartido2.add(p1)
inscriptosPartido2.add(p10)
inscriptosPartido2.add(p11)
inscriptosPartido2.add(p12)
inscriptosPartido2.add(p3)
calificaciones.add(calificacion1)
calificaciones.add(calificacion2)
calificaciones.add(calificacion3)
calificaciones.add(calificacion4)
inscripciones.participantes().addAll(inscriptosPartido)
inscripciones2.participantes().addAll(inscriptosPartido2)
this.create(fecha,2144,losPibes,criterioDeOrdenamiento,criterioDeDivision,10,equipo1,equipo2,inscripciones)
this.create(fecha,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,11,equipo1,equipo2,inscripciones2)
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