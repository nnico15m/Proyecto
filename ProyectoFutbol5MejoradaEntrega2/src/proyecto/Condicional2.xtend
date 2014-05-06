package proyecto


class Condicional2 implements TipoDeSuscripcionn2{
	
	
	override inscribirSegunTipoDeSuscripcion2(Partido2 partido2,Jugador2 jugador2){
		
		if (partido2.hayLugarParaCondicional  && !(partido2.inscriptosCondicionales.contains(jugador2))){
			
			
			partido2.inscriptosCondicionales.add(jugador2)	
			
			
		}
			
		
		
	} 
	
	
	
	
}	