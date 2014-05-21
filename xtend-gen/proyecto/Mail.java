package proyecto;

@SuppressWarnings("all")
public class Mail {
  private String _from;
  
  public String getFrom() {
    return this._from;
  }
  
  public void setFrom(final String from) {
    this._from = from;
  }
  
  private String _to;
  
  public String getTo() {
    return this._to;
  }
  
  public void setTo(final String to) {
    this._to = to;
  }
  
  private String _message;
  
  public String getMessage() {
    return this._message;
  }
  
  public void setMessage(final String message) {
    this._message = message;
  }
  
  private String _titulo;
  
  public String getTitulo() {
    return this._titulo;
  }
  
  public void setTitulo(final String titulo) {
    this._titulo = titulo;
  }
}
