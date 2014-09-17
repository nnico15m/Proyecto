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
		
		
		
		
	//	val Form<BuscadorMaterias> datosForm = new Form<BuscadorMaterias>("datosMateriasForm", new CompoundPropertyModel<BuscadorMaterias>(this.buscador3))
	//	this.agregarGrillaDatos(datosForm)
	//	this.addChild(datosForm)
		
	}

	
	
	def mostrarJugadores(){
		this.buscador.buscar()
	
	}

def agregarCamposBusqueda(Form<BuscadorJugadores> parent) {
	parent.addChild(new TextField<String>("nombre"))
	parent.addChild(new TextField<String>("apodo"))
	parent.addChild(new TextField<String>("fecha"))
		
		
	}

//	def mostrarDatosMaterias(){
	//	this.buscador2.buscarDatos()
	
//	}
	
	def agregarAccionesJug(Form<BuscadorJugadores> parent) {
		
					
		
		parent.addChild(new XButton("nuevoJugador").onClick = [| nuevoJugador(new Jugador) ]) //PARA MATERIA
		val buscarButton = new XButton("buscar")
		buscarButton.onClick = [| buscador.buscar ]
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
			item.addChild(new Label("nombreJugador"))
			item.addChild(new Label("apodo"))
			item.addChild(new Label("nivelDeJuego"))
			item.addChild(new Label("promedioCalificacionesUltPart"))
			item.addChild(new Label("promedioCalificaciones"))
			item.addChild(new Label("fechaDeNacimiento"))
			item.addChild(new Label("amigos"))
			item.addChild(new Label("infracciones"))
			item.addChild(new Label("cantPartidosJugados"))

			
			//item.addChild(new XButton("editarDatosMateria").onClick = [| editarDatos(item.modelObject) ])
			//item.addChild(new XButton("editarNotasMateria").onClick = [| editarNotas(item.modelObject) ])
			//item.addChild(new XButton("eliminarMat")
				//.onClick = [| 
					//buscador2.materiaSeleccionada = item.modelObject
					//buscador2.eliminarMateriaSeleccionada
				//]
		//	)
		]
		parent.addChild(listViewJugadores)
		
	}
	
	/* 
	def agregarGrillaDatosMat(Form<BuscadorMaterias> parent) {
		val listViewDatos = new XListView("datos")
			listViewDatos.populateItem = [ item2 |
			item2.model = item2.modelObject.asCompoundModel
			item2.addChild(new Label("profesor"))
			item2.addChild(new Label("anioCursada"))
			val checkResumen = new CheckBox("finalAprobado")
			checkResumen.setEnabled(false)
			item2.addChild(checkResumen)
									
			
		]
		parent.addChild(listViewDatos)
		
		
		
		
	}
		
*/
		
			
			
	
	
	}

