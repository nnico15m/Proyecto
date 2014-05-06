package ar.org.uqbar.disenio.tst;

import java.util.List;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import proyecto.Condicional2;
import proyecto.Estandar2;
import proyecto.Jugador2;
import proyecto.Partido2;
import proyecto.Solidaria2;

@SuppressWarnings("all")
public class Testverificartipos {
  private Jugador2 carlos;
  
  private Jugador2 martin;
  
  private Jugador2 juan;
  
  private Estandar2 estandar2;
  
  private Partido2 partidoInagural;
  
  private Condicional2 condicional2;
  
  private Solidaria2 solidaria2;
  
  @Before
  public void init() {
    Jugador2 _jugador2 = new Jugador2();
    this.carlos = _jugador2;
    Jugador2 _jugador2_1 = new Jugador2();
    this.martin = _jugador2_1;
    Jugador2 _jugador2_2 = new Jugador2();
    this.juan = _jugador2_2;
    Estandar2 _estandar2 = new Estandar2();
    this.estandar2 = _estandar2;
    Condicional2 _condicional2 = new Condicional2();
    this.condicional2 = _condicional2;
    Solidaria2 _solidaria2 = new Solidaria2();
    this.solidaria2 = _solidaria2;
    this.carlos.setContadorPartidos(2);
    this.carlos.setFormaDeInscripcion(this.estandar2);
    this.martin.setContadorPartidos(2);
    this.martin.setFormaDeInscripcion(this.condicional2);
    this.juan.setContadorPartidos(2);
    this.juan.setFormaDeInscripcion(this.solidaria2);
    Partido2 _partido2 = new Partido2();
    this.partidoInagural = _partido2;
    List<Jugador2> _comunidad = this.partidoInagural.getComunidad();
    _comunidad.add(this.carlos);
    List<Jugador2> _comunidad_1 = this.partidoInagural.getComunidad();
    _comunidad_1.add(this.martin);
    List<Jugador2> _comunidad_2 = this.partidoInagural.getComunidad();
    _comunidad_2.add(this.juan);
  }
  
  @Test
  public void verificarSiUnaVezQueElUsuarioSeInscribioSeEncuentraEnLaListaParticipantes() {
    this.carlos.inscribirsePartido(this.partidoInagural);
    List<Jugador2> _participantes = this.partidoInagural.getParticipantes();
    boolean _contains = _participantes.contains(this.carlos);
    Assert.assertTrue(_contains);
  }
  
  @Test
  public void verificarQueLaListaCondicionalEstaEn0() {
    List<Jugador2> _inscriptosCondicionales = this.partidoInagural.getInscriptosCondicionales();
    int _size = _inscriptosCondicionales.size();
    boolean _equals = (_size == 1);
    Assert.assertFalse(_equals);
  }
  
  @Test
  public void verificarQueLaListaParticipantesEsDeTamañoIgualAUnoLugoDeQueSeInscribioUnSoloJugador() {
    this.carlos.inscribirsePartido(this.partidoInagural);
    List<Jugador2> _participantes = this.partidoInagural.getParticipantes();
    int _size = _participantes.size();
    boolean _equals = (_size == 1);
    Assert.assertTrue(_equals);
  }
  
  @Test
  public void verificarQueSiElUsuarioSeQuiereIngresarMuchasVecesNoVaAPoderHacerlo() {
    this.carlos.inscribirsePartido(this.partidoInagural);
    this.carlos.inscribirsePartido(this.partidoInagural);
    this.carlos.inscribirsePartido(this.partidoInagural);
    List<Jugador2> _participantes = this.partidoInagural.getParticipantes();
    int _size = _participantes.size();
    boolean _equals = (_size == 1);
    Assert.assertTrue(_equals);
  }
  
  @Test
  public void verificarSiUnaVezQueElUsuarioSeInscribioSeEncuentraEnLaListaCondicional() {
    this.martin.inscribirsePartido(this.partidoInagural);
    List<Jugador2> _inscriptosCondicionales = this.partidoInagural.getInscriptosCondicionales();
    boolean _contains = _inscriptosCondicionales.contains(this.martin);
    Assert.assertTrue(_contains);
  }
  
  @Test
  public void verificarSiUnaVezQueElUsuarioSeInscribioSeEncuentraEnLaListaSolidaria() {
    this.juan.inscribirsePartido(this.partidoInagural);
    List<Jugador2> _inscriptosSolidarios = this.partidoInagural.getInscriptosSolidarios();
    boolean _contains = _inscriptosSolidarios.contains(this.juan);
    Assert.assertTrue(_contains);
  }
  
  @Test
  public void verificarQueSeENcuentranEnLaListaComunidadLos3PartcipantesQueYoInventamos() {
    List<Jugador2> _comunidad = this.partidoInagural.getComunidad();
    int _size = _comunidad.size();
    boolean _equals = (_size == 3);
    Assert.assertTrue(_equals);
  }
}
