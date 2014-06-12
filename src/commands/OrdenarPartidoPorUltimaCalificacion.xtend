package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenarPartidoPorUltimaCalificacion implements OrganizadorCommand  {
	
	override def ordenarLaLista(Partido partido){
		
		
	partido.participantes.forEach[j|j.promedioDeCalificacionesUltimoPartido(partido)]
	partido.participantes.sortBy[promedioCalificacionesUltPart]
	return partido.participantes
		
		
		
	}
		

	
	
	
}