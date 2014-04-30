package proyecto;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Conversions;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import proyecto.Jugador;
import proyecto.TipoSuscripcion2;

@SuppressWarnings("all")
public class Partido {
  private double _fecha;
  
  public double getFecha() {
    return this._fecha;
  }
  
  public void setFecha(final double fecha) {
    this._fecha = fecha;
  }
  
  private double _hora;
  
  public double getHora() {
    return this._hora;
  }
  
  public void setHora(final double hora) {
    this._hora = hora;
  }
  
  private boolean _condicion;
  
  public boolean isCondicion() {
    return this._condicion;
  }
  
  public void setCondicion(final boolean condicion) {
    this._condicion = condicion;
  }
  
  private TipoSuscripcion2 _tiposuscripcion;
  
  public TipoSuscripcion2 getTiposuscripcion() {
    return this._tiposuscripcion;
  }
  
  public void setTiposuscripcion(final TipoSuscripcion2 tiposuscripcion) {
    this._tiposuscripcion = tiposuscripcion;
  }
  
  private List<Jugador> _participantes = new ArrayList<Jugador>();
  
  public List<Jugador> getParticipantes() {
    return this._participantes;
  }
  
  public void setParticipantes(final List<Jugador> participantes) {
    this._participantes = participantes;
  }
  
  private List<Jugador> _inscriptosSolidarios = new ArrayList<Jugador>();
  
  public List<Jugador> getInscriptosSolidarios() {
    return this._inscriptosSolidarios;
  }
  
  public void setInscriptosSolidarios(final List<Jugador> inscriptosSolidarios) {
    this._inscriptosSolidarios = inscriptosSolidarios;
  }
  
  private List<Jugador> _inscriptosCondicionales = new ArrayList<Jugador>();
  
  public List<Jugador> getInscriptosCondicionales() {
    return this._inscriptosCondicionales;
  }
  
  public void setInscriptosCondicionales(final List<Jugador> inscriptosCondicionales) {
    this._inscriptosCondicionales = inscriptosCondicionales;
  }
  
  private int faltantesSol;
  
  private int faltantesCond;
  
  public void inscribimeAlaLista(final Jugador jugador) {
    this.inscribirJugador(jugador);
  }
  
  public void inscribirJugador(final Jugador jugador) {
    TipoSuscripcion2 _tiposuscripcion = this.getTiposuscripcion();
    _tiposuscripcion.inscribirSegunTipoDeSuscripcion(this, jugador);
  }
  
  public void confirmarEquipo() {
    int acumPrioridad = 0;
    List<Jugador> _participantes = this.getParticipantes();
    int _length = ((Object[])Conversions.unwrapArray(_participantes, Object.class)).length;
    int _minus = (10 - _length);
    this.faltantesSol = _minus;
    acumPrioridad = 0;
    boolean _while = (this.faltantesSol != 0);
    while (_while) {
      {
        acumPrioridad = 1;
        this.agregarFaltantesSolidarios(acumPrioridad);
        this.faltantesSol = (this.faltantesSol - 1);
      }
      _while = (this.faltantesSol != 0);
    }
    acumPrioridad = 0;
    boolean _while_1 = (this.faltantesCond != 0);
    while (_while_1) {
      {
        acumPrioridad = 1;
        this.agregarCondicionalesSiFaltan(acumPrioridad);
        this.faltantesCond = (this.faltantesCond - 1);
      }
      _while_1 = (this.faltantesCond != 0);
    }
  }
  
  public boolean agregarFaltantesSolidarios(final int acumPrioridad) {
    List<Jugador> _participantes = this.getParticipantes();
    List<Jugador> _inscriptosSolidarios = this.getInscriptosSolidarios();
    final Function1<Jugador,Boolean> _function = new Function1<Jugador,Boolean>() {
      public Boolean apply(final Jugador jugador) {
        int _nivelDePrioridad = jugador.getNivelDePrioridad();
        return Boolean.valueOf((_nivelDePrioridad == acumPrioridad));
      }
    };
    Jugador _findFirst = IterableExtensions.<Jugador>findFirst(_inscriptosSolidarios, _function);
    return _participantes.add(_findFirst);
  }
  
  public boolean agregarCondicionalesSiFaltan(final int acumPrioridad) {
    List<Jugador> _participantes = this.getParticipantes();
    List<Jugador> _inscriptosCondicionales = this.getInscriptosCondicionales();
    final Function1<Jugador,Boolean> _function = new Function1<Jugador,Boolean>() {
      public Boolean apply(final Jugador jugador) {
        int _nivelDePrioridad = jugador.getNivelDePrioridad();
        return Boolean.valueOf((_nivelDePrioridad == acumPrioridad));
      }
    };
    Jugador _findFirst = IterableExtensions.<Jugador>findFirst(_inscriptosCondicionales, _function);
    return _participantes.add(_findFirst);
  }
  
  public void procesarResultados() {
    List<Jugador> _participantes = this.getParticipantes();
    final Procedure1<Jugador> _function = new Procedure1<Jugador>() {
      public void apply(final Jugador jugador) {
        jugador.jugoUnPartido();
      }
    };
    IterableExtensions.<Jugador>forEach(_participantes, _function);
  }
}
