package uqbar.tpFutbol.ui.wicket

import org.apache.wicket.markup.html.WebPage
import org.uqbar.wicket.xtend.WicketExtensionFactoryMethods
import org.apache.wicket.markup.html.form.Form
import org.uqbar.wicket.xtend.XButton
import org.apache.wicket.markup.html.basic.Label
import org.apache.wicket.markup.html.form.TextField

import uqbar.tpFutbol.domain.Jugador

class NuevoJugadorPage extends WebPage {
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final Jugador jugador
	private final OrganizadorFutbolPage mainPage
	
	new(Jugador jugadorNuevo, OrganizadorFutbolPage  mainPage) {
		
		this.mainPage = mainPage
		this.jugador = jugadorNuevo
		val nuevoJugadorForm=  new Form<Jugador>("nombreJugador", this.jugador.asCompoundModel)
		this.agregarCamposEdicion(nuevoJugadorForm)
		this.agregarAcciones(nuevoJugadorForm)
		this.addChild(nuevoJugadorForm)
	}
	
	
	
	
	def agregarCamposEdicion(Form<Jugador> parent) {
		parent.addChild(new TextField<String>("nombreJugador"))
		
	}
	
	def void agregarAcciones(Form<Jugador> parent) {
		parent.addChild(new XButton("aceptar").onClick = [| Jugador.home.create(jugador)
			volver()
		])
		
	}
	
	def volver() {
		mainPage.mostrarJugadores()
		responsePage = mainPage
	}
	}
	
	
