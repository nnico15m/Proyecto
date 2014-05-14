package proyecto;

import com.google.common.base.Objects;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Conversions;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import proyecto.ElCupoEstaLlenoException;
import proyecto.FechaPartido;
import proyecto.Jugador;

@SuppressWarnings("all")
public class Partido {
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
  
  private List<Jugador> _participantes = new ArrayList<Jugador>(10);
  
  public List<Jugador> getParticipantes() {
    return this._participantes;
  }
  
  public void setParticipantes(final List<Jugador> participantes) {
    this._participantes = participantes;
  }
  
  private List<Jugador> _comunidad = new ArrayList<Jugador>(25);
  
  public List<Jugador> getComunidad() {
    return this._comunidad;
  }
  
  public void setComunidad(final List<Jugador> comunidad) {
    this._comunidad = comunidad;
  }
  
  public int cantParticipantes() {
    List<Jugador> _participantes = this.getParticipantes();
    return ((Object[])Conversions.unwrapArray(_participantes, Object.class)).length;
  }
  
  public Boolean inscribiSiPodesA(final Jugador jugador) {
    Boolean _xifexpression = null;
    boolean _and = false;
    boolean _esDeLaComunidad = this.esDeLaComunidad(jugador);
    if (!_esDeLaComunidad) {
      _and = false;
    } else {
      boolean _yaEstaAnotado = this.yaEstaAnotado(jugador);
      boolean _not = (!_yaEstaAnotado);
      _and = _not;
    }
    if (_and) {
      _xifexpression = this.inscribirSiHayLugarA(jugador);
    }
    return _xifexpression;
  }
  
  public boolean yaEstaAnotado(final Jugador jugador) {
    List<Jugador> _participantes = this.getParticipantes();
    return _participantes.contains(jugador);
  }
  
  public Boolean inscribirSiHayLugarA(final Jugador jugador) {
    boolean _xifexpression = false;
    boolean _quedaLugar = this.quedaLugar();
    if (_quedaLugar) {
      List<Jugador> _participantes = this.getParticipantes();
      _xifexpression = _participantes.add(jugador);
    } else {
      jugador.trataDeInscribirteAlPartido(this);
    }
    return _xifexpression;
  }
  
  public boolean quedaLugar() {
    int _cantParticipantes = this.cantParticipantes();
    return (_cantParticipantes < 10);
  }
  
  public boolean esDeLaComunidad(final Jugador jugador) {
    List<Jugador> _comunidad = this.getComunidad();
    return _comunidad.contains(jugador);
  }
  
  public boolean inscribirCondicional(final Jugador jugador) {
    boolean _xblockexpression = false;
    {
      Jugador reemplazado = this.obtenerInscriptoCondicional();
      _xblockexpression = this.cambiar(reemplazado, jugador);
    }
    return _xblockexpression;
  }
  
  public boolean inscribirEstandarOSolidario(final Jugador jugador) {
    boolean _xblockexpression = false;
    {
      Jugador reemplazado = this.obtenerInscriptoDeMenorPrioridad();
      _xblockexpression = this.cambiar(reemplazado, jugador);
    }
    return _xblockexpression;
  }
  
  public Jugador obtenerInscriptoDeMenorPrioridad() {
    Jugador _xblockexpression = null;
    {
      Jugador jugador = this.obtenerInscriptoCondicional();
      boolean _equals = Objects.equal(jugador, null);
      if (_equals) {
        Jugador _obtenerInscriptoSolidario = this.obtenerInscriptoSolidario();
        jugador = _obtenerInscriptoSolidario;
      }
      _xblockexpression = jugador;
    }
    return _xblockexpression;
  }
  
  public Jugador obtenerInscriptoSolidario() {
    List<Jugador> _participantes = this.getParticipantes();
    final Function1<Jugador,Boolean> _function = new Function1<Jugador,Boolean>() {
      public Boolean apply(final Jugador unJugador) {
        int _prioridad = unJugador.prioridad();
        return Boolean.valueOf((_prioridad == 1));
      }
    };
    return IterableExtensions.<Jugador>findFirst(_participantes, _function);
  }
  
  public Jugador obtenerInscriptoCondicional() {
    List<Jugador> _participantes = this.getParticipantes();
    final Function1<Jugador,Boolean> _function = new Function1<Jugador,Boolean>() {
      public Boolean apply(final Jugador unJugador) {
        int _prioridad = unJugador.prioridad();
        return Boolean.valueOf((_prioridad == 2));
      }
    };
    return IterableExtensions.<Jugador>findFirst(_participantes, _function);
  }
  
  public boolean cambiar(final Jugador saliente, final Jugador entrante) {
    boolean _xifexpression = false;
    boolean _notEquals = (!Objects.equal(saliente, null));
    if (_notEquals) {
      boolean _xblockexpression = false;
      {
        List<Jugador> _participantes = this.getParticipantes();
        _participantes.remove(saliente);
        List<Jugador> _participantes_1 = this.getParticipantes();
        _xblockexpression = _participantes_1.add(entrante);
      }
      _xifexpression = _xblockexpression;
    } else {
      throw new ElCupoEstaLlenoException();
    }
    return _xifexpression;
  }
}
