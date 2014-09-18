package uqbar.tpFutbol.ui.wicket

import org.apache.wicket.markup.html.WebPage
import org.uqbar.wicket.xtend.WicketExtensionFactoryMethods
import org.apache.wicket.markup.html.form.Form
import org.uqbar.wicket.xtend.XButton


import java.util.List

import org.uqbar.wicket.xtend.XListView
import java.util.ArrayList
import org.uqbar.commons.utils.ApplicationContext
import uqbar.tpFutbol.domain.Jugador
import org.apache.wicket.markup.html.basic.Label
import uqbar.tpFutbol.domain.HomeJugadores

class DatosJugadorPage extends WebPage {
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final Jugador jugador
	private final DatosEquipoPage mainPage
	private final List datos
	
	
	
	
	new(Jugador jugador, DatosEquipoPage  mainPage) {
		
		this.mainPage = mainPage
		this.jugador = jugador
		datos = new ArrayList
		
		
		
		
		val datosJugForm=  new Form<Jugador>("nombreEquipo", this.jugador.asCompoundModel)
		this.agregarAcciones(datosJugForm)
		this.addChild(datosJugForm)
		this.mostrarJugadores()
	}
	
	
	def mostrarJugadores(){
		getHomeJugadores().allInstances
	}
	
	
	
	
	def agregarAcciones(Form<Jugador> parent) {
			val listViewJug = new XListView("datos")
			listViewJug.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("nombreJugador"))
			item.addChild(new Label("apodo"))
			item.addChild(new Label("nivelDeJuego"))
			item.addChild(new Label("promedioCalificacionesUltPart"))
			item.addChild(new Label("promedioCalificaciones"))
			item.addChild(new Label("fechaDeNacimiento"))
			item.addChild(new Label("amigos"))
			item.addChild(new Label("infracciones"))
			item.addChild(new Label("cantPartidosJugados"))
			
			]
			
			
		
		
		parent.addChild(listViewJug)
		
	}
	
	
	
	def volver() {
		
	}
	
	def datosJugador(Jugador jugador) {
		//responsePage = new DatosJugadorPage(jugador, this) 
	}
	
	
	def HomeJugadores getHomeJugadores() {
		ApplicationContext::instance.getSingleton(typeof(Jugador))
	}
	}
	
	
