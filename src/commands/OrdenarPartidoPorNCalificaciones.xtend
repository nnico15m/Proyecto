package commands
import proyecto.Partido
import java.util.List

class OrdenarPartidoPorNCalificaciones implements OrganizadorCommand  {
	
	override def ordenarLaLista(Partido partido){
				
	partido.participantes.forEach[j|j.promedioDeCalificacionesUltimoPartido(partido)]
	val aux1= partido.participantes.sortBy[promedioCalificacionesUltPart]
	return aux1
		
		
		
	}
		

	
	
	
}