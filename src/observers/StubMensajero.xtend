package observers

import proyecto.Mail
import java.util.List
import java.util.ArrayList

class StubMensajero {
	
	@Property List<Mail> mailsEnviados = new ArrayList
	
	def mandaMail(String destino, String asunto){
		
		var mail = new Mail
		mail.from = "opf5@gmail.com"
		mail.to = destino
		mail.message = ""
		mail.titulo = asunto
		this.mailsEnviados.add(mail)
		
	}
	
	def mailsEnviadosA(String destino){
		mailsEnviados.filter[mail | mail.to == destino]
	}
	
	def mailsEnviadosConMotivoDe(String asunto){
		mailsEnviados.filter[mail | mail.titulo == asunto]
	}
	
	def cantMailsEnviadosA(String destino){
		this.mailsEnviadosA(destino).length
	}
	
	def cantMailsEnviadosConMotivoDe(String asunto){
		this.mailsEnviadosConMotivoDe(asunto).length
	}
}