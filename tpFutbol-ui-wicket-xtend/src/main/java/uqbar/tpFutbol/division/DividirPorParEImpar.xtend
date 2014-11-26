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
	//	partido.inscripcionesAuxOrd= partido.participantes()
		val listaAux2 = partido.inscripcionesAuxOrd	
		val listaAux = listaAux2
		
		if(listaAux.size >10){
		
		listaAux.subList(0,10)
		}
		
		//val listaAuxNombres = listaAux.map[nombreJugador]
	

		val listaImpares = listaAux.filter[jug|jug.unJugEsImpar(partido)].toList
		val listaPares = listaAux.filter[jug|jug.unJugEsPar(partido)].toList

 		
		partido.setEquipo1(listaImpares)
		partido.setEquipo2(listaPares)
		return partido
		
		
		
	}
	
	override dividirEquiposPruebaBase(Partido partido){
		partido.inscripcionesAuxOrd= partido.participantes()
		val listaAux = partido.inscripcionesAuxOrd	
		//val listaAuxNombres = listaAux.map[nombreJugador]
	

		val listaImpares = listaAux.filter[jug|jug.unJugEsImpar(partido)].toList
		val listaPares = listaAux.filter[jug|jug.unJugEsPar(partido)].toList

 		
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
	
	
	