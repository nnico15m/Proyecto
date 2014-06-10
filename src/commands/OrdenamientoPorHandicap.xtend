package commands

import proyecto.Partido

class OrdenamientoPorHandicap implements OrganizadorCommand {
	
	override ordenarLaLista(Partido partido) {
	
		
		partido.ordenaListaPorHandicap()
		
	
	}
	
	
	
	
}