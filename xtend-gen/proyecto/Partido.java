package proyecto;

import commands.DividirEquiposCommand;
import commands.OrganizadorCommand;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.Procedures.Procedure1;
import proyecto.ComunidadFutbolera;
import proyecto.Fecha;
import proyecto.Infracciones;
import proyecto.InscripcionCerrada;
import proyecto.Jugador;
import proyecto.TipoDeInscripcion;

@SuppressWarnings("all")
public class Partido {
  private Fecha _fecha;
  
  public Fecha getFecha() {
    return this._fecha;
  }
  
  public void setFecha(final Fecha fecha) {
    this._fecha = fecha;
  }
  
  private double _hora;
  
  public double getHora() {
    return this._hora;
  }
  
  public void setHora(final double hora) {
    this._hora = hora;
  }
  
  private ComunidadFutbolera _comunidad;
  
  public ComunidadFutbolera getComunidad() {
    return this._comunidad;
  }
  
  public void setComunidad(final ComunidadFutbolera comunidad) {
    this._comunidad = comunidad;
  }
  
  private OrganizadorCommand _criterioDeOrdenamiento;
  
  public OrganizadorCommand getCriterioDeOrdenamiento() {
    return this._criterioDeOrdenamiento;
  }
  
  public void setCriterioDeOrdenamiento(final OrganizadorCommand criterioDeOrdenamiento) {
    this._criterioDeOrdenamiento = criterioDeOrdenamiento;
  }
  
  private int _codPartido;
  
  public int getCodPartido() {
    return this._codPartido;
  }
  
  public void setCodPartido(final int codPartido) {
    this._codPartido = codPartido;
  }
  
  private Iterable<Jugador> _equipo1 = new ArrayList<Jugador>(5);
  
  public Iterable<Jugador> getEquipo1() {
    return this._equipo1;
  }
  
  public void setEquipo1(final Iterable<Jugador> equipo1) {
    this._equipo1 = equipo1;
  }
  
  private Iterable<Jugador> _equipo2 = new ArrayList<Jugador>(5);
  
  public Iterable<Jugador> getEquipo2() {
    return this._equipo2;
  }
  
  public void setEquipo2(final Iterable<Jugador> equipo2) {
    this._equipo2 = equipo2;
  }
  
  private TipoDeInscripcion _inscripciones;
  
  public TipoDeInscripcion getInscripciones() {
    return this._inscripciones;
  }
  
  public void setInscripciones(final TipoDeInscripcion inscripciones) {
    this._inscripciones = inscripciones;
  }
  
  public List<Jugador> participantes() {
    TipoDeInscripcion _inscripciones = this.getInscripciones();
    return _inscripciones.participantes();
  }
  
  public void inscribiSiPodesA(final Jugador jugador) {
    TipoDeInscripcion _inscripciones = this.getInscripciones();
    _inscripciones.inscribiA(jugador);
  }
  
  /**
   * def ordenarListaParticipantes(){		//ÀNOS SIRVE DE ALGO ORDENAR LA LISTA?
   * this.participantes.sortBy[prioridad]
   * }
   */
  public boolean esDeLaComunidad(final Jugador jugador) {
    ComunidadFutbolera _comunidad = this.getComunidad();
    return _comunidad.esDeLaComunidad(jugador);
  }
  
  public boolean dameDeBaja(final Jugador jugador) {
    boolean _xblockexpression = false;
    {
      TipoDeInscripcion _inscripciones = this.getInscripciones();
      _inscripciones.darDeBajaJugador(jugador);
      _xblockexpression = this.generarInfraccionParaInfractor(jugador);
    }
    return _xblockexpression;
  }
  
  public void reemplazameCon(final Jugador jugador, final Jugador reemplazante) {
    TipoDeInscripcion _inscripciones = this.getInscripciones();
    _inscripciones.darDeBajaJugador(jugador);
    this.inscribiSiPodesA(reemplazante);
  }
  
  public boolean generarInfraccionParaInfractor(final Jugador jugador) {
    boolean _xblockexpression = false;
    {
      Infracciones infraccion = new Infracciones();
      _xblockexpression = jugador.sancionateCon(infraccion);
    }
    return _xblockexpression;
  }
  
  public void tuComunidadEs(final ComunidadFutbolera comunidad) {
    this.setComunidad(comunidad);
  }
  
  public void seJugoElPartido() {
    this.seCalificanLosJugadoresDespuesDeJugarElPartido();
  }
  
  public void seCalificanLosJugadoresDespuesDeJugarElPartido() {
    List<Jugador> _participantes = this.participantes();
    final Procedure1<Jugador> _function = new Procedure1<Jugador>() {
      public void apply(final Jugador jug) {
        List<Jugador> _participantes = Partido.this.participantes();
        jug.calificarYCriticarACadaJug(_participantes);
      }
    };
    IterableExtensions.<Jugador>forEach(_participantes, _function);
  }
  
  public List<Jugador> ordenarLaListaPorCriterio(final OrganizadorCommand criterio, final int n) {
    List<Jugador> _xblockexpression = null;
    {
      this.setCriterioDeOrdenamiento(criterio);
      _xblockexpression = criterio.ordenarLaLista(this, n);
    }
    return _xblockexpression;
  }
  
  public List<Jugador> ordenarLaListaPorPromedioDeVariosCriterios(final Partido partidoAOrganizar, final List<OrganizadorCommand> listaCriterios, final int n) {
    List<Jugador> _xblockexpression = null;
    {
      List<Jugador> _participantes = partidoAOrganizar.participantes();
      final Procedure1<Jugador> _function = new Procedure1<Jugador>() {
        public void apply(final Jugador jug) {
          jug.valorPromedioDeVariosCriterios(Partido.this, listaCriterios, n);
        }
      };
      IterableExtensions.<Jugador>forEach(_participantes, _function);
      List<Jugador> _participantes_1 = partidoAOrganizar.participantes();
      final Function1<Jugador,Integer> _function_1 = new Function1<Jugador,Integer>() {
        public Integer apply(final Jugador it) {
          return Integer.valueOf(it.getPromedioConVariosCriteriosAplicados());
        }
      };
      _xblockexpression = IterableExtensions.<Jugador, Integer>sortBy(_participantes_1, _function_1);
    }
    return _xblockexpression;
  }
  
  public void dividirEquipos(final DividirEquiposCommand criterioDivision) {
    criterioDivision.dividirEquipos(this);
  }
  
  public void confirmaTusEquipos() {
    List<Jugador> _participantes = this.participantes();
    InscripcionCerrada _inscripcionCerrada = new InscripcionCerrada(this, _participantes);
    this.setInscripciones(_inscripcionCerrada);
  }
}
