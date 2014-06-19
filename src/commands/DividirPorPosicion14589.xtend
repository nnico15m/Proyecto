package commands

import proyecto.Partido

class DividirPorPosicion14589 implements DividirEquiposCommand {
	override dividirEquipos(Partido partido){
		
		
		val listaAux = partido.participantes	
		
		
		val lista14589= listaAux.filter[jug|jug.esDeLaPosicion14589(partido)]
		val lista236710= listaAux.filter[jug|jug.esDeLaPosicion236710(partido)]
		
		partido.setEquipo1(lista14589)
		partido.setEquipo2(lista236710)




}


}