package commands


import proyecto.Partido

interface OrganizadorCommand {
	
	def abstract void ordenarLaLista(Partido partido)
	
}