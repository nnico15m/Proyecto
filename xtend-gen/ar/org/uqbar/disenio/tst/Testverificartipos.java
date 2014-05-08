package ar.org.uqbar.disenio.tst;

import java.util.List;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import proyecto.Condicional;
import proyecto.Estandar;
import proyecto.Jugador;
import proyecto.NoJuntamos10ParaElPartidoException;
import proyecto.Partido;
import proyecto.Solidaria;

@SuppressWarnings("all")
public class Testverificartipos {
  private Jugador carlos;
  
  private Jugador martin;
  
  private Jugador juan;
  
  private Partido partidoInagural;
  
  @Before
  public void init() {
    Jugador _crearEstandar = this.crearEstandar();
    this.carlos = _crearEstandar;
    Jugador _crearCondicional = this.crearCondicional();
    this.martin = _crearCondicional;
    Jugador _crearSolidario = this.crearSolidario();
    this.juan = _crearSolidario;
    Partido _partido = new Partido();
    this.partidoInagural = _partido;
    List<Jugador> _comunidad = this.partidoInagural.getComunidad();
    _comunidad.add(this.carlos);
    List<Jugador> _comunidad_1 = this.partidoInagural.getComunidad();
    _comunidad_1.add(this.martin);
    List<Jugador> _comunidad_2 = this.partidoInagural.getComunidad();
    _comunidad_2.add(this.juan);
  }
  
  public Jugador crearEstandar() {
    Jugador jugador = new Jugador();
    Estandar _estandar = new Estandar();
    jugador.setFormaDeInscripcion(_estandar);
    jugador.setContadorPartidos(2);
    return jugador;
  }
  
  public Jugador crearSolidario() {
    Jugador jugador = new Jugador();
    Solidaria _solidaria = new Solidaria();
    jugador.setFormaDeInscripcion(_solidaria);
    jugador.setContadorPartidos(2);
    return jugador;
  }
  
  public Jugador crearCondicional() {
    Jugador jugador = new Jugador();
    Condicional _condicional = new Condicional();
    jugador.setFormaDeInscripcion(_condicional);
    jugador.setContadorPartidos(2);
    return jugador;
  }
  
  @Test
  public void verificarSiUnaVezQueElUsuarioSeInscribioDeFormaEstandarSeEncuentraEnLaListaParticipantes() {
    this.carlos.inscribirsePartido(this.partidoInagural);
    List<Jugador> _participantes = this.partidoInagural.getParticipantes();
    boolean _contains = _participantes.contains(this.carlos);
    Assert.assertTrue(_contains);
  }
  
  @Test
  public void verificarQueLaListaCondicionalEstaEn0() {
    List<Jugador> _inscriptosCondicionales = this.partidoInagural.getInscriptosCondicionales();
    int _size = _inscriptosCondicionales.size();
    boolean _equals = (_size == 1);
    Assert.assertFalse(_equals);
  }
  
  @Test
  public void verificarQueLaListaParticipantesEsDeTamañoIgualAUnoLugoDeQueSeInscribioUnSoloJugador() {
    this.carlos.inscribirsePartido(this.partidoInagural);
   List<Jugador> _participantes = this.partidoInagural.getParticipantes();
   int _size = _participantes.size();
   boolean _equals = (_size == 1);
   Assert.assertTrue(_equals);
   }
  
  @Test
  public void verificarQueSiElUsuarioSeQuiereIngresarMuchasVecesNoVaAPoderHacerlo() {
    this.carlos.inscribirsePartido(this.partidoInagural);
    this.carlos.inscribirsePartido(this.partidoInagural);
    this.carlos.inscribirsePartido(this.partidoInagural);
    List<Jugador> _participantes = this.partidoInagural.getParticipantes();
    int _size = _participantes.size();
    boolean _equals = (_size == 1);
    Assert.assertTrue(_equals);
  }
  
  @Test
  public void verificarSiUnaVezQueElUsuarioSeInscribioDeFormaCondicionalSeEncuentraEnLaListaCondicional() {
    this.martin.inscribirsePartido(this.partidoInagural);
    List<Jugador> _inscriptosCondicionales = this.partidoInagural.getInscriptosCondicionales();
    boolean _contains = _inscriptosCondicionales.contains(this.martin);
    Assert.assertTrue(_contains);
  }
  
  @Test
  public void verificarSiUnaVezQueElUsuarioSeInscribioSeEncuentraEnLaListaSolidaria() {
    this.juan.inscribirsePartido(this.partidoInagural);
    List<Jugador> _inscriptosSolidarios = this.partidoInagural.getInscriptosSolidarios();
    boolean _contains = _inscriptosSolidarios.contains(this.juan);
    Assert.assertTrue(_contains);
  }
  
  @Test
  public void verificarQueSeENcuentranEnLaListaComunidadLos3PartcipantesQueInventamos() {
    List<Jugador> _comunidad = this.partidoInagural.getComunidad();
    int _size = _comunidad.size();
    boolean _equals = (_size == 3);
    Assert.assertTrue(_equals);
  }
  
  @Test(expected = NoJuntamos10ParaElPartidoException.class)
  public void verificarQueConfirmarEquipoSiNoHay10JugadoresOMasTiraError() {
    this.carlos.inscribirsePartido(this.partidoInagural);
    this.martin.inscribirsePartido(this.partidoInagural);
    this.juan.inscribirsePartido(this.partidoInagural);
    this.partidoInagural.confirmarEquipo();
  }
  
