package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenarPartidoPorUltimaCalificacion implements OrganizadorCommand  {
	
	override def ordenarLaLista(Partido partido, int n){
		
		
	partido.participantes.forEach[j|j.promedioDeCalificacionesUltimoPartido(partido)]
	val aux1= partido.participantes.sortBy[promedioCalificacionesUltPart]
	return aux1
		
		
		
	}
		

	
	
	
}