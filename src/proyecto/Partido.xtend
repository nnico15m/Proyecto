package proyecto

import java.util.ArrayList			
import java.util.List

class Partido {
	
	@Property FechaPartido fecha
	@Property double hora
	@Property List<Jugador> participantes = new ArrayList (25) //Es la lista de participantes en donde si el jugador que se quisiera anotar fuera estandar, directamente el tipo de inscripcion lo anota aca 									
	@Property List<Jugador> comunidad = new ArrayList(25)
	@Property Condicional
	
	
	
	
	

 	def noQuedaLugar() { // verifica que en la lista participantes queda lugar (10 jugadores maximo)
 		this.sonTodosEstandar 
 	}
	
	
	def cantParticipantes() { // mide la longitud de la lista de participantes
		this.participantes.length
	}
	

	def inscribirAlPartido(Jugador jugador){
		this.participantes.add(jugador)
	}
	
	
	}
	def void organizarParticipantes(){ // La manera de confirmar equipo seria que los jugadores estandar se agregar automaticamente pero tantos los solidarios y los condicionales se debe verificar primero la cantidad de jugadores inscriptos y acorde de eso agregar los jugadores que poseen cada uno en su lista
         this.participantes.verificarSiHay10
         }
        
        
    def verificarSiHay10(){
    	this.cantParticipantes = 10 {
    		this.confirmarEquipo
    	}
    	else{
    		this.ordenarListaPorPrioridadYTipoSuscripcion
    	}
    	
    def sonTodosEstandar(){
    	this.participantes.filter[prioridad.contains(0)].size = 10
    }	
        
    def ordenarListaPorTipoSuscripcion(){
    			
	participantes.sort(participantes, new Comparator<DataNode>(){
     public int compare(DataNode o1, DataNode o2){
         if(o1.prioridad == o2.prioridad)
             return 0;
         return o1.prioridad < o2.prioridad ? -1 : 1;
     }
});

def eliminarLosSolidariosyCondicionalesSobrantes(){
	participantes.removeRange(10,int participantes.size)
}
}
			


}