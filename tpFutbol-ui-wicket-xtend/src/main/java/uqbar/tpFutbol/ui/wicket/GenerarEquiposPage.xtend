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
import uqbar.tpFutbol.ordenamiento.OrdenarPartidoPorUltimaCalificacion
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import org.apache.wicket.markup.html.form.TextField
import uqbar.tpFutbol.ordenamiento.OrdenarPartidoPorNCalificaciones
import uqbar.tpFutbol.division.DividirEquiposCommand

import uqbar.tpFutbol.inscripcion.InscripcionAbierta
import org.apache.wicket.markup.html.panel.FeedbackPanel
import org.apache.wicket.AttributeModifier
import uqbar.tpFutbol.dao.JugadoresRepo
import uqbar.tpFutbol.dao.PartidosRepo
import uqbar.tpFutbol.dao.SessionManager

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
		
		val equiposForm=  new Form<GeneradorPartidos>("datosEquipos", new CompoundPropertyModel<GeneradorPartidos>(this.generador))
		this.addChild(equiposForm)
		this.agregarTablaEquipos(equiposForm)
	
	}
	
	def mostrarEquipos(){
		this.generador.buscarPartidos()
		
	}
	
	
	
	def agregarCamposEdicion(Form<GeneradorPartidos> parent){
		
		//parent.addChild(new TextField<Integer>("cantPartidos"))
		
}
		
		
	///////////////////////////
	
	def agregarAcciones(Form<GeneradorPartidos> parent){
		parent.addChild(new XButton("nuevaCantidad")
			.onClick = [|this.mostrarEquipos()])
		parent.addChild(new XButton("volver") => [
			onClick = [| volver ]
		])
		parent.addChild(new FeedbackPanel("feedbackPanel"))
		
		
	}
	
	
	
	
	
	
	
	def agregarResultados(Form<GeneradorPartidos> parent) {
		val listViewPartidos = new XListView("resultados")
			listViewPartidos.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("id"))
			//item.addChild(new Label("inscripciones.nombreParticipantes"))
			item.addChild(new Label("inscripcionesAux"))
			item.addChild(new XButton("obtenerParticipantes").onClick = [| this.obtenerInscriptos(item.modelObject)
				
			])
			item.addChild(new XButton("criterioPar").onClick = [|setearEnLaBaseCriterioDiv(item.modelObject,1)
				 dividirEquiposP(item.modelObject,criterioPar)
				 
			]) 
			item.addChild(new XButton("criterio14589").onClick = [| setearEnLaBaseCriterioDiv(item.modelObject,2)
				dividirEquiposP(item.modelObject,criterio14589)
				
			])
			item.addChild(new XButton("ordenarPorHandicap").onClick = [|setearEnLaBaseCriterioOrden(item.modelObject,1) 
				ordenarPartido(item.modelObject,ordHandicap)
			
			])	
			item.addChild(new XButton("ordenarPorUltimaCalificacion").onClick = [| setearEnLaBaseCriterioOrden(item.modelObject,2) 
				ordenarPartido(item.modelObject,ordPromedioNotasUltimo)
				
			])
		//	item.addChild(new XButton("ordenarPorNCalificaciones").onClick = [| setearEnLaBaseCriterioOrden(item.modelObject,3) 
		//		ordenarPartidoCompuesto(item.modelObject,ordPromedioNotasNPartidos)
				
		//	])
			item.addChild(new XButton("mixto").onClick = [| setearEnLaBaseCriterioOrden(item.modelObject,4) 
				ordenarPartidoMixto(item.modelObject)
			])
			
			item.addChild(new XButton("datosEquipo1").onClick = [| datosParticipantes(item.modelObject)])
					
			]
			
		parent.addChild(listViewPartidos)
	}
	
	def agregarTablaEquipos(Form<GeneradorPartidos> parent) {
			val listEquiposInf = new XListView("listaE")
			listEquiposInf.populateItem = [ item |
			item.model = item.modelObject.asCompoundModel
			item.addChild(new Label("id"))
			item.addChild(new Label("nombreJugadorEquipo1"))
			item.addChild(new Label("nombreJugadorEquipo2"))
			item.addChild(new XButton("cerrarPartido").onClick = [| this.cerrarPartido(item.modelObject)
			]) 
			
			
			]
			
			
		
		
		parent.addChild(listEquiposInf)
		
	}
	
	
	
	def dividirEquiposP(Partido partidoPed, DividirEquiposCommand criterio){
	
		//if (partidoPed.inscripciones.class == InscripcionAbierta)	{
		//Partido.home.update(partidoPed.dividirEquiposPrueba(criterio))
		val partidoNuevo = partidoPed.dividirEquiposPrueba(criterio)
		partidoPed.setEquipo1(partidoNuevo.equipo1)
		partidoPed.setEquipo2(partidoNuevo.equipo2)
		generador.actualizarListaEquipos()
		
		//}
		//else {
			//error("El partido esta cerrado. NO PUEDEN DIVIDIRSE LOS EQUIPOS")
			
			//}
		
		
	}
	
	
	
	def cerrarPartido(Partido partidoPed){
		if (partidoPed.equipo1.empty){
			error("No puede cerrarse un partido sin equipos")
		}
		else{
			if((partidoPed.equipo1.size < 5) && (partidoPed.equipo1.size < 5)){
		error("No puede cerrarse un partido con menos de 10 jugadores")
	}
	
		
		else{
			val equipo1conf = partidoPed.equipo1
	val equipo2conf = partidoPed.equipo2
	equipo1conf.forEach[jug|jug.ingresarElEquipo(partidoPed,1)]
	equipo2conf.forEach[jug|jug.ingresarElEquipo(partidoPed,2)]
		}
	}
			
		
		
		
	
	
	
		
		
	
	
	
	
	
	
	
	

	
	
		
		
			
			
	}
	
	
	
	def ordenarPartido (Partido partidoPed, OrganizadorCommand criterio){
		
		val inscriptosOrd = partidoPed.ordenarLaListaPorCriterioPrueba(criterio,1)
		val nombresOrd = inscriptosOrd.map[nombreJugador]
		partidoPed.setInscripcionesAux(nombresOrd)
		partidoPed.setInscripcionesAuxOrd(inscriptosOrd)
	}
	
	def ordenarPartidoCompuesto (Partido partidoPed, OrganizadorCommand criterio){
		if (generador.cantPartidos != 0){
	
			val inscriptosOrd = partidoPed.ordenarLaListaPorCriterioPrueba(criterio,generador.cantPartidos)
			val nombresOrd = inscriptosOrd.map[nombreJugador]
			partidoPed.setInscripcionesAux(nombresOrd)
			partidoPed.setInscripcionesAuxOrd(inscriptosOrd)
		}
		else{
			error("Tiene que elegir la cantidad de partidos que desea ver")
		}
	}
	
	def ordenarPartidoMixto (Partido partidoPed){
		
		// Partido.home.update(partidoPed.ordenarLaListaPorPromedioDeVariosCriteriosPrueba(partidoPed,generador.cantPartidos))
		val inscriptosOrd = partidoPed.ordenarLaListaPorPromedioDeVariosCriteriosPrueba(partidoPed,generador.cantPartidos)
		val nombresOrd = inscriptosOrd.map[nombreJugador]
		partidoPed.setInscripcionesAux(nombresOrd)
		partidoPed.setInscripcionesAuxOrd(inscriptosOrd)
		
	}
	
	

	
	
	
	
	def volver() {
		mainPage.mostrarJugadores()
		responsePage = mainPage
	}
	
	def datosParticipantes(Partido partidoACrear) {
		responsePage = new DatosEquipoPage(partidoACrear, this) 
	}
	
	def setearEnLaBaseCriterioOrden(Partido partidoP,int num){
		partidoP.setOrdenamientoPers(num)
		SessionManager::getSession().saveOrUpdate(partidoP)
		SessionManager::commit()
	} 
	
	def setearEnLaBaseCriterioDiv(Partido partidoP,int num){
		partidoP.setDivisionPers(num)
		SessionManager::getSession().saveOrUpdate(partidoP)
		SessionManager::commit()
	} 
	
	def obtenerInscriptos (Partido partidoPed){
	
		val inscriptos =  new PartidosRepo().getAllInscriptos(partidoPed)
		val nombres = inscriptos.map[nombreJugador]
		partidoPed.setInscripcionesAux(nombres)
		
	}
	
	
	
	
	
	
	}
	
	

	

	
	


	
	