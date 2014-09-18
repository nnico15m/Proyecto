package uqbar.tpFutbol.ui.wicket

import org.apache.wicket.markup.html.WebPage
import org.uqbar.wicket.xtend.WicketExtensionFactoryMethods
import org.apache.wicket.markup.html.form.Form
import org.uqbar.wicket.xtend.XButton
import org.apache.wicket.markup.html.basic.Label
import org.apache.wicket.markup.html.form.TextField

import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.division.DividirPorParEImpar
import java.util.List
import uqbar.tpFutbol.domain.Partido
import org.uqbar.wicket.xtend.XListView
import java.util.ArrayList
import org.uqbar.commons.utils.ApplicationContext
import uqbar.tpFutbol.domain.HomePartidos

class DatosEquipoPage extends WebPage {
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final Partido partido
	private final GenerarEquiposPage mainPage
	private final List<Jugador> equipo1
	private final List<Jugador> equipo2
	private final List<Jugador> equipos
	
	
	
	new(Partido partido, GenerarEquiposPage  mainPage) {
		
		this.mainPage = mainPage
		this.partido = partido
		this.equipo1 = partido.equipo1
		this.equipo2 = partido.equipo2
		equipos = new ArrayList<Jugador>
		
		
		
		val datosEquipoForm=  new Form<Partido>("nombreEquipo", this.partido.asCompoundModel)
		this.agregarAcciones(datosEquipoForm)
		this.addChild(datosEquipoForm)
		this.mostrarEquipos()
	}
	
	def mostrarEquipos(){
		getHomePartidos().allInstances
	}
	
	
	
	
	def agregarAcciones(Form<Partido> parent) {
			val listViewEquipos = new XListView("equipos")
			listViewEquipos.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("nombreJugador.equipo1"))	
			item.addChild(new XButton("datosJugador").onClick = [| datosJugador(item.modelObject)
			])
			
			
		]
		
		parent.addChild(listViewEquipos)
		
	}
	
	
	
	def volver() {
		
	}
	
	def datosJugador(Jugador jugador) {
		responsePage = new DatosJugadorPage(jugador, this) 
	}
	
	
	def HomePartidos getHomePartidos() {
		ApplicationContext::instance.getSingleton(typeof(Partido))
	}
	}
	
	
