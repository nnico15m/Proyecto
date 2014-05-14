package proyecto;

import proyecto.Partido;
import proyecto.TipoDeSuscripcion;

@SuppressWarnings("all")
public class Jugador {
  private String _nombreJugador;
  
  public String getNombreJugador() {
    return this._nombreJugador;
  }
  
  public void setNombreJugador(final String nombreJugador) {
    this._nombreJugador = nombreJugador;
  }
  
  private double _nivelAdvertencia;
  
  public double getNivelAdvertencia() {
    return this._nivelAdvertencia;
  }
  
  public void setNivelAdvertencia(final double nivelAdvertencia) {
    this._nivelAdvertencia = nivelAdvertencia;
  }
  
  private double _contadorPartidos;
  
  public double getContadorPartidos() {
    return this._contadorPartidos;
  }
  
  public void setContadorPartidos(final double contadorPartidos) {
    this._contadorPartidos = contadorPartidos;
  }
  
  private TipoDeSuscripcion _formaDeInscripcion;
  
  public TipoDeSuscripcion getFormaDeInscripcion() {
    return this._formaDeInscripcion;
  }
  
  public void setFormaDeInscripcion(final TipoDeSuscripcion formaDeInscripcion) {
    this._formaDeInscripcion = formaDeInscripcion;
  }
  
  public void trataDeInscribirteAlPartido(final Partido partido) {
    TipoDeSuscripcion _formaDeInscripcion = this.getFormaDeInscripcion();
    _formaDeInscripcion.inscribirSegunTipoDeSuscripcion(partido, this);
  }
  
  public int prioridad() {
    TipoDeSuscripcion _formaDeInscripcion = this.getFormaDeInscripcion();
    return _formaDeInscripcion.prioridad();
  }
}
