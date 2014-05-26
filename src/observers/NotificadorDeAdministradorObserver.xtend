package observers

class NotificadorDeAdministradorObserver {
	
	@Property String mailAdministrador
	@Property StubMensajero mensajero
	
	def avisarPartidoConfirmado(){
		
		mensajero.mandaMail(mailAdministrador, "Partido Confirmado")
		
	}
	
	def avisarQueSeBajoUno() {
		
		mensajero.mandaMail(mailAdministrador, "Se baj— uno")
		
	}
	
}