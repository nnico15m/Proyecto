package proyecto


import java.util.ArrayList			
import java.util.List

class Partido {
	@Property double fecha
	@Property double hora
	@Property boolean condicion
	@Property TipoSuscripcion tiposuscripcion
	@Property Jugador jugador = new Jugador
	
	
	List<Jugador> participantes = new ArrayList // es para crear una lista, 									
	List<Jugador> inscriptosSolidarios = new ArrayList() // <> entre esto va el tipo que debe tener la coleccion
	List<Jugador> inscriptosCondicionales = new ArrayList()
	
	
	var int faltantesSol
	var int faltantesCond
	
	
	def getTipoSuscripcion(){
		
		this.tiposuscripcion
		
	}
	
	def getInscriptosSolidarios(){
		this.inscriptosSolidarios
	}
	
	def getInscriptosCondicionales(){
		
		this.inscriptosCondicionales
		
	}
	
	def getParticipantes(){
	this.participantes
	}
	
	
	
	
	def inscribirJugador(){
		this.getTipoSuscripcion().inscribirSegunTipoDeSuscripcion(this,jugador)
	}
	
	

	
	def confirmarEquipo(){
		
		var int acumPrioridad 
		faltantesSol = (10 - (participantes.length)) 
		acumPrioridad = 0
		
		while(faltantesSol   != 0 ){
			acumPrioridad = 1 
			this.agregarFaltantesSolidarios(acumPrioridad)
			faltantesSol = faltantesSol  - 1
			}
			acumPrioridad = 0
		while(faltantesCond != 0){
		acumPrioridad = 1	
		this.agregarCondicionalesSiFaltan(acumPrioridad)
		faltantesCond = faltantesCond - 1	
		
			}
			
		}
	

	def agregarFaltantesSolidarios (int acumPrioridad) {
		 
		this.participantes.add(inscriptosSolidarios.findFirst[jugador | jugador.nivelDePrioridad == acumPrioridad])
		//habria que corroborar que la lista de solidario no este vacia
	}

	def agregarCondicionalesSiFaltan (int acumPrioridad){
		
			this.participantes.add(inscriptosCondicionales.findFirst[jugador | jugador.nivelDePrioridad == acumPrioridad])	
		
	}
	
	def procesarResultados(){
	
	 participantes.forEach[jugador|jugador.jugoUnPartido]
 	}


 }
 
 
 
