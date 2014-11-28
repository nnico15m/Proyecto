package uqbar.tpFutbol.division



import java.util.List
import uqbar.tpFutbol.domain.Partido
import uqbar.tpFutbol.domain.Jugador
import org.uqbar.commons.model.Entity
import uqbar.tpFutbol.domain.HomePartidos
import uqbar.tpFutbol.dao.PartidosRepo
import uqbar.tpFutbol.ordenamiento.OrdenamientoPorHandicap
import uqbar.tpFutbol.ordenamiento.OrdenarPartidoPorUltimaCalificacion

class DividirPorParEImpar extends DividirEquiposCommand    {
	
	override dividirEquipos(Partido partido){
		
		val listaImpares = partido.participantes.filter[jug|jug.unJugEsImpar(partido)].toList
		val listaPares = partido.participantes.filter[jug|jug.unJugEsPar(partido)].toList

 		
		partido.setEquipo1(listaImpares)
		partido.setEquipo2(listaPares)
		
		
		
	}
	
	override dividirEquiposPrueba(Partido partido){
	
		val listaAux2 = partido.inscripcionesAuxOrd	
		
		
		if(listaAux2.size >10){
		
		partido.inscripcionesAuxOrd = listaAux2.subList(0,9)
		}
		
		
	

		val listaImpares = partido.inscripcionesAuxOrd.filter[jug|jug.unJugEsImpar(partido)].toList
		val listaPares =partido.inscripcionesAuxOrd.filter[jug|jug.unJugEsPar(partido)].toList

 		
		partido.setEquipo1(listaImpares)
		partido.setEquipo2(listaPares)
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
	
	
	