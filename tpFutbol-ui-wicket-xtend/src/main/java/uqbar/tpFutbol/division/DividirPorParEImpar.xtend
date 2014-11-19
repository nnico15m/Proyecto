package uqbar.tpFutbol.division



import java.util.List
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador
import org.uqbar.commons.model.Entity
import uqbar.tpFutbol.domain.HomePartidos

class DividirPorParEImpar extends DividirEquiposCommand    {
	
	override dividirEquipos(Partido partido){
		
		val listaImpares = partido.participantes.filter[jug|jug.unJugEsImpar(partido)].toList
		val listaPares = partido.participantes.filter[jug|jug.unJugEsPar(partido)].toList

 		
		 partido.setEquipo1(listaImpares)
		partido.setEquipo2(listaPares)
		
		
		
	}
	
	override dividirEquiposPrueba(Partido partido){
		
		val listaImpares = partido.participantes.filter[jug|jug.unJugEsImpar(partido)].toList
		val listaPares = partido.participantes.filter[jug|jug.unJugEsPar(partido)].toList

 		
		partido.setEquipo1(listaImpares)
		partido.setEquipo2(listaPares)
		return partido
		
		
		
	}
	
	def agregarPosicionesParaEquipo(){
		
		}
	
	
	
	override es14589(int posicionJug) {
		false
	}
	
	override es236710(int posicionJug) {
		false
	}
		
	
	
	
	}
	
	
	