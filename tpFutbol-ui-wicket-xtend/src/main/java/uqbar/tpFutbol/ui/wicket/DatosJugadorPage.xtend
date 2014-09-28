	package uqbar.tpFutbol.ui.wicket

import org.apache.wicket.markup.html.WebPage
import org.uqbar.wicket.xtend.WicketExtensionFactoryMethods
import org.apache.wicket.markup.html.form.Form
import org.uqbar.wicket.xtend.XListView
import uqbar.tpFutbol.domain.Jugador
import org.apache.wicket.markup.html.basic.Label
import org.apache.wicket.model.CompoundPropertyModel
import uqbar.tpFutbol.domain.BuscadorJugadores
import org.uqbar.wicket.xtend.XButton
import java.util.List
import org.apache.wicket.AttributeModifier
import org.apache.wicket.model.Model
import org.apache.wicket.behavior.AttributeAppender

class DatosJugadorPage extends WebPage {
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final Jugador jugador
	var BuscadorJugadores buscador
	private final  OrganizadorFutbolPage mainPage = new OrganizadorFutbolPage
	
	
	
	
	new(Jugador jugadorExistente) {	
		this.buscador = new BuscadorJugadores()
		this.jugador = jugadorExistente
		
		
		
		
		val datosJugForm=  new Form<BuscadorJugadores>("nombreEquipo", new CompoundPropertyModel<BuscadorJugadores>(this.buscador))
		this.agregarAcciones(datosJugForm)
		this.addChild(datosJugForm)
		this.mostrarJugadores()
		this.agregarBotones(datosJugForm)
		

	
		val infraccionesForm=  new Form<BuscadorJugadores>("datosInfracciones", new CompoundPropertyModel<BuscadorJugadores>(this.buscador))
		this.addChild(infraccionesForm)
		this.agregarAccionesInfracciones(infraccionesForm)
		
		
		
	}
	
	
	
	
	
	
	def mostrarJugadores(){
			buscador.buscarJugador(jugador)

	}
	
	
	
	
	def agregarAcciones(Form<BuscadorJugadores> parent) {
			val listViewJug = new XListView("datos")
			listViewJug.populateItem = [ item |
			item.model = (item.modelObject.asCompoundModel) 
			
			val nombreJugador = item.addChild(new Label("nombreJugador"))
			if(item.modelObject.tieneHandicapMayor){
				nombreJugador.add(new AttributeModifier("style", "color:blue;font-weight:bold"));
			}
			
				
			
			
			
			
			
			
					
			
			
			
			
			
			item.addChild(new Label("apodo"))
			item.addChild(new Label("nivelDeJuego"))
			item.addChild(new Label("promedioCalificacionesUltPart"))
			item.addChild(new Label("promedioCalificaciones"))
			item.addChild(new Label("fechaDeNacimiento"))
			
			item.addChild(new Label("cantPartidosJugados"))
			item.addChild(new XButton("amigos").onClick = [| mostrarAmigos(item.modelObject)])
			item.addChild(new XButton("infracciones").onClick = [| mostrarInfracciones(item.modelObject)])
			
			
			]
			
		
		
		parent.addChild(listViewJug)
		
	}
	

	def agregarAccionesInfracciones(Form<BuscadorJugadores> parent) {
			val listViewInf = new XListView("listaI")
			listViewInf.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("motivo"))
			item.addChild(new Label("duracion"))
			
			
			
			]
			
			
		
		
		parent.addChild(listViewInf)
		
	}
	
	def agregarBotones(Form<BuscadorJugadores> parent) {
		parent.addChild(new XButton("volver") => [
			onClick = [| volver ]
		])
			
		
		}
		
		
	
	
	def volver() {
		
		responsePage = mainPage
	}
	
	def tieneHandicapMayor(Jugador jugador) {
		
		jugador.nivelDeJuego > 8
	}
	
	def List<String> nombreAmigos(){
		jugador.getAmigos().map[nombreJugador]
			}
			
	def mostrarAmigos(Jugador jugador){
		buscador.mostrarAmigosJ(jugador)
		
		
		
	}
	
	def mostrarInfracciones(Jugador jugador){
		buscador.mostrarInfraccionesJ(jugador)
		
		
		
	}
	
	
	
	}
	
	
