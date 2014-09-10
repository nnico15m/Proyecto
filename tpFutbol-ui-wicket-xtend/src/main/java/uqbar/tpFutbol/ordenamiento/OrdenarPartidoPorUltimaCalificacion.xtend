package uqbar.tpFutbol.ordenamiento


import java.util.List
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador

class OrdenarPartidoPorUltimaCalificacion implements OrganizadorCommand  {
	
	
		@Property int cantidadDePartido
	
	override def ordenarLaLista(Partido partido,int cantidadDePartido){
		
		
	partido.participantes.forEach[j|j.promedioDeCalificacionesUltimoPartido(partido)]
	setearPromedioCalificaciones(partido)
		
		
		
	}
	
	def setearPromedioCalificaciones(Partido partido) {
		val aux1= partido.participantes.sortBy[promedioCalificacionesUltPart]
		return aux1
	}
	
	override inicializarCntidadDePartido() {
				
		
	}
	
	override int obtenerValor(Partido partido,Jugador jugador, int n){
		
	
		
		jugador.promedioDeCalificacionesUltimoPartido(partido)

	
	}
	
}