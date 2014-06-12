package commands


import proyecto.Partido
import java.util.List
import proyecto.Jugador

interface OrganizadorCommand {
	
	def abstract void ordenarLaLista(Partido partido)
	
	def void ordenameLaLista(List<Jugador> jugadores)
	
	
	
}