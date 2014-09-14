package uqbar.tpFutbol.domain

import java.io.Serializable
import java.util.List
import org.uqbar.commons.utils.ApplicationContext
import java.util.ArrayList
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.division.DividirPorParEImpar
import uqbar.tpFutbol.division.DividirPorPosicion14589

/**
 * Application model que representa la búsqueda de {@link Celular}.
 * Contiene:
 * <ul>
 * 	<li>El estado de los atributos por los cuales buscar: numero y nombre</li>
 *  <li>El comportamiento para realizar la búsqueda (en realidad delega en otros objetos)</li>
 *  <li>El estado del resultado de la búsqueda, es decir que recuerda la lista de Celulares resultado</li>
 *  <li>El estado de la selección de un Celular para poder utilizar el comportamiento que sigue...</li>
 *  <li>Comportamiento para eliminar un Celular seleccionado.</li>
 * </ul>
 *
 * Este es un objeto transiente, que contiene estado de la ejecución para un usuario en particular
 * en una ejecución de la aplicación en particular.
 *
 * @author npasserini
 */
@org.uqbar.commons.utils.Observable
class GeneradorPartidos implements Serializable {


	@Property List<Partido> resultados
	@Property Partido partidoSeleccionado
	@Property DividirPorParEImpar criterioPar
	@Property DividirPorPosicion14589 criterio14589
	// ********************************************************
	// ** Acciones
	// ********************************************************
	
	
	
	def void buscarPartidos(){
		resultados = new ArrayList<Partido>
		resultados = getHomePartidos.search()
	}
	
	def  void dividirEquiposParImpar(Partido partido){
		criterioPar.dividirEquipos(partido)
		this.buscarPartidos()	
	}
	
	def  void dividirEquipos14589(Partido partido){
		val partidoPed = getHomePartidos.alguno()
		criterio14589.dividirEquipos(partidoPed)
		this.buscarPartidos()
	}
	


		
	
	
	def HomePartidos getHomePartidos() {
		ApplicationContext::instance.getSingleton(typeof(Partido))
	}

}
