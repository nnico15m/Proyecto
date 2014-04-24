package proyecto

import java.util.ArrayList
import java.util.Collection
import proyecto.Jugador
import java.util.List

class Partido {
	@Property double fecha
	@Property double hora
	@Property boolean condicion
	List<Partido> participantes = new ArrayList
	List<Partido> inscriptosSolidarios = new ArrayList()
	List<Partido> inscriptosCondicionales = new ArrayList()
	
	Object faltantesSol
	Object faltantesCond
	

	
def confirmarEquipo(){
	if (this.participantes.length < 10){
				this.participantes.agregarFaltantesSolidarios
	}
}

def agregarFaltantesSolidarios (){
	faltantesSol == 10 - (participantes.length)
	
		participantes == participantes + inscriptosSolidarios(1,faltantesSol)
}

def agregarCondicionalesSiFaltan (){
	if (participantes.length) < 10{
		faltantesCond == 10 - (participantes.length)
		participantes == participantes + inscriptosCondicionales(1,faltantesCond)
		}
			
		
	}
	
def procesarResultados(){
	participantes.forEach[jugador|jugador.jugoUnPartido]
	
}

		
	
	
	

}
