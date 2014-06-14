package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenamientoPorHandicap implements OrganizadorCommand {
	

	@Property int cantidadDePartido
	
	
	
	override def List<Jugador> ordenarLaLista(Partido partido,int n){
		
		
		partido.participantes.sortBy[nivelDeJuego]
		
		
		
	}
	
	override inicializarCntidadDePartido() {
			
			
			
	}
	
	override int obtenerValor(Partido partido,Jugador jugador,int n){
		
		jugador.nivelDeJuego
		
		
	
		
	}
	
	
	}





	
	
	