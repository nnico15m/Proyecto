package uqbar.tpFutbol.division


import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador

class DividirPorPosicion14589  extends DividirEquiposCommand {
	@Property List<Integer>  listPosicionesValidas =  newArrayList(0,3,4,7,8)
	@Property List<Integer>  listPosicionesSobrantes =  newArrayList(1,2,5,6,9)

	override dividirEquipos(Partido partido){
			
		val listaAux = partido.inscripcionesAuxOrd	
		
//		val lista14589= listaAux.filter[jug|jug.esDeLaPosicion14589(partido)]
//		val lista236710= listaAux.filter[jug|jug.esDeLaPosicion236710(partido)]

		val lista14589= listaAux.filter[jug|this.es14589(jug.obtenerPosicion(partido))].toList
		val lista236710= listaAux.filter[jug|this.es236710(jug.obtenerPosicion(partido))].toList
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)

	}
	
	override dividirEquiposPrueba(Partido partido){
			
	
		//partido.inscripcionesAuxOrd= partido.participantes()
	val listaAux = partido.inscripcionesAuxOrd		
//		val lista14589= listaAux.filter[jug|jug.esDeLaPosicion14589(partido)]
//		val lista236710= listaAux.filter[jug|jug.esDeLaPosicion236710(partido)]

		val lista14589= listaAux.filter[jug|this.es14589(jug.obtenerPosicion(partido))].toList
		val lista236710= listaAux.filter[jug|this.es236710(jug.obtenerPosicion(partido))].toList
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)
		return partido

	}
	
	override dividirEquiposPruebaBase(Partido partido){
			
	
		partido.inscripcionesAuxOrd= partido.participantes()
	val listaAux = partido.inscripcionesAuxOrd		
//		val lista14589= listaAux.filter[jug|jug.esDeLaPosicion14589(partido)]
//		val lista236710= listaAux.filter[jug|jug.esDeLaPosicion236710(partido)]

		val lista14589= listaAux.filter[jug|this.es14589(jug.obtenerPosicion(partido))].toList
		val lista236710= listaAux.filter[jug|this.es236710(jug.obtenerPosicion(partido))].toList
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)
		return partido

	}

/*def agregarPosicionesParaEquipo(){
	
		listPosicionesValidas.add(0)
		listPosicionesValidas.add(3)
		listPosicionesValidas.add(4)
		listPosicionesValidas.add(7)
		listPosicionesValidas.add(8)
		
} */

override es14589(int posicionJug){
//	this.agregarPosicionesParaEquipo()
	listPosicionesValidas.contains(posicionJug)
}
	
override es236710(int posicionJug){
/*	listPosicionesSobrantes.add(1)
	listPosicionesSobrantes.add(2)
	listPosicionesSobrantes.add(5)
	listPosicionesSobrantes.add(6)
	listPosicionesSobrantes.add(9) */
	listPosicionesSobrantes.contains(posicionJug)
}
	
}