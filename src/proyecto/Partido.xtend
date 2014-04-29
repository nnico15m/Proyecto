package proyecto


import java.util.ArrayList			
import java.util.List




class Partido {
	@Property double fecha
	@Property double hora
	@Property boolean condicion
	@Property TipoSuscripcion tiposuscripcion

	

	
	List<Jugador> participantes = new ArrayList //Es la lista de participantes en donde si el jugador que se quisiera anotar fuera estandar, directamente el tipo de inscripcion lo anota aca 									
	List<Jugador> inscriptosSolidarios = new ArrayList() //Esta lista es la de solidarios en donde la prioridad de solidarios la tendran de acuerdo como se vayan anotando
	List<Jugador> inscriptosCondicionales = new ArrayList() //Esta lista es la de condicionales en donde la prioridad de condicionales la tendran de acuerdo como se vayan anotando
	
	
	//Como estamos implementando Stateless partido se pasara como parametro para la interface llamada tipo de suscripcion, la cual sera la encargada de madarle un mensaje al partido para que haga la lista de los jugadores para el partido
	
	
	var int faltantesSol 
	var int faltantesCond
	
	
	def inscribimeAlaLista(Jugador jugador){
		
		this.inscribirJugador(jugador)
		
	}
	
	
	def getTipoSuscripcion(){  //getter
		
		this.tiposuscripcion 
		
	}
	 
	def getInscriptosSolidarios(){ //getter
		this.inscriptosSolidarios
	}
	
	def getInscriptosCondicionales(){ //getter
		
		this.inscriptosCondicionales
		
	}
	
	def getParticipantes(){   //getter
	this.participantes
	}
	
	
	
	
	def inscribirJugador(Jugador jugador){ //Inscribir jugador lo que hace es definir dentro de su metodo un mensaje para el tipo de inscripcion con los parametros partido y jugador para que el tipo de suscripcion haga la inscripcion
		this.getTipoSuscripcion().inscribirSegunTipoDeSuscripcion(this,jugador)
	}
	
	

	
	def confirmarEquipo(){ // La manera de confirmar equipo seria que los jugadores estandar se agregar automaticamente pero tantos los solidarios y los condicionales se debe verificar primero la cantidad de jugadores inscriptos y acorde de eso agregar los jugadores que poseen cada uno en su lista
		
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
	

	def agregarFaltantesSolidarios (int acumPrioridad) { //aca lo que hago es agregar el jugador solidario a la lista 
		//habria que corroborar que la lista de solidario no este vacia TEST
		this.participantes.add(inscriptosSolidarios.findFirst[jugador | jugador.nivelDePrioridad == acumPrioridad])
		
	}

	def agregarCondicionalesSiFaltan (int acumPrioridad){ //aca lo que hago es agregar el jugador condicional a la lista
			//habria que corroborar que la lista de solidario no este vacia TEST
			this.participantes.add(inscriptosCondicionales.findFirst[jugador | jugador.nivelDePrioridad == acumPrioridad])	
		
	}
	
	def procesarResultados(){ //Aca a todos los anotados del partido se le aumenta en 1 el contador de partidos
	//habria que constatar cuando el jugador falta para que sea penalizado
	
	 participantes.forEach[jugador|jugador.jugoUnPartido]
 	}


 }
 
 
 
