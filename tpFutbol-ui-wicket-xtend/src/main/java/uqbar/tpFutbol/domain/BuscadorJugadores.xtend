package uqbar.tpFutbol.domain

import java.io.Serializable
import java.util.List
import org.uqbar.commons.utils.ApplicationContext
import java.util.ArrayList
import uqbar.tpFutbol.domain.Jugador
import java.util.Date
import uqbar.tpFutbol.dao.JugadoresRepo
import org.uqbar.commons.utils.Observable
import java.util.Set


@Observable
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
	
	def void mostrarTodos(){
		results = new ArrayList<Jugador>
		results = new JugadoresRepo().getAll()
	}
	
	
	def void buscarJugador(){

		results = new ArrayList<Jugador>
		results = new JugadoresRepo().buscarJug(getNombre, getApodo, getFecha, getDesdeHandicap, getHastaHandicap, getDesdePromUltPart,getHastaPromUltPart, tieneInfracciones)
	
	}
	
	def void buscarDatosJugador(Jugador jugadorPedido){

		datos = new ArrayList<Jugador>
	//	datos = getHomeJugadores.searchDatosJug(getNombre,jugadorPedido.apodo, getFecha, getDesdeHandicap, getHastaHandicap, getDesdePromUltPart,getHastaPromUltPart)
		datos = new JugadoresRepo().buscarDatos(jugadorPedido)
	}
	
	def void mostrarAmigosJ(Jugador jugadorPedido){

		
	//	datos = jugadorPedido.amigos
		datos= new JugadoresRepo().buscarAmigos(jugadorPedido)
	
		
	}
	
	def void mostrarInfraccionesJ(Jugador jugadorPedido){

		
		//listaI= jugadorPedido.infracciones
		listaI= new JugadoresRepo().buscarInfracciones(jugadorPedido)
	}
	
	
	def fillJugadores() {
		
		this.results = new JugadoresRepo().getAll()
	}

	
/*
	
	def HomeJugadores getHomeJugadores() {
		ApplicationContext::instance.getSingleton(typeof(Jugador))
	}
*/	
	

}
