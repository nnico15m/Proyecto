package proyecto


class Condicional implements TipoDeSuscripcion{
	
	
	override inscribirSegunTipoDeSuscripcion(Partido partido,Jugador jugador){
		
		if (partido.hayLugarParaCondicional  && !(partido.inscriptosCondicionales.contains(jugador))){
			
			
			partido.inscriptosCondicionales.add(jugador)	
			
			
		}
			
		
		
	} 
	
	
	
	
}	