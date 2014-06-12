package proyecto

class Calificaciones {

	@Property int codPartidoJugado
	@Property int nota
	@Property String descripcion
	
	new(int codPartidoJugado,int nota, String descripcion){
		this.codPartidoJugado = codPartidoJugado
		this.nota = nota
		this.descripcion = descripcion
}
	
	

}