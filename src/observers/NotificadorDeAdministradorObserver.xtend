package observers

class NotificadorDeAdministradorObserver {
	
	@Property String mailAdministrador
	@Property StubMensajero mensajero
	
	def avisarPartidoConfirmado(){
		
		this.mensajero.mandaMail(mailAdministrador, "Partido Confirmado")
		
	}
	
	def avisarQueSeBajoUno() {
		
		this.mensajero.mandaMail(mailAdministrador, "Se bajo uno")
		
	}
	

}