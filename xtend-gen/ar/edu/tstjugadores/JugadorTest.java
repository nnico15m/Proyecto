package ar.edu.tstjugadores;

import com.google.common.base.Objects;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import proyecto.Jugador;

@SuppressWarnings("all")
public class JugadorTest {
  private Jugador carlos;
  
  @Before
  public void init() {
    Jugador _jugador = new Jugador();
    this.carlos = _jugador;
    this.carlos.setContadorPartidos(2);
    this.carlos.setNivelAdvertencia(4);
    this.carlos.setNombreJugador("Epi la locomotora Epifanio");
    this.carlos.setNivelDePrioridad(0);
    this.carlos.setEstiloParaPartido("Estandar");
  }
  
  @Test
  public void primerTestQueCorroboraQueElgetestiloParaPartidoFunciona() {
    String _estiloParaPartido = this.carlos.getEstiloParaPartido();
    boolean _equals = Objects.equal(_estiloParaPartido, "Estandar");
    Assert.assertTrue(_equals);
  }
  
  @Test
  public void verificarTestQueCorroboraOtroget() {
    double _contadorPartidos = this.carlos.getContadorPartidos();
    boolean _equals = (_contadorPartidos == 2);
    Assert.assertTrue(_equals);
  }
}
