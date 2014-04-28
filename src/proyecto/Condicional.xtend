package proyecto

class Condicional implements TipoSuscripcion{
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		
		var String nombreDeClase = "Condicional" // comparo el atributo del jugador con el atributo nombreDeClase
		//se podria hacer un testeo de que lo que se ingresa es una de las tres cosas que se esperan
		
		
		if( nombreDeClase   == jugador.getestiloParaPartido){
			
			partido.getInscriptosCondicionales.add(jugador)	
			
		}
		
		}
}