  @Test
  public void verificarQueUnCondicionalQuedaAfueraSiSeCompletanLos10() {
    this.crearEInscribir5Estandares3Solidarios2Concicionales();
    this.martin.inscribirsePartido(this.partidoInagural);
    this.partidoInagural.confirmarEquipo();
    List<Jugador> _participantes = this.partidoInagural.getParticipantes();
    boolean _contains = _participantes.contains(this.martin);
    Assert.assertFalse(_contains);
  }
  
  @Test
  public void verificarQueUnEstandarJuegaAunqueSeHayanAnotado10SiNoSonTodosEstandares() {
    this.crearEInscribir5Estandares3Solidarios2Concicionales();
    this.carlos.inscribirsePartido(this.partidoInagural);
    this.partidoInagural.confirmarEquipo();
    List<Jugador> _participantes = this.partidoInagural.getParticipantes();
    boolean _contains = _participantes.contains(this.carlos);
    Assert.assertTrue(_contains);
  }
  
  @Test
  public void verificarQueUnSolidarioJuegaAunqueSeHayanAnotado10SiHayOtrosSolidarios() {
    this.crearEInscribir5Estandares3Solidarios2Concicionales();
    this.juan.inscribirsePartido(this.partidoInagural);
    this.partidoInagural.confirmarEquipo();
    List<Jugador> _participantes = this.partidoInagural.getParticipantes();
    boolean _contains = _participantes.contains(this.juan);
    Assert.assertTrue(_contains);
  }
  
  @Test
  public void verificarQueCualquieraSeQuedaAfueraSiYaHayAnotados10Estandares() {
    this.crearEInscribir5Estandares3Solidarios2Concicionales();
    this.crearEInscribir5Estandares3Solidarios2Concicionales();
    this.carlos.inscribirsePartido(this.partidoInagural);
    this.juan.inscribirsePartido(this.partidoInagural);
    this.martin.inscribirsePartido(this.partidoInagural);
    this.partidoInagural.confirmarEquipo();
    List<Jugador> _participantes = this.partidoInagural.getParticipantes();
    boolean _contains = _participantes.contains(this.martin);
    Assert.assertFalse(_contains);
    List<Jugador> _participantes_1 = this.partidoInagural.getParticipantes();
    boolean _contains_1 = _participantes_1.contains(this.carlos);
    Assert.assertFalse(_contains_1);
    List<Jugador> _participantes_2 = this.partidoInagural.getParticipantes();
    boolean _contains_2 = _participantes_2.contains(this.juan);
    Assert.assertFalse(_contains_2);
  }
  
  public void crearEInscribir5Estandares3Solidarios2Concicionales() {
    Jugador estandar1 = this.crearEstandar();
    List<Jugador> _comunidad = this.partidoInagural.getComunidad();
    _comunidad.add(estandar1);
    estandar1.inscribirsePartido(this.partidoInagural);
    Jugador estandar2 = this.crearEstandar();
    List<Jugador> _comunidad_1 = this.partidoInagural.getComunidad();
    _comunidad_1.add(estandar2);
    estandar2.inscribirsePartido(this.partidoInagural);
    Jugador estandar3 = this.crearEstandar();
    List<Jugador> _comunidad_2 = this.partidoInagural.getComunidad();
    _comunidad_2.add(estandar3);
    estandar3.inscribirsePartido(this.partidoInagural);
    Jugador estandar4 = this.crearEstandar();
    List<Jugador> _comunidad_3 = this.partidoInagural.getComunidad();
    _comunidad_3.add(estandar4);
    estandar4.inscribirsePartido(this.partidoInagural);
    Jugador estandar5 = this.crearEstandar();
    List<Jugador> _comunidad_4 = this.partidoInagural.getComunidad();
    _comunidad_4.add(estandar5);
    estandar5.inscribirsePartido(this.partidoInagural);
    Jugador solidario1 = this.crearSolidario();
    List<Jugador> _comunidad_5 = this.partidoInagural.getComunidad();
    _comunidad_5.add(solidario1);
    solidario1.inscribirsePartido(this.partidoInagural);
    Jugador solidario2 = this.crearSolidario();
    List<Jugador> _comunidad_6 = this.partidoInagural.getComunidad();
    _comunidad_6.add(solidario2);
    solidario2.inscribirsePartido(this.partidoInagural);
    Jugador solidario3 = this.crearSolidario();
    List<Jugador> _comunidad_7 = this.partidoInagural.getComunidad();
    _comunidad_7.add(solidario3);
    solidario3.inscribirsePartido(this.partidoInagural);
    Jugador condicional1 = this.crearCondicional();
    List<Jugador> _comunidad_8 = this.partidoInagural.getComunidad();
    _comunidad_8.add(condicional1);
    condicional1.inscribirsePartido(this.partidoInagural);
    Jugador condicional2 = this.crearCondicional();
    List<Jugador> _comunidad_9 = this.partidoInagural.getComunidad();
    _comunidad_9.add(condicional2);
    condicional2.inscribirsePartido(this.partidoInagural);
  }
}
