package uqbar.tpFutbol.domain

import java.io.Serializable
import java.util.List
import org.uqbar.commons.utils.ApplicationContext
import java.util.ArrayList
import uqbar.tpFutbol.domain.Jugador
import java.util.Date

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
class BuscadorJugadores implements Serializable {

	@Property String nombre
	@Property String apodo
	@Property Date fecha
	@Property int desdeHandicap
	@Property int hastaHandicap
	@Property int desdePromUltPart
	@Property int hastaPromUltPart
	@Property boolean tieneInfracciones = false
	@Property List<Jugador> results
	@Property List<Jugador> datos
	@Property List<Jugador> amigos
	@Property List<Infracciones> listaI
	
	
	
	// ********************************************************
	// ** Acciones
	// ********************************************************
	
	
	
	def void buscar(){
		results = new ArrayList<Jugador>
		results = getHomeJugadores.search(getNombre, getApodo, getFecha, getDesdeHandicap, getHastaHandicap,getDesdePromUltPart,getHastaPromUltPart, tieneInfracciones)
	}
	
	def void buscarJugador(Jugador jugadorPedido){

		datos = new ArrayList<Jugador>
		datos = getHomeJugadores.search(getNombre, jugadorPedido.apodo, getFecha, getDesdeHandicap, getHastaHandicap, getDesdePromUltPart,getHastaPromUltPart, tieneInfracciones)
	
	}
	
	def void buscarDatosJugador(Jugador jugadorPedido){

		datos = new ArrayList<Jugador>
		datos = getHomeJugadores.searchDatosJug(getNombre,jugadorPedido.apodo, getFecha, getDesdeHandicap, getHastaHandicap, getDesdePromUltPart,getHastaPromUltPart)
	
	}
	
	def void mostrarAmigosJ(Jugador jugadorPedido){

		
		datos = jugadorPedido.amigos
	
		
	}
	
	def void mostrarInfraccionesJ(Jugador jugadorPedido){

		
		listaI= jugadorPedido.infracciones
	}
	
	


	

	
	def HomeJugadores getHomeJugadores() {
		ApplicationContext::instance.getSingleton(typeof(Jugador))
	}
	
	

}
