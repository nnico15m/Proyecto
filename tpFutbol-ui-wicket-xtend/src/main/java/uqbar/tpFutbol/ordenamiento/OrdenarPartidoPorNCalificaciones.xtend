package uqbar.tpFutbol.ordenamiento

import java.util.List
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador

class OrdenarPartidoPorNCalificaciones implements OrganizadorCommand  {
	
	@Property int cantidadDePartido
	
	override def ordenarLaLista(Partido partido, int n){
				
	partido.participantes.forEach[j|j.promedioDeUltimasNCalificacionesPedidas(partido,n)]
	setearPromedioCalificaciones(partido)
		
		
		
	}
	
	override def ordenarLaListaPrueba(Partido partido, int n){
	
	partido.participantes.forEach[j|j.promedioDeUltimasNCalificacionesPedidas(partido,n)]
	val aux1 = partido.participantes.sortBy[promedioCalificaciones]
	partido.inscripciones.participantes.clear
	partido.inscripciones.participantes.addAll(aux1)
	return partido	

		
		
		
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