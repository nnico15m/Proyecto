package uqbar.tpFutbol.domain

import java.io.Serializable
import java.util.List
import org.uqbar.commons.utils.ApplicationContext
import java.util.ArrayList
import uqbar.tpFutbol.domain.HomePartidos
import uqbar.tpFutbol.ordenamiento.OrganizadorCommand
import org.uqbar.commons.model.UserException
import org.uqbar.commons.utils.Observable
import uqbar.tpFutbol.dao.PartidosRepo
import uqbar.tpFutbol.dao.JugadoresRepo
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
@Observable
class GeneradorPartidos implements Serializable {


	@Property List<Partido> resultados = new ArrayList<Partido>
	@Property Partido partidoSeleccionado
	@Property int cantPartidos
	@Property List<Jugador> equipos 
	@Property List<Partido> listaE = new ArrayList<Partido>
	@Property List<Partido> listaAux = new ArrayList<Partido>
	

	// ********************************************************
	// ** Acciones
	// ********************************************************
	
	
	
	def void buscarPartidos(){

//		resultados = getHomePartidos.search()
		listaAux = new PartidosRepo().obtenerLosQueTienenUnEquipo
		listaE = new PartidosRepo().getAll()
		resultados = new PartidosRepo().getAll()
		listaAux.forEach[partido|partido.setearEsosEquipos()]
		listaE = listaAux
		
		
	
		
	}
	
	def void setCantPartidos(int cantidad) {
		
		this._cantPartidos= cantidad
	}
	
	
	
	def mostrarEquiposGen(Partido partido) {
		
	
		
	//	equipos = getHomePartidos.search().findFirst[codPartido == codPartidoActual].participantes
		equipos = new PartidosRepo().getAllInscriptos(partido)
	}
	
	def actualizarCantPartidos() {
		this.validarCantidad(this.cantPartidos)
		
	}
	
	def void validarCantidad(int cantPartidos) {
		if (cantPartidos > 4) {
			throw new UserException("No se puede tantos partidos!")
		}
		else{
					setCantPartidos(cantPartidos)
		}
	}
	
	
		
	
	
	def HomePartidos getHomePartidos() {
		ApplicationContext::instance.getSingleton(typeof(Partido))
	}
	
	
	def obtenerParticipantesP (Partido partidoPed){
		
		//homePartidos.obtenerParticipantes(partidoPed)
	//	new PartidosRepo().getAllInscriptos(partidoPed)

		
		
	}	
	
	
	def void setearEsosEquipos(Partido partidoPed){
		
		val codPartidoPed = new PartidosRepo().obtenerCriterioDivision(partidoPed).getDivisionPers
		if(codPartidoPed == 1){
			val partidoNuevo = partidoPed.dividirEquiposPrueba(new DividirPorParEImpar)
			partidoPed.setEquipo1(partidoNuevo.equipo1)
			partidoPed.setEquipo2(partidoNuevo.equipo2)
			
		}
		if(codPartidoPed == 2){
			val partidoNuevo = partidoPed.dividirEquiposPrueba(new DividirPorPosicion14589)
			partidoPed.setEquipo1(partidoNuevo.equipo1)
			partidoPed.setEquipo2(partidoNuevo.equipo2)
			
		}
	}
	
	def actualizarListaEquipos(){
		listaE = new PartidosRepo().getAll()
	}
}
