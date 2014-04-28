package proyecto


import java.util.ArrayList			
import java.util.List

class Partido {
	@Property double fecha
	@Property double hora
	@Property boolean condicion
	
	
	List<Jugador> participantes = new ArrayList // es para crear una lista, 									
	List<Jugador> inscriptosSolidarios = new ArrayList() // <> entre esto va el tipo que debe tener la coleccion
	List<Jugador> inscriptosCondicionales = new ArrayList()
	
	
	var int faltantesSol
	
	
	

	
	def confirmarEquipo(){
		
		var int acumPrioridad 
		faltantesSol = (10 - (participantes.length)) 
		acumPrioridad = 0
		
		while(faltantesSol   != 0 ){
			acumPrioridad = 1 
			this.agregarFaltantesSolidarios(acumPrioridad)
			faltantesSol = faltantesSol  - 1
			}
		}
	

	def agregarFaltantesSolidarios (int acumPrioridad) {
		 
		 participantes.add(inscriptosSolidarios.findFirst[jugador | jugador.nivelDePrioridad == acumPrioridad])
		// remove 
	}

	//def agregarCondicionalesSiFaltan (){
	//if ((participantes.length) < 10 ){
	//	faltantesCond = (10 - (participantes.length))
	//	participantes = (participantes + inscriptosCondicionales(1,faltantesCond))
	//	}
			
		
	//}
	
	//def procesarResultados(){
	
	//participantes.forEach[jugador|jugador.jugoUnPartido]
 	//}



 }
