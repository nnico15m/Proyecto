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
	
	var GeneradorPartidos generador
	private final Partido partido
	

	new(Partido partidoExistente, GenerarEquiposPage  mainPage) {
		
		this.generador = new GeneradorPartidos()
		this.mainPage = mainPage
		this.partido = partidoExistente
		
		
		 
		
		val datosEquipoForm=   new Form<GeneradorPartidos>("nombreEquipoForm", new CompoundPropertyModel<GeneradorPartidos>(this.generador))
		this.agregarAcciones(datosEquipoForm)
		this.addChild(datosEquipoForm)
		this.agregarBotones(datosEquipoForm)
		this.mostrarEquipos()
	}
	
	
	
	
	
	
	def agregarAcciones(Form<GeneradorPartidos> parent) {
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
	
	
	def mostrarEquipos() {
		
	
		generador.mostrarEquiposGen(partido)
		
	}
	
	
	
	
	def volver() {
		
		responsePage = mainPage
	}
	
	def agregarBotones(Form<GeneradorPartidos> parent) {
		parent.addChild(new XButton("volver") => [
			onClick = [| volver ]
		])
			
		
		}
	
	
		
	}