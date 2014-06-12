package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenarPartidoPorUltimaCalificacion implements OrganizadorCommand  {
	
	override def ordenarLaLista(Partido partido){
		
		
	val listaAux = partido.participantes.forEach[j|j.promedioDeCalificacionesUltimoPartido(Partido)]
	listaAux.sortBy[promedioCalificacionesUltPart]
	return listaAux
		
		
		
	}
		

	
	
	
}