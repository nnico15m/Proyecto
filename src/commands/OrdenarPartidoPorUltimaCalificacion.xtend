package commands

import proyecto.Partido

class OrdenarPartidoPorUltimaCalificacion implements OrganizadorCommand  {
	
	override ordenarLaLista(Partido partido){
		
		
		partido.ordenarListaPorPromedioCalificacionesUltimoPartido()
		
		
		
		}
	
	
}