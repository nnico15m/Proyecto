package ar.edu.tstjugadores;

import java.util.List;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import proyecto.Jugador;
import proyecto.Partido;

@SuppressWarnings("all")
public class PartidoTest {
  private Partido partidoInagural;
  
  private Jugador carlos;
  
  @Before
  public void init() {
    Jugador _jugador = new Jugador();
    this.carlos = _jugador;
    Partido _partido = new Partido();
    this.partidoInagural = _partido;
    this.partidoInagural.setFecha(13021992);
    this.partidoInagural.setCondicion(false);
    this.partidoInagural.setHora(500);
    List<Jugador> _participantes = this.partidoInagural.getParticipantes();
    _participantes.add(this.carlos);
  }
  
  @Test
  public void verificarQueUnaVezQueMetoAlJugadorLaListaEstaEnUno() {
    List<Jugador> _participantes = this.partidoInagural.getParticipantes();
    int _size = _participantes.size();
    boolean _equals = (_size == 1);
    Assert.assertTrue(_equals);
  }
}
