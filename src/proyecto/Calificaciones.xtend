package proyecto

class Calificaciones {

	@Property Partido partido
	@Property int nota
	@Property String descripcion
	
	new(Partido partido,int nota, String descripcion){
		this.partido = partido
		this.nota = nota
		this.descripcion = descripcion
}
	
	

}