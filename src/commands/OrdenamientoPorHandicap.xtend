package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenamientoPorHandicap implements OrganizadorCommand {
	
	override def void ordenarLaLista(List<Jugador> jugadors){
		
		
		jugadors.sortBy[nivelDeJuego]
		
		
		
	}
	
	
		
	
	
	}





	
	
	