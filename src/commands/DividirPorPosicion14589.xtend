package commands

import proyecto.Partido
import java.util.List
import java.util.ArrayList

class DividirPorPosicion14589 implements DividirEquiposCommand {
	@Property List<Integer>  listPosicionesValidas =  new ArrayList<Integer>()
	@Property List<Integer>  listPosicionesSobrantes =  new ArrayList<Integer>()


	override dividirEquipos(Partido partido){
		
		
		
		val listaAux = partido.participantes	
		
		
		val lista14589= listaAux.filter[jug|jug.esDeLaPosicion14589(partido)]
		val lista236710= listaAux.filter[jug|jug.esDeLaPosicion236710(partido)]
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)




}

def agregarPosicionesParaEquipo(){
	
		
		listPosicionesValidas.add(0)
		listPosicionesValidas.add(3)
		listPosicionesValidas.add(4)
		listPosicionesValidas.add(7)
		listPosicionesValidas.add(8)
		

}

override verSiLaPosicionDelJugEsValida(int posicionJug){
this.agregarPosicionesParaEquipo()
	listPosicionesValidas.contains(posicionJug)
	}
	
override posicionesSobrantes(int posicionJug){
	listPosicionesSobrantes.add(1)
	listPosicionesSobrantes.add(2)
	listPosicionesSobrantes.add(5)
	listPosicionesSobrantes.add(6)
	listPosicionesSobrantes.add(9)
	listPosicionesSobrantes.contains(posicionJug)
}
	
}