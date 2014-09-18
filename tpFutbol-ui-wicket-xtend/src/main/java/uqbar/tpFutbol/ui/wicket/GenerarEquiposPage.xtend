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
import uqbar.tpFutbol.division.DividirEquiposCommand
import org.apache.wicket.markup.html.form.DropDownChoice
import org.apache.wicket.model.Model

class GenerarEquiposPage extends WebPage{
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	//private final Partido partido
	private final OrganizadorFutbolPage mainPage
	private final GeneradorPartidos generador
	private final Administrador administrador
	private final DividirPorParEImpar criterioPar
	private final DividirPorPosicion14589 criterio14589
	private final OrdenamientoPorHandicap ordHandicap
	private final int n = 1
	private final List<Integer> listPosicionesValidas =  newArrayList(0,3,4,7,8)
	private final List<Integer>  listPosicionesSobrantes =  newArrayList(1,2,5,6,9)
	
		new(Partido partidoNuevo, OrganizadorFutbolPage  mainPage) {
		this.generador= new GeneradorPartidos
		this.mainPage = mainPage
		//this.partido = partidoNuevo
		this.administrador = administrador
		this.criterioPar= new DividirPorParEImpar
		this.criterio14589 = new DividirPorPosicion14589()
		this.ordHandicap = new OrdenamientoPorHandicap()
		
			
			
		val Form<GeneradorPartidos> nuevoPartidoForm = new Form<GeneradorPartidos>("equiposForm", new CompoundPropertyModel<GeneradorPartidos>(this.generador))
		//this.agregarAcciones(nuevoPartidoForm)
		this.agregarResultados(nuevoPartidoForm)
		this.addChild(nuevoPartidoForm)
		this.mostrarEquipos()
	
	}
	
	def mostrarEquipos(){
		this.generador.buscarPartidos()
		
	}
	
	//def agregarAcciones(Form<GeneradorPartidos> parent) {
		
			
		
		//}
		
		
	
	
	
	def agregarResultados(Form<GeneradorPartidos> parent) {
		val listViewPartidos = new XListView("resultados")
			listViewPartidos.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("codPartido"))
			item.addChild(new Label("inscripciones.nombreParticipantes"))
			item.addChild(new Label("equipo1"))
			item.addChild(new Label("equipo2"))
			item.addChild(new XButton("criterioPar").onClick = [| dividirEquiposParImpar(item.modelObject)
			]) 
			item.addChild(new XButton("criterio14589").onClick = [| dividirEquipos14589(item.modelObject)
			])
			item.addChild(new XButton("ordenarPorHandicap").onClick = [| ordenarPorHandicap(item.modelObject)])	
			item.addChild(new XButton("datosEquipo1").onClick = [| datosParticipantes(item.modelObject)])
					
			]
			
		parent.addChild(listViewPartidos)
	}
	
	def dividirEquiposParImpar(Partido partidoPed){
	
		
	
		Partido.home.update(partidoPed.dividirEquiposPrueba(criterioPar))
		
		
	
	
	
	}
	
	def dividirEquipos14589(Partido partidoPed){
		
		
		Partido.home.update(partidoPed.dividirEquiposPrueba(criterio14589))
		
		
		
	
	}
	
	
	def ordenarPorHandicap(Partido partidoPed){
		
		 Partido.home.update(partidoPed.ordenarLaListaPorCriterioPrueba(ordHandicap,n))		
		
	}
	
	def es14589(int posicionJug){

	listPosicionesValidas.contains(posicionJug)
}
	
	def es236710(int posicionJug){

	listPosicionesSobrantes.contains(posicionJug)
}
	
	
	def volver() {
		this.mostrarEquipos()
		responsePage = mainPage
	}
	
	def datosParticipantes(Partido partido) {
		responsePage = new DatosEquipoPage(partido, this) 
	}
	
	
	
	
	
	
	
	
	
	
	}
	
	

	

	
	


	
	
