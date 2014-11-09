package uqbar.tpFutbol.domain
import org.uqbar.commons.model.CollectionBasedHome
import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.ordenamiento.OrdenamientoPorHandicap
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.domain.HomeJugadores
import uqbar.tpFutbol.inscripcion.InscripcionAbierta
import uqbar.tpFutbol.observers.NotificadorDeAdministradorObserver
import uqbar.tpFutbol.division.DividirPorParEImpar
import uqbar.tpFutbol.inscripcion.Estandar
import uqbar.tpFutbol.observers.StubMensajero
import org.uqbar.commons.utils.ApplicationContext
import uqbar.tpFutbol.inscripcion.TipoDeSuscripcion
import java.util.Date
import java.text.SimpleDateFormat
import java.util.Collections

//class HomePartidos extends CollectionBasedHome<Partido>{
class HomePartidos {	
	/* 
	
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



val fechaHoy = new Date()



//INSCRIPCIONES
var inscriptosPartido = new ArrayList()
var inscriptosPartido2 = new ArrayList()
var inscriptosPartido3 = new ArrayList()
var inscriptosPartido4 = new ArrayList()
var equipo1 = new ArrayList(5)
var equipo2 = new ArrayList(5)
inscripciones.participantes().addAll(inscriptosPartido)
inscripciones2.participantes().addAll(inscriptosPartido2)
inscripciones3.participantes().addAll(inscriptosPartido3)
inscripciones4.participantes().addAll(inscriptosPartido4)




this.create(fechaHoy,2144,losPibes,criterioDeOrdenamiento,criterioDeDivision,11,equipo1,equipo2,inscripciones)
this.create(fechaHoy,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,12,equipo1,equipo2,inscripciones4)
this.create(fechaHoy,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,13,equipo1,equipo2,inscripciones3)
this.create(fechaHoy,2124,losPibes,criterioDeOrdenamiento,criterioDeDivision,14,equipo1,equipo2,inscripciones2)
}



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

def obtenerParticipantes (Partido partido){
	val inscriptos = homeJugadores.allInstances
	Collections.shuffle(inscriptos)
	val inscriptos2 = inscriptos.subList(0,10)
	partido.inscripciones.participantes.clear
	partido.inscripciones.participantes.addAll(inscriptos2)
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



def HomeJugadores getHomeJugadores() {
		ApplicationContext::instance.getSingleton(typeof(Jugador))
	}



*/
 
}