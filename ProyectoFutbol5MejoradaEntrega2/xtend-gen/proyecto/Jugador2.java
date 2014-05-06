package proyecto;

import java.util.List;
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
  
  public void inscribirsePartido(final Partido2 partido2) {
    List<Jugador2> _comunidad = partido2.getComunidad();
    boolean _contains = _comunidad.contains(this);
    if (_contains) {
      TipoDeSuscripcionn2 _formaDeInscripcion = this.getFormaDeInscripcion();
      _formaDeInscripcion.inscribirSegunTipoDeSuscripcion2(partido2, this);
    }
  }
}
