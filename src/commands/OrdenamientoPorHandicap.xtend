package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenamientoPorHandicap implements OrganizadorCommand {
	

	@Property int cantidadDePartido
	
	
	
	override def List<Jugador> ordenarLaLista(Partido partido,int cantidadDePartido){
		
		
		partido.participantes.sortBy[nivelDeJuego]
		
		
		
	}
	
	override inicializarCntidadDePartido() {
			this.setCantidadDePartido(0)
			
			
	}
	
	
	
	}





	
	
	