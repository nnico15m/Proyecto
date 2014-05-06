package proyecto;

import proyecto.Partido2;
import proyecto.TipoDeSuscripcionn2;

@SuppressWarnings("all")
public class Jugador2 {
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
  
  private int _nivelDePrioridad;
  
  public int getNivelDePrioridad() {
    return this._nivelDePrioridad;
  }
  
  public void setNivelDePrioridad(final int nivelDePrioridad) {
    this._nivelDePrioridad = nivelDePrioridad;
  }
  
  private TipoDeSuscripcionn2 _formaDeInscripcion;
  
  public TipoDeSuscripcionn2 getFormaDeInscripcion() {
    return this._formaDeInscripcion;
  }
  
  public void setFormaDeInscripcion(final TipoDeSuscripcionn2 formaDeInscripcion) {
    this._formaDeInscripcion = formaDeInscripcion;
  }
  
  private TipoDeSuscripcionn2 _tipoDeSuscripcionn2;
  
  public TipoDeSuscripcionn2 getTipoDeSuscripcionn2() {
    return this._tipoDeSuscripcionn2;
  }
  
  public void setTipoDeSuscripcionn2(final TipoDeSuscripcionn2 tipoDeSuscripcionn2) {
    this._tipoDeSuscripcionn2 = tipoDeSuscripcionn2;
  }
  
  public void inscribirAjugador(final Partido2 partido2) {
    partido2.inscribimeApartido(this);
  }
  
  public void ComoTeQueresInscribir(final Partido2 partido2) {
    TipoDeSuscripcionn2 _tipoDeSuscripcionn2 = this.getTipoDeSuscripcionn2();
    _tipoDeSuscripcionn2.inscribirSegunTipoDeSuscripcion2(partido2, this);
  }
}
