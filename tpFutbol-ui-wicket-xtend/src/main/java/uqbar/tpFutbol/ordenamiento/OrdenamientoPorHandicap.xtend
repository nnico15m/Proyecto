package uqbar.tpFutbol.ordenamiento

import java.util.List
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador

class OrdenamientoPorHandicap implements OrganizadorCommand {
	

	@Property int cantidadDePartido
	
	
	
	override def List<Jugador> ordenarLaLista(Partido partido,int n){
		
		
		partido.participantes.sortBy[nivelDeJuego]
		
		
		
	}
	
		override def List<Jugador> ordenarLaListaPrueba(Partido partido,int n){
		
		
		val participantesOrd = partido.participantes.sortBy[nivelDeJuego]
		partido.participantes.clear
		partido.participantes.addAll(participantesOrd)
		return participantesOrd
		
		
	}
	
	override inicializarCntidadDePartido() {
			
			
			
	}
	
	override int obtenerValor(Partido partido,Jugador jugador,int n){
		
		jugador.nivelDeJuego
		
		
	
		
	}
	
	
	}





	
	
	