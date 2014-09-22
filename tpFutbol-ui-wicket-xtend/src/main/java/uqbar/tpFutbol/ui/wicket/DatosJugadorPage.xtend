package uqbar.tpFutbol.ui.wicket

import org.apache.wicket.markup.html.WebPage
import org.uqbar.wicket.xtend.WicketExtensionFactoryMethods
import org.apache.wicket.markup.html.form.Form
import org.uqbar.wicket.xtend.XListView
import uqbar.tpFutbol.domain.Jugador
import org.apache.wicket.markup.html.basic.Label
import org.apache.wicket.model.CompoundPropertyModel
import uqbar.tpFutbol.domain.BuscadorJugadores

class DatosJugadorPage extends WebPage {
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final Jugador jugador
	private final DatosEquipoPage mainPage
	var BuscadorJugadores buscador
	
	
	
	
	new(Jugador jugadorExistente, DatosEquipoPage  mainPage) {
		
		this.buscador = new BuscadorJugadores()
		this.mainPage = mainPage
		this.jugador = jugadorExistente
		
		
		
		
		val datosJugForm=  new Form<BuscadorJugadores>("nombreEquipo", new CompoundPropertyModel<BuscadorJugadores>(this.buscador))
		this.agregarAcciones(datosJugForm)
		this.addChild(datosJugForm)
		this.mostrarJugadores()
	}
	
	
	def mostrarJugadores(){
			buscador.buscarJugador(jugador)

	}
	
	
	
	
	def agregarAcciones(Form<BuscadorJugadores> parent) {
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
	
	
	
	
	
	}
	
	
