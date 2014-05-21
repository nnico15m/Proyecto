package observers;

import com.google.common.base.Objects;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import observers.MessageSender;
import org.eclipse.xtext.xbase.lib.InputOutput;
import proyecto.Mail;

@SuppressWarnings("all")
public class StubMailSender implements MessageSender {
  private Map<String,Set<String>> mailsEnviados;
  
  public StubMailSender() {
    HashMap<String,Set<String>> _hashMap = new HashMap<String, Set<String>>();
    this.mailsEnviados = _hashMap;
  }
  
  public void send(final Mail mail) {
    String _from = mail.getFrom();
    String _message = mail.getMessage();
    this.simularEnvioMail(_from, _message);
    String _from_1 = mail.getFrom();
    String _plus = ("Simulación envío de mail | From: " + _from_1);
    String _plus_1 = (_plus + " | To: ");
    String _to = mail.getTo();
    String _plus_2 = (_plus_1 + _to);
    String _plus_3 = (_plus_2 + " | Message: ");
    String _message_1 = mail.getMessage();
    String _plus_4 = (_plus_3 + _message_1);
    InputOutput.<String>println(_plus_4);
  }
  
  public Set<String> simularEnvioMail(final String from, final String message) {
    Set<String> _xblockexpression = null;
    {
      Set<String> mensajes = this.mailsDe(from);
      mensajes.add(message);
      _xblockexpression = this.mailsEnviados.put(from, mensajes);
    }
    return _xblockexpression;
  }
  
  public Set<String> mailsDe(final String from) {
    Set<String> _xblockexpression = null;
    {
      Set<String> mensajes = this.mailsEnviados.get(from);
      boolean _equals = Objects.equal(mensajes, null);
      if (_equals) {
        HashSet<String> _hashSet = new HashSet<String>();
        mensajes = _hashSet;
      }
      _xblockexpression = mensajes;
    }
    return _xblockexpression;
  }
}
