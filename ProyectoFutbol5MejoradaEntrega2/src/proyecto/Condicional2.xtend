package proyecto


class Condicional2 implements TipoDeSuscripcionn2{
	
	
	override inscribirSegunTipoDeSuscripcion2(Partido2 partido2,Jugador2 jugador2){
		
		if (sosCondicional2(jugador2.formaDeInscripcion) && (partido2.hayLugarParaCondicional)){
			
			
			partido2.inscriptosCondicionales.add(jugador2)	
			
			
		}
			
		
		
	} 
	
	
	def sosCondicional2(TipoDeSuscripcionn2 Condicional2){
		
		true
		
		
	}
	
}	