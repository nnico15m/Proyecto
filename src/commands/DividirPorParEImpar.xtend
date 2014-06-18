package commands


import proyecto.Partido
import proyecto.Jugador
import java.util.List

class DividirPorParEImpar implements DividirEquiposCommand {
	
	override dividirEquipos(Partido partido){
		
		val listaImpares = partido.participantes.filter[jug|jug.unJugEsImpar(partido)]
		val listaPares = partido.participantes.filter[jug|jug.unJugEsPar(partido)]

 		
		partido.setEquipo1(listaImpares)
		partido.setEquipo2(listaPares)
		
	}
	
	}
	
	
	