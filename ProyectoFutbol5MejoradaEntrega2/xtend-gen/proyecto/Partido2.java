package proyecto;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Conversions;
import proyecto.FechaPartido;
import proyecto.Jugador2;
import proyecto.NoJuntamos10ParaElPartidoException;

@SuppressWarnings("all")
public class Partido2 {
  private FechaPartido _fecha;
  
  public FechaPartido getFecha() {
    return this._fecha;
  }
  
  public void setFecha(final FechaPartido fecha) {
    this._fecha = fecha;
  }
  
  private double _hora;
  
  public double getHora() {
    return this._hora;
  }
  
  public void setHora(final double hora) {
    this._hora = hora;
  }
  
  private List<Jugador2> _participantes = new ArrayList<Jugador2>();
  
  public List<Jugador2> getParticipantes() {
    return this._participantes;
  }
  
  public void setParticipantes(final List<Jugador2> participantes) {
    this._participantes = participantes;
  }
  
  private List<Jugador2> _inscriptosSolidarios = new ArrayList<Jugador2>();
  
  public List<Jugador2> getInscriptosSolidarios() {
    return this._inscriptosSolidarios;
  }
  
  public void setInscriptosSolidarios(final List<Jugador2> inscriptosSolidarios) {
    this._inscriptosSolidarios = inscriptosSolidarios;
  }
  
  private List<Jugador2> _inscriptosCondicionales = new ArrayList<Jugador2>();
  
  public List<Jugador2> getInscriptosCondicionales() {
    return this._inscriptosCondicionales;
  }
  
  public void setInscriptosCondicionales(final List<Jugador2> inscriptosCondicionales) {
    this._inscriptosCondicionales = inscriptosCondicionales;
  }
  
  private List<Jugador2> _comunidad = new ArrayList<Jugador2>();
  
  public List<Jugador2> getComunidad() {
    return this._comunidad;
  }
  
  public void setComunidad(final List<Jugador2> comunidad) {
    this._comunidad = comunidad;
  }
  
  public boolean quedaLugar() {
    int _cantParticipantes = this.cantParticipantes();
    return (_cantParticipantes < 10);
  }
  
  public boolean hayLugarParaSolidario() {
    int _cantParticipantes = this.cantParticipantes();
    int _cantSolidarios = this.cantSolidarios();
    int _plus = (_cantParticipantes + _cantSolidarios);
    return (_plus < 10);
  }
  
  public boolean hayLugarParaCondicional() {
    int _cantParticipantes = this.cantParticipantes();
    int _cantSolidarios = this.cantSolidarios();
    int _plus = (_cantParticipantes + _cantSolidarios);
    int _cantCondicionales = this.cantCondicionales();
    int _plus_1 = (_plus + _cantCondicionales);
    return (_plus_1 < 10);
  }
  
  public int cantCondicionales() {
    List<Jugador2> _inscriptosCondicionales = this.getInscriptosCondicionales();
    return ((Object[])Conversions.unwrapArray(_inscriptosCondicionales, Object.class)).length;
  }
  
  public int cantParticipantes() {
    List<Jugador2> _participantes = this.getParticipantes();
    return ((Object[])Conversions.unwrapArray(_participantes, Object.class)).length;
  }
  
  public int cantSolidarios() {
    List<Jugador2> _inscriptosSolidarios = this.getInscriptosSolidarios();
    return ((Object[])Conversions.unwrapArray(_inscriptosSolidarios, Object.class)).length;
  }
  
  public void confirmarEquipo() {
    boolean _quedaLugar = this.quedaLugar();
    if (_quedaLugar) {
      int _cantSolidarios = this.cantSolidarios();
      boolean _notEquals = (_cantSolidarios != 0);
      if (_notEquals) {
        this.completarConSolidarios();
      } else {
        int _cantCondicionales = this.cantCondicionales();
        boolean _notEquals_1 = (_cantCondicionales != 0);
        if (_notEquals_1) {
          this.completarConCondicionales();
        }
      }
    }
    boolean _and = false;
    boolean _quedaLugar_1 = this.quedaLugar();
    if (!_quedaLugar_1) {
      _and = false;
    } else {
      boolean _noHayMasJugadores = this.noHayMasJugadores();
      _and = _noHayMasJugadores;
    }
    if (_and) {
      throw new NoJuntamos10ParaElPartidoException();
    }
  }
  
  public void completarConSolidarios() {
    List<Jugador2> _inscriptosSolidarios = this.getInscriptosSolidarios();
    int _cantSolidarios = this.cantSolidarios();
    int _minus = (_cantSolidarios - 1);
    Jugador2 ultimoSolidario = _inscriptosSolidarios.get(_minus);
    List<Jugador2> _participantes = this.getParticipantes();
    _participantes.add(ultimoSolidario);
    List<Jugador2> _inscriptosSolidarios_1 = this.getInscriptosSolidarios();
    _inscriptosSolidarios_1.remove(ultimoSolidario);
    this.confirmarEquipo();
  }
  
  public void completarConCondicionales() {
    List<Jugador2> _inscriptosCondicionales = this.getInscriptosCondicionales();
    int _cantCondicionales = this.cantCondicionales();
    int _minus = (_cantCondicionales - 1);
    Jugador2 ultimoCondicional = _inscriptosCondicionales.get(_minus);
    List<Jugador2> _participantes = this.getParticipantes();
    _participantes.add(ultimoCondicional);
    List<Jugador2> _inscriptosCondicionales_1 = this.getInscriptosCondicionales();
    _inscriptosCondicionales_1.remove(ultimoCondicional);
    this.completarConCondicionales();
  }
  
  public boolean noHayMasJugadores() {
    boolean _and = false;
    int _cantSolidarios = this.cantSolidarios();
    boolean _equals = (_cantSolidarios == 0);
    if (!_equals) {
      _and = false;
    } else {
      int _cantCondicionales = this.cantCondicionales();
      boolean _equals_1 = (_cantCondicionales == 0);
      _and = _equals_1;
    }
    return _and;
  }
}
