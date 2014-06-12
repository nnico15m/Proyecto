package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenamientoPorHandicap implements OrganizadorCommand {
	
	override def List<Jugador> ordenarLaLista(Partido partido){
		
		
		partido.participantes.sortBy[nivelDeJuego]
		
		
		
	}
	
	
		
	
	
	}





	
	
	