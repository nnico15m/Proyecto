package commands
import proyecto.Partido
import java.util.List

class OrdenarPartidoPorNCalificaciones implements OrganizadorCommand  {
	
	@Property int cantidadDePartido
	
	override def ordenarLaLista(Partido partido, int n){
				
	partido.participantes.forEach[j|j.promedioDeCalificacionesDeUltimosNPartidos(partido,n)]
	val aux1= partido.participantes.sortBy[promedioCalificacionesUltPart]
	return aux1
		
		
		
	}
	
	override inicializarCntidadDePartido() {
		
		
		}
		

	
	
	
}