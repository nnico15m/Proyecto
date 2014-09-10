package uqbar.tpFutbol.division



import java.util.List
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador

class DividirPorParEImpar implements DividirEquiposCommand {
	
	override dividirEquipos(Partido partido){
		
		val listaImpares = partido.participantes.filter[jug|jug.unJugEsImpar(partido)]
		val listaPares = partido.participantes.filter[jug|jug.unJugEsPar(partido)]

 		
		partido.setEquipo1(listaImpares)
		partido.setEquipo2(listaPares)
		
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
	
	
	