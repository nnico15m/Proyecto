package uqbar.tpFutbol.ui.wicket

import org.apache.wicket.markup.html.WebPage
import org.apache.wicket.markup.html.basic.Label
import org.apache.wicket.markup.html.form.CheckBox
import org.apache.wicket.markup.html.form.Form
import org.apache.wicket.markup.html.form.TextField
import org.apache.wicket.model.CompoundPropertyModel
import org.uqbar.wicket.xtend.WicketExtensionFactoryMethods
import org.uqbar.wicket.xtend.XButton
import org.uqbar.wicket.xtend.XListView

import uqbar.tpFutbol.domain.BuscadorJugadores
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.division.DividirPorPosicion14589
import uqbar.tpFutbol.division.DividirPorParEImpar
import org.apache.wicket.AttributeModifier
import org.apache.wicket.markup.html.panel.FeedbackPanel

/**
 * Pagina de busqueda de la aplicacion de celulares.
 */
class OrganizadorFutbolPage extends WebPage {
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	
	var BuscadorJugadores buscador

	

	
	
	new() {
	
		this.buscador = new BuscadorJugadores()
		val Form<BuscadorJugadores> jugadoresForm = new Form<BuscadorJugadores>("buscarJugadoresForm", new CompoundPropertyModel<BuscadorJugadores>(this.buscador))
		this.agregarCamposBusqueda(jugadoresForm)
		this.agregarGrillaResultadosJug(jugadoresForm)
		this.agregarAccionesJug(jugadoresForm)
		
		
		
		this.addChild(jugadoresForm)
		
		this.mostrarJugadores()
		
		
		

		
	}

	
	
	def mostrarJugadores(){
		this.buscador.mostrarTodos()
	
	}

def agregarCamposBusqueda(Form<BuscadorJugadores> parent) {
	parent.addChild(new TextField<String>("nombre"))	
	parent.addChild(new TextField<String>("apodo"))
	parent.addChild(new TextField<String>("fecha"))
	parent.addChild(new CheckBox("tieneInfracciones"))
	parent.addChild(new TextField<String>("desdeHandicap"))
	parent.addChild(new TextField<String>("hastaHandicap"))
	parent.addChild(new TextField<String>("desdePromUltPart"))
	parent.addChild(new TextField<String>("hastaPromUltPart"))
	parent.addChild(new FeedbackPanel("feedbackPanel"))
		
		
	}


	
	def agregarAccionesJug(Form<BuscadorJugadores> parent) {
		
					
		
		//parent.addChild(new XButton("nuevoJugador").onClick = [| nuevoJugador(new Jugador) ]) 
		val buscarButton = new XButton("buscar")
		buscarButton.onClick = [| buscador.buscarJugador ]
		parent.addChild(buscarButton)
		parent.addChild(new XButton("generarEquipos").onClick = [| generarEquipos(new Partido) ])
		
	}
	
	
	
	def nuevoJugador(Jugador jugador) {
		responsePage = new NuevoJugadorPage(jugador, this) 
	}
	
	def generarEquipos(Partido partido) {
		responsePage = new GenerarEquiposPage(partido,this ) 
	}
	
	
		

	
	def agregarGrillaResultadosJug(Form<BuscadorJugadores> parent) {
			val listViewJugadores = new XListView("results")
			listViewJugadores.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			val nombreJugador = item.addChild(new Label("nombreJugador"))
			if(item.modelObject.tieneHandicapMayor){
				nombreJugador.add(new AttributeModifier("style", "color:blue;font-weight:bold"));
			}
			item.addChild(new Label("apodo"))
			item.addChild(new Label("nivelDeJuego"))
			item.addChild(new Label("promedioCalificaciones"))
		
			item.addChild(new XButton("datosJugador").onClick = [| datosJugador(item.modelObject)])]
		parent.addChild(listViewJugadores)
		
	}
	
	def datosJugador(Jugador jugador) {
		responsePage = new DatosJugadorPage(jugador) 
	}
	
	def tieneHandicapMayor(Jugador jugador) {
		
		jugador.nivelDeJuego > 8
	}
	
	

		
			
			
	
	
	}

