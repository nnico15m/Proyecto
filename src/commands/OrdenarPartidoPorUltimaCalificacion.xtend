package commands

import proyecto.Partido
import java.util.List
import proyecto.Jugador

class OrdenarPartidoPorUltimaCalificacion implements OrganizadorCommand  {
	
	
		@Property int cantidadDePartido
	
	override def ordenarLaLista(Partido partido,int cantidadDePartido){
		
		
	partido.participantes.forEach[j|j.promedioDeCalificacionesUltimoPartido(partido)]
	val aux1= partido.participantes.sortBy[promedioCalificacionesUltPart]
	return aux1
		
		
		
	}
	
	override inicializarCntidadDePartido() {
		
		this.setCantidadDePartido(1)
		
	}
		

	
	
	
}