package commands

import java.util.List
import proyecto.Jugador
import proyecto.Partido

class OrdenarPartidoPorNCalificaciones implements OrganizadorCommand  {
	
	@Property int cantidadDePartido
	
	override def ordenarLaLista(Partido partido, int n){
				
	partido.participantes.forEach[j|j.promedioDeUltimasNCalificacionesPedidas(partido,n)]
	setearPromedioCalificaciones(partido)
		
		
		
	}
	
	def setearPromedioCalificaciones(Partido partido) {
		val aux1= partido.participantes.sortBy[promedioCalificacionesUltPart]
		return aux1
	}
	
	override inicializarCntidadDePartido() {
		
		
		}
		
	override int obtenerValor(Partido partido,Jugador jugador, int n){
		
	
		
		jugador.promedioDeUltimasNCalificacionesPedidas(partido,n)

	
	}
	
	
	
}