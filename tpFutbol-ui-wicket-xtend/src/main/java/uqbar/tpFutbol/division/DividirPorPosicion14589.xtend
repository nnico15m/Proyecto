package uqbar.tpFutbol.division


import java.util.List
import java.util.ArrayList
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.dao.PartidosRepo
import uqbar.tpFutbol.ordenamiento.OrdenamientoPorHandicap
import uqbar.tpFutbol.ordenamiento.OrdenarPartidoPorUltimaCalificacion

class DividirPorPosicion14589  extends DividirEquiposCommand {
	@Property List<Integer>  listPosicionesValidas =  newArrayList(0,3,4,7,8)
	@Property List<Integer>  listPosicionesSobrantes =  newArrayList(1,2,5,6,9)

	override dividirEquipos(Partido partido){
			
		val listaAux = partido.inscripcionesAuxOrd	
		


		val lista14589= listaAux.filter[jug|this.es14589(jug.obtenerPosicion(partido))].toList
		val lista236710= listaAux.filter[jug|this.es236710(jug.obtenerPosicion(partido))].toList
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)

	}
	
	override dividirEquiposPrueba(Partido partido){
			
	
		
		val listaAux = partido.inscripcionesAuxOrd		


		val lista14589= listaAux.filter[jug|this.es14589(jug.obtenerPosicion(partido))].toList
		val lista236710= listaAux.filter[jug|this.es236710(jug.obtenerPosicion(partido))].toList
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)
		return partido

	}
	
	override dividirEquiposPruebaBase(Partido partido){
			
		val aux = partido.participantes()
		val ordPers = new PartidosRepo().obtenerCriterioOrd(partido).ordenamientoPers
		var listaAux = aux
		if(ordPers == 1){
			listaAux  = partido.ordenarLaListaPorCriterioPrueba(new OrdenamientoPorHandicap,1)
		}
		if(ordPers == 2){
			listaAux = partido.ordenarLaListaPorCriterioPrueba(new OrdenarPartidoPorUltimaCalificacion,1)
		}
		if(ordPers == 3){
			listaAux =partido.ordenarLaListaPorPromedioDeVariosCriteriosPrueba(partido,1)
		}

		partido.inscripcionesAuxOrd=listaAux
		val lista14589= listaAux.filter[jug|this.es14589(jug.obtenerPosicion(partido))].toList
		val lista236710= listaAux.filter[jug|this.es236710(jug.obtenerPosicion(partido))].toList
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)
		return partido

	}



override es14589(int posicionJug){

	listPosicionesValidas.contains(posicionJug)
}
	
override es236710(int posicionJug){

	listPosicionesSobrantes.contains(posicionJug)
}
	
}