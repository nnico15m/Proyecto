package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenamientoPorHandicap implements OrganizadorCommand {
	
	override ordenarLaLista(Partido partido) {
	
		
		partido.pasameLaLista()
		
	
	}
	
	
	override ordenameLaLista(List<Jugador> jugadors){
		
		
		jugadors.sortBy[nivelDeJuego]
		
		
		
	}
	
	
	
	
}