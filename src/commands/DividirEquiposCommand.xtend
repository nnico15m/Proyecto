package commands

import proyecto.Jugador
import java.util.List
import proyecto.Partido

interface DividirEquiposCommand {


def void dividirEquipos(Partido partido)
def boolean verSiLaPosicionDelJugEsValida(int posicionJug)
def boolean posicionesSobrantes(int posicionJug)
}