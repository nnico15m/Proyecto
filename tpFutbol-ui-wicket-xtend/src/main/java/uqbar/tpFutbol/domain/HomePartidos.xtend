package uqbar.tpFutbol.domain


import org.uqbar.commons.model.CollectionBasedHome
import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.observers.StubMensajero
import uqbar.tpFutbol.ordenamiento.OrdenamientoPorHandicap
import uqbar.tpFutbol.inscripcion.TipoDeInscripcion
import uqbar.tpFutbol.inscripcion.InscripcionAbierta
import uqbar.tpFutbol.observers.NotificadorDeAdministradorObserver
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import uqbar.tpFutbol.division.DividirPorParEImpar
import uqbar.tpFutbol.inscripcion.Solidaria
import uqbar.tpFutbol.inscripcion.Estandar
import uqbar.tpFutbol.inscripcion.Condicional

class HomePartidos extends CollectionBasedHome<Partido>{
	
	new() {
		this.init
	 }
	
	def void init() {
		
		var fecha = new Fecha
		var partido = new Partido
		var losPibes = new ComunidadFutbolera()
		var criterioOrdenamiento = new OrdenamientoPorHandicap()
		var criterioDivision = new DividirPorParEImpar
		var equipo1 = new ArrayList (5)
		var equipo2 = new ArrayList (5)
		var inscripciones = (new InscripcionAbierta(partido, this.crearObserverDePartido("admin@hotmail.com")))
		var dividirPar = false
		var dividir14589 = false
		var Jugador epi = new Jugador
		var Jugador p1 = new Jugador
		var Jugador p2 = new Jugador
		var Jugador p3 = new Jugador
		var Jugador p4 = new Jugador
		var Jugador p5 = new Jugador
		var Jugador p6 = new Jugador
		var Jugador p7 = new Jugador
		var Jugador p8 = new Jugador
		var Jugador p9 = new Jugador
		var inscriptosPartido = new ArrayList()
		inscriptosPartido.add(epi)
		inscriptosPartido.add(p1)
		inscriptosPartido.add(p2)
		inscriptosPartido.add(p3)
		inscriptosPartido.add(p4)
		inscriptosPartido.add(p5)
		inscriptosPartido.add(p6)
		inscriptosPartido.add(p7)
		inscriptosPartido.add(p8)
		inscriptosPartido.add(p9)
		inscripciones.participantes().addAll(inscriptosPartido)
		
	
		
		
		this.create(fecha,2144,losPibes,criterioOrdenamiento,criterioDivision,01,equipo1,equipo2,inscripciones,dividirPar,dividir14589)
		
		}


//USAR BUILDER!!!!

	def void create(Fecha fecha, double hora, ComunidadFutbolera losPibes, OrdenamientoPorHandicap criterioOrdenamiento, DividirPorParEImpar criterioDivision, int codPartido, Iterable<Jugador> equipo1,Iterable<Jugador> equipo2, InscripcionAbierta inscripciones, boolean dividirPar, boolean dividir14589)
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
		partido.dividirPar = dividirPar
		partido.dividir14589 = dividir14589
		
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
	
	
	

}