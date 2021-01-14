﻿using GranColo.BusinessLayer.Entities;
using GranColo.DataLayer.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GranColo.BusinessLayer.Services
{
    public class JugadorService
    {
        readonly JugadorDao JugadorDao = new JugadorDao();
        public int Selected { get; set; }

        internal bool InsertarJugador(Jugador oJugador)
        {
            return JugadorDao.insertJugador(oJugador);
        }

        internal bool ModificarJugador(Jugador oJugador)
        {
            return JugadorDao.modifyJugador(oJugador, Selected);
        }

        internal bool EliminarJugador()
        {
            return JugadorDao.deleteJugador(Selected);
        }

        internal IList<Jugador> ObtenerTodosJugadores()
        {
            return JugadorDao.getAllJugador();
        }

        internal IList<Jugador> ObtenerTodosJugadoresSinPuntaje(Dictionary<string, object> parametros)
        {
            return JugadorDao.getAllJugadorSinPuntaje(parametros);
        }

        internal bool ObtenerRepetidos(Jugador oJugador)
        {
            return JugadorDao.getRepeat(oJugador);
        }

        internal IList<Jugador> ConsultarJugadoresConFiltros(Dictionary<string, object> parametros)
        {
            return JugadorDao.GetJugadorByFilters(parametros);
        }

        internal IList<Jugador> ConsultarJugadoresSinEquipo(Dictionary<string, object> parametros)
        {
            return JugadorDao.GetJugadorSinEquipo(parametros);
        }

        internal IList<Jugador> ObtenerTodosJugadoresSinEquipo(int idEquipo)
        {
            return JugadorDao.GetAllJugadorSinEquipo(idEquipo);
        }
        internal IList<Jugador> ObtenerTodosJugadoresSinEquipo2(int idEquipo)
        {
            return JugadorDao.GetAllJugadorSinEquipo2(idEquipo);
        }


        internal bool actualizarPuntaje(Jugador jugadorSeleccionado, int nroFechaSeleccionado, int idTorneoSeleccionado)
        {
            return JugadorDao.updatePuntaje(jugadorSeleccionado, nroFechaSeleccionado, idTorneoSeleccionado);
        }

        internal IList<Jugador> ConsultarJugadoresSinPuntaje(Dictionary<string, object> parametros)
        {
            return JugadorDao.GetJugadorSinPuntaje(parametros);
        }

        internal IList<Jugador> ObtenerJugadorPorId()
        {
            return JugadorDao.getJugadorById(Selected);
        }

        internal bool insertarPuntajeJugador(List<Jugador> listJugadores, int idFecha, int idTorneo)
        {
            return JugadorDao.insertPuntajeJugador(listJugadores, idFecha, idTorneo);
        }

        internal IList<Jugador> ConsultarJugadoresConPuntaje(Dictionary<string, object> parametros)
        {
            return JugadorDao.GetJugadorConPuntaje(parametros);
        }

        internal IList<Jugador> ObtenerTodosJugadoresConPuntaje(Dictionary<string, object> parametros)
        {
            return JugadorDao.getAllJugadorConPuntaje(parametros);
        }

        internal bool EliminarPuntajeJugador(Jugador jugador, int nroFecha, int idTorneo)
        {
            return JugadorDao.deletePuntajeJugador(jugador, nroFecha, idTorneo);
        }
    }
}
