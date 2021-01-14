﻿using GranColo.BusinessLayer.Entities;
using GranColo.BusinessLayer.Services;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GranColo.GUILayer.Clubes.Jugadores
{
    
    public partial class FrmPuntajeJugador : Form
    {
        readonly TorneoService TorneoService;
        readonly FechaService FechaService;
        readonly ClubService ClubService;
        readonly JugadorService JugadorService;
        readonly PosicionService PosicionService;
        static object CurValue;

        public FrmPuntajeJugador()
        {
            InitializeComponent();
            dgv_jugadores.AutoGenerateColumns = false;
            TorneoService = new TorneoService();
            FechaService = new FechaService();
            ClubService = new ClubService();
            JugadorService = new JugadorService();
            PosicionService = new PosicionService();
            LlenarCombo(cbo_torneo, TorneoService.obtenerTodosTorneos(), "Nombre", "IdTorneo");
            LlenarCombo(cbo_club, ClubService.ObtenerTodosClubes(), "Nombre", "IdClub");
            LlenarCombo(cb_posicion, PosicionService.ObtenerTodosPosiciones(), "Nombre", "IdPosicion");
        }

        private void LlenarCombo(ComboBox cbo, Object source, string display, String value)
        {
            cbo.ValueMember = value;
            cbo.DisplayMember = display;
            cbo.DataSource = source;
            cbo.SelectedIndex = -1;
        }

        private void cbo_torneo_SelectedValueChanged(object sender, EventArgs e)
        {
            if (cbo_torneo.SelectedItem != null)
            {
                cbo_fecha.Enabled = true;
                var idTorneo = (int)cbo_torneo.SelectedValue;
                LlenarCombo(cbo_fecha, FechaService.obtenerFechaPorTorneo(idTorneo), "Nombre", "IdFecha");
                dgv_jugadores.DataSource = null;
            }
            
        }

        private void btn_salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btn_aceptar_Click(object sender, EventArgs e)
        {
            if (validarCampos())
            {
                int idTorneo = (int)cbo_torneo.SelectedValue;
                int idFecha = (int)cbo_fecha.SelectedValue;
                List<Jugador> listJugadores = new List<Jugador>();
                if (dgv_jugadores.Rows.Count != 0)
                {
                    if (validarCeldasNull())
                    {
                        foreach (DataGridViewRow row in dgv_jugadores.Rows)
                        {
                            if (row.Cells["col_puntaje"].Value != null)
                            {
                                Jugador jugador = new Jugador();
                                jugador.IdJugador = (int)row.Cells["col_id"].Value;
                                jugador.Puntaje = Int32.Parse(row.Cells["col_puntaje"].Value.ToString());
                                listJugadores.Add(jugador);
                            }
                        }
                        if (JugadorService.insertarPuntajeJugador(listJugadores, idFecha, idTorneo))
                        {
                            MessageBox.Show("Puntajes agregados con éxito!.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            ReiniciarFormPuntaje();
                        }
                        else
                        {
                            MessageBox.Show("Error, puntaje no agregado!.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Por favor agregue puntaje a un jugador..", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    MessageBox.Show("No hay jugadores para puntuar..", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void ReiniciarFormPuntaje()
        {
            cbo_club.SelectedIndex = -1;
            cbo_fecha.SelectedIndex = -1;
            cbo_fecha.Enabled = false;
            cbo_torneo.SelectedIndex = -1;
            cb_todos.Checked = true;
            dgv_jugadores.DataSource = null;
        }

        private bool validarCeldasNull()
        {
            foreach (DataGridViewRow row in dgv_jugadores.Rows)
            {
                if (row.Cells["col_puntaje"].Value != null)
                {
                    return true;
                }
            }
            return false;
        }

        private bool validarCampos()
        {
            if(cbo_torneo.SelectedItem == null)
            {
                MessageBox.Show("Seleccione un torneo..", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (cbo_fecha.SelectedItem == null)
            {
                MessageBox.Show("Seleccione una fecha..", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        private void btn_buscar_Click(object sender, EventArgs e)
        {
            if (validarFechaYTorneo())
            {
                Dictionary<string, object> parametros = new Dictionary<string, object>();
                parametros.Add("idTorneo", cbo_torneo.SelectedValue.ToString());
                parametros.Add("nroFecha", cbo_fecha.SelectedValue.ToString());
                if (!cb_todos.Checked)
                {
                    parametros.Add("costoDesde", nud_min.Value);
                    parametros.Add("costoHasta", nud_max.Value);
                    parametros.Add("nombre", "%" + txt_nombre.Text + "%");
                    parametros.Add("apellido", "%" + txt_apellido.Text + "%");
                    if (cb_posicion.SelectedIndex != -1)
                    {
                        parametros.Add("idPosicion", cb_posicion.SelectedValue.ToString());
                    }
                    if (cbo_club.SelectedIndex != -1)
                    {
                        parametros.Add("idClub", cbo_club.SelectedValue.ToString());
                    }
                    IList<Jugador> listadoJugadores = JugadorService.ConsultarJugadoresSinPuntaje(parametros);
                    dgv_jugadores.DataSource = listadoJugadores;

                    if (dgv_jugadores.Rows.Count == 0)
                    {
                        MessageBox.Show("No se encontraron jugadores con esos filtros!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    IList<Jugador> listTodosJugadores = JugadorService.ObtenerTodosJugadoresSinPuntaje(parametros);
                    dgv_jugadores.DataSource = listTodosJugadores;
                    if (dgv_jugadores.Rows.Count == 0)
                    {
                        MessageBox.Show("No se encontraron jugadores sin puntuar!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
        }

        private bool validarFechaYTorneo()
        {
            if (cbo_torneo.SelectedIndex == -1)
            {
                MessageBox.Show("Elija un torneo..", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            if (cbo_fecha.SelectedIndex == -1)
            {
                MessageBox.Show("Elija una fecha..", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            return true;
        }

        private void cb_todos_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_todos.Checked)
            {
                cbo_club.Enabled = false;
                cb_posicion.Enabled = false;
                txt_apellido.Enabled = false;
                txt_nombre.Enabled = false;
                nud_max.Enabled = false;
                nud_min.Enabled = false;
            }
            else
            {
                cbo_club.Enabled = true;
                cb_posicion.Enabled = true;
                txt_apellido.Enabled = true;
                txt_nombre.Enabled = true;
                nud_min.Enabled = true;
                nud_max.Enabled = true;
            }
        }

        private void cbo_fecha_SelectedValueChanged(object sender, EventArgs e)
        {
            dgv_jugadores.DataSource = null;
        }

        private void FrmPuntajeJugador_Load(object sender, EventArgs e)
        {
            cbo_fecha.Enabled = false;
        }

        private void dgv_jugadores_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            object puntaje = dgv_jugadores.Rows[e.RowIndex].Cells["col_puntaje"].Value;
            if(puntaje != null)
            {
                string StringPuntaje = dgv_jugadores.Rows[e.RowIndex].Cells["col_puntaje"].Value.ToString();
                if (Regex.IsMatch(StringPuntaje, @"^-?\d+$")){
                    int EnteroPuntaje = Int32.Parse(dgv_jugadores.Rows[e.RowIndex].Cells["col_puntaje"].Value.ToString());
                    
                    if (EnteroPuntaje < 0 || EnteroPuntaje > 10)
                    {
                        dgv_jugadores.Rows[e.RowIndex].Cells["col_puntaje"].Value = CurValue;
                        MessageBox.Show("El puntaje debe ser entre 0 y 10.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    else
                    {
                        dgv_jugadores.Rows[e.RowIndex].Cells["col_puntaje"].Value = EnteroPuntaje;
                    }
                }
                else
                {
                    dgv_jugadores.Rows[e.RowIndex].Cells["col_puntaje"].Value = CurValue;
                    MessageBox.Show("Solo se permiten numeros enteros!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private void dgv_jugadores_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            CurValue = dgv_jugadores.Rows[e.RowIndex].Cells["col_puntaje"].Value;
        }
    }
}
