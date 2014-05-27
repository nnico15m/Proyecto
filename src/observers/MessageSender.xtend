package observers

import proyecto.Mail

interface MessageSender {
	
	def void send(Mail mail)
	
}