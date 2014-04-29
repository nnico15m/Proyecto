package proyecto;

import proyecto.Partido;

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
  
  private int _nivelDePrioridad;
  
  public int getNivelDePrioridad() {
    return this._nivelDePrioridad;
  }
  
  public void setNivelDePrioridad(final int nivelDePrioridad) {
    this._nivelDePrioridad = nivelDePrioridad;
  }
  
  private String _estiloParaPartido;
  
  public String getEstiloParaPartido() {
    return this._estiloParaPartido;
  }
  
  public void setEstiloParaPartido(final String estiloParaPartido) {
    this._estiloParaPartido = estiloParaPartido;
  }
  
  public void inscribirPartido(final Partido partido) {
    partido.inscribimeAlaLista(this);
  }
  
  public Jugador() {
    this.setNivelAdvertencia(0);
    this.setContadorPartidos(0);
  }
  
  public void jugoUnPartido() {
    double _contadorPartidos = this.getContadorPartidos();
    double _plus = (_contadorPartidos + 1);
    this.setContadorPartidos(_plus);
  }
  
  public void faltoAUnPartido() {
    double _nivelAdvertencia = this.getNivelAdvertencia();
    double _plus = (_nivelAdvertencia + 1);
    this.setNivelAdvertencia(_plus);
  }
}
