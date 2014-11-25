package uqbar.tpFutbol.division



import uqbar.tpFutbol.domain.Partido
import org.uqbar.commons.model.Entity

abstract class DividirEquiposCommand  {


def void dividirEquipos(Partido partido)
def Partido dividirEquiposPrueba(Partido partido)
def Partido dividirEquiposPruebaBase(Partido partido)
def boolean es14589(int posicionJug)
def boolean es236710(int posicionJug)
}