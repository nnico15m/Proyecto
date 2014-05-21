package observers;

import proyecto.Mail;

@SuppressWarnings("all")
public interface MessageSender {
  public abstract void send(final Mail mail);
}
