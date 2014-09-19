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
import uqbar.tpFutbol.domain.GeneradorPartidos
import org.apache.wicket.model.CompoundPropertyModel

class DatosEquipoPage extends WebPage {
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final GenerarEquiposPage mainPage
	@Property List<Jugador> equipos

	
	
	private final Partido partido
	
	new(Partido partidoPed, GenerarEquiposPage  mainPage) {

		
		this.mainPage = mainPage
		//this.equipos = Partido.home.searchById(posicion).participantes
		//this.equipos = Partido.home.allInstances.get(posicion).participantes
		//this.equipos = Partido.home.searchByExample(partidoPed).head.participantes
		this.equipos =equipos
		this.partido = partido		
		
		val datosEquipoForm=   new Form<Partido>("nombreEquipoForm", this.partido.asCompoundModel)
		this.agregarAcciones(datosEquipoForm)
		this.addChild(datosEquipoForm)
		this.mostrarEquipos(partidoPed)
		
	}
	
	
	
	
	
	
	def agregarAcciones(Form<Partido> parent) {
			val listViewEquipos = new XListView("equipos")
			listViewEquipos.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("nombreJugador"))	
			item.addChild(new XButton("datosJugador").onClick = [| datosJugador(item.modelObject)
			])
			
			
		]
		
		parent.addChild(listViewEquipos)
		
	}
	
	
	
	
	
	def datosJugador(Jugador jugador) {
		responsePage = new DatosJugadorPage(jugador, this) 
	}
	
	def mostrarEquipos(Partido partidoPed) {
		val posicion = Partido.home.allInstances.indexOf(partidoPed)
		equipos = new ArrayList<Jugador>
		equipos = Partido.home.allInstances.get(posicion).participantes
		//equipos = Partido.home.searchByExample(partidoPed).head.participantes
		
	}
	
	def HomePartidos getHomePartidos() {
		ApplicationContext::instance.getSingleton(typeof(Partido))
	}
	
		
	}
	
	
