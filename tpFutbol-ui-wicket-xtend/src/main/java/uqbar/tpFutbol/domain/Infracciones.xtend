package uqbar.tpFutbol.domain

class Infracciones {
	@Property String motivo
	@Property double duracion
	
	new(String motivo,double duracion){
		this.motivo = motivo
		this.duracion = duracion
		
}
}

