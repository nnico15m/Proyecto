package proyecto

import java.util.List
import java.util.ArrayList

import commands.OrganizadorCommand

class Administrador extends Jugador {
	
	@Property List<Jugador> pendientesDeAprobacion = new ArrayList(25)
	@Property List<NotaDeRechazo> rechazos = new ArrayList(25)
	
	def sugerirMiembro(Jugador jugador){
		this.pendientesDeAprobacion.add(jugador)
	}
	
	def rechazarJugador(Jugador jugador, String motivo){
		this.pendientesDeAprobacion.remove(jugador)
		this.generarNotaDeRechazo(jugador, motivo)
	}
	
	def generarNotaDeRechazo(Jugador jugador, String motivo) {
		var nota = new NotaDeRechazo(jugador, motivo, new Fecha().fechaDeHoy)
		this.rechazos.add(nota)
	}
	
	def aprobarJugador(Jugador jugador){
		this.pendientesDeAprobacion.remove(jugador)
		comunidad.agregarALaComunidad(jugador)
	}



	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
														//Entrega 4//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////							
	
	def organizaElPartido(Partido partidoAOrganizar,OrganizadorCommand criterio){
		
		partidoAOrganizar.ordenarLaListaPorCriterio(criterio)
		
		
		
		
	}




	
		
		
		
		
		
		
	
	
}