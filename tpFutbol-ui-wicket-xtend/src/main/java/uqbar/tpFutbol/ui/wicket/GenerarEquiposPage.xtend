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
import org.uqbar.wicket.xtend.XListView
import org.apache.wicket.markup.html.basic.Label
import uqbar.tpFutbol.domain.Administrador
import uqbar.tpFutbol.ordenamiento.OrdenamientoPorHandicap
import uqbar.tpFutbol.domain.HomePartidos
import org.uqbar.commons.utils.ApplicationContext
import org.uqbar.commons.model.Home
import java.util.List
import uqbar.tpFutbol.domain.Jugador

class GenerarEquiposPage extends WebPage{
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final Partido partido
	private final OrganizadorFutbolPage mainPage
	private final GeneradorPartidos generador
	private final Administrador administrador
	private final DividirPorParEImpar criterioPar
	private final DividirPorPosicion14589 criterio14589
	private final OrdenamientoPorHandicap ordHandicap
	private final int n = 1
	
		new(Partido partidoNuevo, OrganizadorFutbolPage  mainPage) {
		this.generador= new GeneradorPartidos
		this.mainPage = mainPage
		this.partido = partidoNuevo
		this.administrador = administrador
		this.criterioPar= new DividirPorParEImpar
		this.criterio14589 = new DividirPorPosicion14589()
		this.ordHandicap = new OrdenamientoPorHandicap()
		
			
			
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
		
		parent.addChild(new XButton("dividirPorParImpar").onClick = [| this.dividirEquiposParImpar(partido)
			volver()			
			
		])
		
		parent.addChild(new XButton("dividir14589").onClick = [| this.dividirEquipos14589(partido)
					volver()
			
						])
			
		parent.addChild(new XButton("ordenarPorHandicap").onClick = [| 
			
			val jugadoresOrd= partido.ordenarLaListaPorCriterio(ordHandicap,n)
			val posPartido = Partido.home.allInstances.indexOf(partido)
					
			Partido.home.allInstances.get(posPartido).inscripciones.participantes().empty
			Partido.home.allInstances.get(posPartido).inscripciones.participantes().addAll(jugadoresOrd)
			Partido.home.delete(partido)
			Partido.home.create(partido)
			
		
			volver()
			
				
		]	)	
			
	
		
		
		
		
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
	
	def dividirEquiposParImpar(Partido partido){
		//val prueba = administrador.dividirEquiposPorCriterioPrueba(partido,criterioPar)
		//Partido.home.delete(partido)
		//Partido.home.create(prueba)
		administrador.dividirEquiposPorCriterioPrueba(partido,criterioPar)
		Partido.home.delete(partido)
		Partido.home.create(partido)
		
	
	
	}
	
	def dividirEquipos14589(Partido partido){
		val prueba = administrador.dividirEquiposPorCriterioPrueba(partido,criterio14589)
		Partido.home.delete(partido)
		Partido.home.create(prueba)
		
		
	
	}
	
	
	
	
	
	def volver() {
		this.mostrarEquipos()
		responsePage = mainPage
	}
	
	
	
	
	
	
	}
	
	

	

	
	


	
	
