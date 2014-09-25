package uqbar.tpFutbol.domain

import java.io.Serializable
import java.util.List
import org.uqbar.commons.utils.ApplicationContext
import java.util.ArrayList
import uqbar.tpFutbol.domain.HomePartidos
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand

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
	@Property int cantPartidos
	@Property List<Jugador> equipos
	@Property List<Partido> listaE

	// ********************************************************
	// ** Acciones
	// ********************************************************
	
	
	
	def void buscarPartidos(){
		resultados = new ArrayList<Partido>
		listaE = new ArrayList<Partido>
		resultados = getHomePartidos.search()
		listaE = getHomePartidos.search()
		
		
	}
	
	def actualizarCantPartidos(){
		this.cantPartidos = cantPartidos
	}
	
	
	
	def mostrarEquiposGen(Partido partido) {
		
	
		val codPartidoActual = partido.codPartido
		equipos = getHomePartidos.search().findFirst[codPartido == codPartidoActual].participantes
		
	}
	
	
		
	
	
	def HomePartidos getHomePartidos() {
		ApplicationContext::instance.getSingleton(typeof(Partido))
	}
		
	
}
