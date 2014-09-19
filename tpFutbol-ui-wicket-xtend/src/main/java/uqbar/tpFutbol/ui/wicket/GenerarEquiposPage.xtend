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
import java.util.List
import uqbar.tpFutbol.ordenamiento.OrdenarPartidoPorUltimaCalificacion
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import org.apache.wicket.markup.html.form.TextField
import uqbar.tpFutbol.ordenamiento.OrdenarPartidoPorNCalificaciones

class GenerarEquiposPage extends WebPage{
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	private final Partido partido
	private final OrganizadorFutbolPage mainPage
	private final GeneradorPartidos generador
	private final Administrador administrador
	private final DividirPorParEImpar criterioPar
	private final DividirPorPosicion14589 criterio14589
	private final OrdenamientoPorHandicap ordHandicap
	private final OrdenarPartidoPorUltimaCalificacion ordPromedioNotasUltimo
	private final OrdenarPartidoPorNCalificaciones ordPromedioNotasNPartidos
	private int cantPartidos = 1

	
		new(Partido partidoNuevo, OrganizadorFutbolPage  mainPage) {
		this.generador= new GeneradorPartidos
		this.mainPage = mainPage
		this.partido = partidoNuevo
		this.administrador = administrador
		this.criterioPar= new DividirPorParEImpar
		this.criterio14589 = new DividirPorPosicion14589()
		this.ordHandicap = new OrdenamientoPorHandicap()
		this.ordPromedioNotasUltimo = new  OrdenarPartidoPorUltimaCalificacion ()
		this.ordPromedioNotasNPartidos = new OrdenarPartidoPorNCalificaciones()
		
			
			
		val Form<GeneradorPartidos> nuevoPartidoForm = new Form<GeneradorPartidos>("equiposForm", new CompoundPropertyModel<GeneradorPartidos>(this.generador))
		this.agregarAcciones(nuevoPartidoForm)
		this.agregarResultados(nuevoPartidoForm)
		this.agregarCamposEdicion(nuevoPartidoForm)
		this.addChild(nuevoPartidoForm)
		this.mostrarEquipos()
	
	}
	
	def mostrarEquipos(){
		this.generador.buscarPartidos()
		
	}
	
	// BOTON PARA CAMBIAR CANTIDAD PARTIDOS
	def agregarCamposEdicion(Form<GeneradorPartidos> parent){
		parent.addChild(new TextField<String>("cantPartidos"))
	
	}
	
	def agregarAcciones(Form<GeneradorPartidos> parent) {
		parent.addChild(new XButton("aceptar").onClick = [|this.cambiarCantidadPartidos(cantPartidos)
		])
			
		
		}
		
		
	///////////////////////////
	

	
	
	
	
	
	
	def agregarResultados(Form<GeneradorPartidos> parent) {
		val listViewPartidos = new XListView("resultados")
			listViewPartidos.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("codPartido"))
			item.addChild(new Label("inscripciones.nombreParticipantes"))
			item.addChild(new Label("nombreJugadorEquipo1"))
			item.addChild(new Label("nombreJugadorEquipo2"))
			item.addChild(new XButton("criterioPar").onClick = [| dividirEquiposParImpar(item.modelObject)
			]) 
			item.addChild(new XButton("criterio14589").onClick = [| dividirEquipos14589(item.modelObject)
			])
			item.addChild(new XButton("ordenarPorHandicap").onClick = [| ordenarPartido(item.modelObject,ordHandicap)])	
			item.addChild(new XButton("ordenarPorUltimaCalificacion").onClick = [| ordenarPartido(item.modelObject,ordPromedioNotasUltimo)])
			item.addChild(new XButton("ordenarPorNCalificaciones").onClick = [| ordenarPartidoCompuesto(item.modelObject,ordPromedioNotasNPartidos)])
			item.addChild(new XButton("mixto").onClick = [| ordenarPartidoMixto(item.modelObject)])
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
	
	def ordenarPartido (Partido partidoPed, OrganizadorCommand criterio){
		
		 Partido.home.update(partidoPed.ordenarLaListaPorCriterioPrueba(criterio,1))
		
	}
	
	def ordenarPartidoCompuesto (Partido partidoPed, OrganizadorCommand criterio){
		 Partido.home.update(partidoPed.ordenarLaListaPorCriterioPrueba(criterio,generador.cantPartidos))
		
	}
	
	def ordenarPartidoMixto (Partido partidoPed){
		
		 Partido.home.update(partidoPed.ordenarLaListaPorPromedioDeVariosCriteriosPrueba(partidoPed,cantPartidos))
		
	}
	
	def cambiarCantidadPartidos(int valor){
		generador.setCantPartidos(valor)
	}


	
	
	
	
	def volver() {
		this.mostrarEquipos()
		responsePage = mainPage
	}
	
	def datosParticipantes(Partido partido) {
		responsePage = new DatosEquipoPage(partido, this) 
	}
	
	
	
	
	
	
	
	
	
	
	}
	
	

	

	
	


	
	
