package proyecto;

@SuppressWarnings("all")
public class Jugador {
  private double _nivelAdvertencia;
  
  public void setNivelAdvertencia(final double nivelAdvertencia) {
    this._nivelAdvertencia = nivelAdvertencia;
  }
  
  private double _contadorPartidos;
  
  public void setContadorPartidos(final double contadorPartidos) {
    this._contadorPartidos = contadorPartidos;
  }
  
  public Jugador() {
    this.setNivelAdvertencia(0);
    this.setContadorPartidos(0);
  }
  
  public double getNivelAdvertencia() {
    return this.getNivelAdvertencia();
  }
  
  public double getContadorPartidos() {
    return this.getContadorPartidos();
  }
}
