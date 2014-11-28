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
import java.util.Set

@Observable
class GeneradorPartidos implements Serializable {


	@Property List<Partido> resultados = new ArrayList<Partido>
	@Property Partido partidoSeleccionado
	@Property int cantPartidos
	@Property List<Jugador> equipos 
	@Property List<Partido> listaE = new ArrayList<Partido>
	//@Property List<Partido> listaAux = new ArrayList<Partido>
	@Property Set<Partido> listaAux 

	// ********************************************************
	// ** Acciones
	// ********************************************************
	
	
	
	def void buscarPartidos(){

//		resultados = getHomePartidos.search()
		listaAux = new PartidosRepo().obtenerLosQueTienenUnEquipo
		//listaE = new PartidosRepo().getAll()
		resultados = new PartidosRepo().getAll()
		listaAux.forEach[partido|partido.setearEsosEquipos()]
		listaE = listaAux.toList
		
		
	
		
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
		
	
		
	}	
	
	
	def void setearEsosEquipos(Partido partidoPed){
		
		val codPers = new PartidosRepo().obtenerCriterioDivision(partidoPed).getDivisionPers
		if(codPers == 1){
			val partidoNuevo = partidoPed.dividirEquiposPruebaBase(new DividirPorParEImpar)
			
			partidoPed.setEquipo1(partidoNuevo.equipo1)
			partidoPed.setEquipo2(partidoNuevo.equipo2)
			
		}
		if(codPers == 2){
			val partidoNuevo = partidoPed.dividirEquiposPruebaBase(new DividirPorPosicion14589)
			
			partidoPed.setEquipo1(partidoNuevo.equipo1)
			partidoPed.setEquipo2(partidoNuevo.equipo2)
			
		}
	}
	
	def actualizarListaEquipos(){
		listaE = new PartidosRepo().getAll()
	}
}
