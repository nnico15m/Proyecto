package proyecto


import java.util.ArrayList			
import java.util.List




class Partido {
	@Property double fecha
	@Property double hora
	@Property boolean condicion
	@Property TipoSuscripcion2 tiposuscripcion
	@Property List<Jugador> participantes = new ArrayList //Es la lista de participantes en donde si el jugador que se quisiera anotar fuera estandar, directamente el tipo de inscripcion lo anota aca 									
	@Property List<Jugador> inscriptosSolidarios = new ArrayList() //Esta lista es la de solidarios en donde la prioridad de solidarios la tendran de acuerdo como se vayan anotando
	@Property List<Jugador> inscriptosCondicionales = new ArrayList() //Esta lista es la de condicionales en donde la prioridad de condicionales la tendran de acuerdo como se vayan anotando
	
	
	//Como estamos implementando Stateless partido se pasara como parametro para la interface llamada tipo de suscripcion, la cual sera la encargada de madarle un mensaje al partido para que haga la lista de los jugadores para el partido
	
	
	///var int faltantesSol 
	///var int faltantesCond
	
	
	def inscribimeAlaLista(Jugador jugador){
		
		this.inscribirJugador(jugador)
		
	}
	
	
	
	
	
	
	
	
	def inscribirJugador(Jugador jugador){ //Inscribir jugador lo que hace es definir dentro de su metodo un mensaje para el tipo de inscripcion con los parametros partido y jugador para que el tipo de suscripcion haga la inscripcion
		this.tiposuscripcion.inscribirSegunTipoDeSuscripcion(this, jugador)
	}
	
	

	
	def void confirmarEquipo(){ // La manera de confirmar equipo seria que los jugadores estandar se agregar automaticamente pero tantos los solidarios y los condicionales se debe verificar primero la cantidad de jugadores inscriptos y acorde de eso agregar los jugadores que poseen cada uno en su lista

		if (this.quedaLugar()) {
			if (this.cantSolidarios() != 0) {
				this.completarConSolidarios()
			} else if (this.cantCondicionales() != 0){
				this.completarConCondicionales()
			}
		}
		if (this.quedaLugar() && this.noHayMasJugadores()) {
			throw  new NoJuntamos10ParaElPartidoException
		}
			
	}
	
	def noHayMasJugadores() {
		(this.cantSolidarios() == 0) && (this.cantCondicionales() == 0)
	}
	
	def void completarConSolidarios() {
		var ultimoSolidario = this.inscriptosSolidarios.get(cantSolidarios()-1)
		this.participantes.add(ultimoSolidario)
		this.inscriptosSolidarios.remove(ultimoSolidario)
		this.confirmarEquipo()
	}
	
	def void completarConCondicionales() {
		var ultimoCondicional = this.inscriptosCondicionales.get(cantCondicionales()-1)
		this.participantes.add(ultimoCondicional)
		this.inscriptosCondicionales.remove(ultimoCondicional)
		this.completarConCondicionales()		
	}
		
	def procesarResultados(){ //Aca a todos los anotados del partido se le aumenta en 1 el contador de partidos
	//habria que constatar cuando el jugador falta para que sea penalizado
	
	 participantes.forEach[jugador|jugador.jugoUnPartido()]
 	}
 	
 	def quedaLugar() {
 		this.cantParticipantes() < 10
 	}
	
	def hayLugarParaSolidario() {
		(this.cantParticipantes() + this.cantSolidarios()) < 10
	}
	
	def hayLugarParaCondicional() {
		(this.cantParticipantes() + this.cantSolidarios() + this.cantCondicionales()) < 10
	}
	
	def cantParticipantes() {
		this.participantes.length
	}
	
	def cantSolidarios() {
		this.inscriptosSolidarios.length
	}
	
	def cantCondicionales() {
		this.inscriptosCondicionales.length
	}



 }
 
 
 
