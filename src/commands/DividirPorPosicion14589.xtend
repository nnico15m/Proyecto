package commands

import proyecto.Partido

class DividirPorPosicion14589 implements DividirEquiposCommand {
	override dividirEquipos(Partido partido){
		
		
		val listaAux = partido.participantes	
		
		
		val lista14589= listaAux.filter[jug|jug == listaAux.get(0) || jug == listaAux.get(3)||jug ==listaAux.get(4)|| jug ==listaAux.get(7)||jug == listaAux.get(8)]
		val lista236710= listaAux.filter[jug|jug == listaAux.get(1)||jug ==listaAux.get(2)||jug ==listaAux.get(5)||jug == listaAux.get(6)||jug == listaAux.get(9)]
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)




}
}