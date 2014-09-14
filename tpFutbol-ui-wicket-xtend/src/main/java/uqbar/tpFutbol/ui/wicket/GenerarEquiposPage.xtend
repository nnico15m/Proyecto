package uqbar.tpFutbol.ui.wicket


import org.uqbar.wicket.xtend.WicketExtensionFactoryMethods
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.GeneradorPartidos


import org.apache.wicket.markup.html.WebPage
import org.apache.wicket.markup.html.form.Form
import org.apache.wicket.model.CompoundPropertyModel
import org.uqbar.wicket.xtend.XButton
import uqbar.tpFutbol.division.DividirPorParEImpar
import uqbar.tpFutbol.division.DividirPorPosicion14589
import org.apache.wicket.markup.html.form.CheckBox
import org.uqbar.wicket.xtend.XListView
import org.apache.wicket.markup.html.basic.Label

class GenerarEquiposPage extends WebPage{
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final Partido partido
	private final OrganizadorFutbolPage mainPage
	private final GeneradorPartidos generador
	
	
	
	
	
		new(Partido partidoNuevo, OrganizadorFutbolPage  mainPage) {
		this.generador= new GeneradorPartidos
		this.mainPage = mainPage
		this.partido = partidoNuevo
		
			
		val Form<GeneradorPartidos> nuevoPartidoForm = new Form<GeneradorPartidos>("equiposForm", new CompoundPropertyModel<GeneradorPartidos>(this.generador))
		
		this.agregarAcciones(nuevoPartidoForm)
		this.agregarResultados(nuevoPartidoForm)
		this.addChild(nuevoPartidoForm)
		this.mostrarEquipos()
	
	}
	
	def mostrarEquipos(){
		this.generador.buscarPartidos()
		
	}
	
	def agregarAcciones(Form<GeneradorPartidos> parent) {
		
		parent.addChild(new XButton("dividirPorParImpar").onClick = [| generador.dividirEquiposParImpar(partido)
			
				
		]	
		
		)
		parent.addChild(new XButton("dividir14589").onClick = [| generador.dividirEquipos14589(partido)
			
				
		]
			
			
			)
	
		
		
		}
		
	
		
		
	
	
	def agregarResultados(Form<GeneradorPartidos> parent) {
		val listViewPartidos = new XListView("resultados")
			listViewPartidos.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("codPartido"))
			item.addChild(new Label("inscripciones.participantes"))
			item.addChild(new Label("equipo1"))
			item.addChild(new Label("equipo2"))
			
			]
			
		parent.addChild(listViewPartidos)
	}
	
	
	
	}
	
	

	

	
	


	
	
