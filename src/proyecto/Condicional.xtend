package proyecto

class Condicional implements TipoSuscripcion2{
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		
		var String nombreDeClase = "Condicional" // comparo el atributo del jugador con el atributo nombreDeClase
		//se podria hacer un testeo de que lo que se ingresa es una de las tres cosas que se esperan
		
		
		if(partido.hayLugarParaCondicional() && (nombreDeClase == jugador.estiloParaPartido)){
			
			partido.inscriptosCondicionales.add(jugador)	
			
		}
		
		}
}