package proyecto

import java.util.ArrayList			
import java.util.List

class Partido {
	
	@Property FechaPartido fecha
	@Property double hora
	@Property List<Jugador> participantes = new ArrayList (10) //Es la lista de participantes en donde si el jugador que se quisiera anotar fuera estandar, directamente el tipo de inscripcion lo anota aca 									
	@Property List<Jugador> comunidad = new ArrayList(25)
	
	//@Property Condicional
	
	
	
	
	

// 	def noQuedaLugar() { //verifica que en la lista participantes queda lugar (10 jugadores maximo)
// 		this.sonTodosEstandar()
// 	}
	
	
	def cantParticipantes() { // mide la longitud de la lista de participantes
		this.participantes.length
	}
	
	def inscribiSiPodesA(Jugador jugador){
		if (this.esDeLaComunidad(jugador) && !this.yaEstaAnotado(jugador)){
			this.inscribirSiHayLugarA(jugador)
		}
	}
	
	def yaEstaAnotado(Jugador jugador) {
		this.participantes.contains(jugador)
	}
	
	def inscribirSiHayLugarA(Jugador jugador){
		if (this.quedaLugar()) {
			this.participantes.add(jugador)
		}else{
			jugador.trataDeInscribirteAlPartido(this)
		}
	}
	
	def quedaLugar() {
		this.cantParticipantes < 10
	}
	
	def esDeLaComunidad(Jugador jugador){
		comunidad.contains(jugador)
	}
	
	
//	def void organizarParticipantes(){ // La manera de confirmar equipo seria que los jugadores estandar se agregar automaticamente pero tantos los solidarios y los condicionales se debe verificar primero la cantidad de jugadores inscriptos y acorde de eso agregar los jugadores que poseen cada uno en su lista
//         this.ordenarListaPorTipoSuscripcion()
//    }
	
	def inscribirCondicional(Jugador jugador) {
		var Jugador reemplazado = this.obtenerInscriptoCondicional()
		this.cambiar(reemplazado, jugador)
	}
	
//	def inscribirSolidario(Jugador jugador) {
//		var Jugador reemplazado = participantes.findFirst(unJugador| unJugador.prioridad() > 0)
//		this.cambiar(reemplazado, jugador)
//	}
	
	def inscribirEstandarOSolidario(Jugador jugador) {
		var Jugador reemplazado = this.obtenerInscriptoDeMenorPrioridad() //participantes.findFirst(unJugador| unJugador.prioridad() > 0)
		this.cambiar(reemplazado, jugador)
	}
	
	def obtenerInscriptoDeMenorPrioridad() {
		var jugador = this.obtenerInscriptoCondicional()
		if (jugador == null){
			jugador = this.obtenerInscriptoSolidario()
		}
		jugador
	}
	
	def obtenerInscriptoSolidario() {
		participantes.findFirst(unJugador| unJugador.prioridad() == 1)
	}
	
	def obtenerInscriptoCondicional() {
		participantes.findFirst(unJugador| unJugador.prioridad() == 2)
	}
	
	def cambiar(Jugador saliente, Jugador entrante) {
		if (saliente != null){
			this.participantes.remove(saliente)
			this.participantes.add(entrante)
		}else{
			throw new ElCupoEstaLlenoException
		}
	}
	
	def generarInfraccionParaInfractor(Jugador jugador){
		jugador.agregarInfraccion
	
		
	
	
	
	}



	def darDeBajaJugador(Jugador jugador){
		
		
		this.participantes.remove(jugador)
		
	}


}
	
    	
//   def sonTodosEstandar(){
//    	this.participantes.filter[jugador | jugador.prioridad() == 0].size() == 10
//    }	
        
//    def ordenarListaPorTipoSuscripcion(){
    			
//		participantes.sort(participantes, new Comparator<DataNode>()){
//    		public int compare(DataNode o1, DataNode o2){
//    			if(o1.prioridad == o2.prioridad)
//            return 0;
//            }
//   		return o1.prioridad < o2.prioridad ? -1 : 1;
//    	}
//	}

//	def eliminarLosSolidariosyCondicionalesSobrantes(){
//		participantes.removeRange(10,int participantes.size)
//	}
//}
			


