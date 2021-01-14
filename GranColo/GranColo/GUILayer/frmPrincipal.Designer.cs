﻿namespace GranColo.GUILayer
{
    partial class frmPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.fixtureToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.fechaToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.torneoToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.asignarFechasATorneosToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarFechasAsignadasToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.equiposToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.jugadoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.equipoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.asignarJugadoresAEquiposToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarJugadoresAsignadosAEquiposToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.generarReportePuntosJugadorEnTorneoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.estadisticasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.puntajeDeJugadorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarPuntajeJugadoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.salirToolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fixtureToolStripMenuItem1,
            this.equiposToolStripMenuItem,
            this.reportesToolStripMenuItem,
            this.estadisticasToolStripMenuItem,
            this.salirToolStripMenuItem2});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(661, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // fixtureToolStripMenuItem1
            // 
            this.fixtureToolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fechaToolStripMenuItem1,
            this.torneoToolStripMenuItem1,
            this.asignarFechasATorneosToolStripMenuItem1,
            this.consultarFechasAsignadasToolStripMenuItem1});
            this.fixtureToolStripMenuItem1.Name = "fixtureToolStripMenuItem1";
            this.fixtureToolStripMenuItem1.Size = new System.Drawing.Size(55, 20);
            this.fixtureToolStripMenuItem1.Text = "Fixture";
            // 
            // fechaToolStripMenuItem1
            // 
            this.fechaToolStripMenuItem1.Name = "fechaToolStripMenuItem1";
            this.fechaToolStripMenuItem1.Size = new System.Drawing.Size(217, 22);
            this.fechaToolStripMenuItem1.Text = "Fecha";
            this.fechaToolStripMenuItem1.Click += new System.EventHandler(this.FechaToolStripMenuItem1_Click);
            // 
            // torneoToolStripMenuItem1
            // 
            this.torneoToolStripMenuItem1.Name = "torneoToolStripMenuItem1";
            this.torneoToolStripMenuItem1.Size = new System.Drawing.Size(217, 22);
            this.torneoToolStripMenuItem1.Text = "Torneo";
            this.torneoToolStripMenuItem1.Click += new System.EventHandler(this.TorneoToolStripMenuItem1_Click);
            // 
            // asignarFechasATorneosToolStripMenuItem1
            // 
            this.asignarFechasATorneosToolStripMenuItem1.Name = "asignarFechasATorneosToolStripMenuItem1";
            this.asignarFechasATorneosToolStripMenuItem1.Size = new System.Drawing.Size(217, 22);
            this.asignarFechasATorneosToolStripMenuItem1.Text = "Asignar fechas a torneos";
            this.asignarFechasATorneosToolStripMenuItem1.Click += new System.EventHandler(this.AsignarFechasATorneosToolStripMenuItem1_Click);
            // 
            // consultarFechasAsignadasToolStripMenuItem1
            // 
            this.consultarFechasAsignadasToolStripMenuItem1.Name = "consultarFechasAsignadasToolStripMenuItem1";
            this.consultarFechasAsignadasToolStripMenuItem1.Size = new System.Drawing.Size(217, 22);
            this.consultarFechasAsignadasToolStripMenuItem1.Text = "Consultar fechas asignadas";
            this.consultarFechasAsignadasToolStripMenuItem1.Click += new System.EventHandler(this.ConsultarFechasAsignadasToolStripMenuItem1_Click);
            // 
            // equiposToolStripMenuItem
            // 
            this.equiposToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.jugadoresToolStripMenuItem,
            this.equipoToolStripMenuItem,
            this.asignarJugadoresAEquiposToolStripMenuItem,
            this.consultarJugadoresAsignadosAEquiposToolStripMenuItem});
            this.equiposToolStripMenuItem.Name = "equiposToolStripMenuItem";
            this.equiposToolStripMenuItem.Size = new System.Drawing.Size(55, 20);
            this.equiposToolStripMenuItem.Text = "Clubes";
            // 
            // jugadoresToolStripMenuItem
            // 
            this.jugadoresToolStripMenuItem.Name = "jugadoresToolStripMenuItem";
            this.jugadoresToolStripMenuItem.Size = new System.Drawing.Size(291, 22);
            this.jugadoresToolStripMenuItem.Text = "Jugador";
            this.jugadoresToolStripMenuItem.Click += new System.EventHandler(this.JugadoresToolStripMenuItem_Click);
            // 
            // equipoToolStripMenuItem
            // 
            this.equipoToolStripMenuItem.Name = "equipoToolStripMenuItem";
            this.equipoToolStripMenuItem.Size = new System.Drawing.Size(291, 22);
            this.equipoToolStripMenuItem.Text = "Equipo";
            this.equipoToolStripMenuItem.Click += new System.EventHandler(this.EquipoToolStripMenuItem_Click);
            // 
            // asignarJugadoresAEquiposToolStripMenuItem
            // 
            this.asignarJugadoresAEquiposToolStripMenuItem.Name = "asignarJugadoresAEquiposToolStripMenuItem";
            this.asignarJugadoresAEquiposToolStripMenuItem.Size = new System.Drawing.Size(291, 22);
            this.asignarJugadoresAEquiposToolStripMenuItem.Text = "Asignar Jugadores a Equipos";
            this.asignarJugadoresAEquiposToolStripMenuItem.Click += new System.EventHandler(this.asignarJugadoresAEquiposToolStripMenuItem_Click);
            // 
            // consultarJugadoresAsignadosAEquiposToolStripMenuItem
            // 
            this.consultarJugadoresAsignadosAEquiposToolStripMenuItem.Name = "consultarJugadoresAsignadosAEquiposToolStripMenuItem";
            this.consultarJugadoresAsignadosAEquiposToolStripMenuItem.Size = new System.Drawing.Size(291, 22);
            this.consultarJugadoresAsignadosAEquiposToolStripMenuItem.Text = "Consultar Jugadores asignados a Equipos";
            this.consultarJugadoresAsignadosAEquiposToolStripMenuItem.Click += new System.EventHandler(this.ConsultarJugadoresAsignadosAEquiposToolStripMenuItem_Click);
            // 
            // reportesToolStripMenuItem
            // 
            this.reportesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.generarReportePuntosJugadorEnTorneoToolStripMenuItem,
            this.reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem,
            this.listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem,
            this.estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem});
            this.reportesToolStripMenuItem.Name = "reportesToolStripMenuItem";
            this.reportesToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.reportesToolStripMenuItem.Text = "Reportes";
            this.reportesToolStripMenuItem.Click += new System.EventHandler(this.reportesToolStripMenuItem_Click);
            // 
            // generarReportePuntosJugadorEnTorneoToolStripMenuItem
            // 
            this.generarReportePuntosJugadorEnTorneoToolStripMenuItem.Name = "generarReportePuntosJugadorEnTorneoToolStripMenuItem";
            this.generarReportePuntosJugadorEnTorneoToolStripMenuItem.Size = new System.Drawing.Size(428, 22);
            this.generarReportePuntosJugadorEnTorneoToolStripMenuItem.Text = "Reporte puntos Jugador por Club en Torneo";
            this.generarReportePuntosJugadorEnTorneoToolStripMenuItem.Click += new System.EventHandler(this.generarReportePuntosJugadorEnTorneoToolStripMenuItem_Click);
            // 
            // reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem
            // 
            this.reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem.Name = "reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem";
            this.reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem.Size = new System.Drawing.Size(428, 22);
            this.reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem.Text = "Reporte puntos Jugador por Equipo en Torneo";
            this.reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem.Click += new System.EventHandler(this.ReportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem_Click);
            // 
            // listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem
            // 
            this.listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem.Name = "listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem";
            this.listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem.Size = new System.Drawing.Size(428, 22);
            this.listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem.Text = "Listado de puntos de Jugadores por Fecha de Torneo";
            this.listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem.Click += new System.EventHandler(this.ListadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem_Click);
            // 
            // estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem
            // 
            this.estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem.Name = "estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem";
            this.estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem.Size = new System.Drawing.Size(428, 22);
            this.estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem.Text = "Estadisticto de top 5 jugadores con mayor participación en equipos";
            this.estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem.Click += new System.EventHandler(this.EstadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem_Click);
            // 
            // estadisticasToolStripMenuItem
            // 
            this.estadisticasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.puntajeDeJugadorToolStripMenuItem,
            this.consultarPuntajeJugadoresToolStripMenuItem});
            this.estadisticasToolStripMenuItem.Name = "estadisticasToolStripMenuItem";
            this.estadisticasToolStripMenuItem.Size = new System.Drawing.Size(79, 20);
            this.estadisticasToolStripMenuItem.Text = "Estadisticas";
            // 
            // puntajeDeJugadorToolStripMenuItem
            // 
            this.puntajeDeJugadorToolStripMenuItem.Name = "puntajeDeJugadorToolStripMenuItem";
            this.puntajeDeJugadorToolStripMenuItem.Size = new System.Drawing.Size(224, 22);
            this.puntajeDeJugadorToolStripMenuItem.Text = "Puntuar Jugadores";
            this.puntajeDeJugadorToolStripMenuItem.Click += new System.EventHandler(this.puntajeDeJugadorToolStripMenuItem_Click);
            // 
            // consultarPuntajeJugadoresToolStripMenuItem
            // 
            this.consultarPuntajeJugadoresToolStripMenuItem.Name = "consultarPuntajeJugadoresToolStripMenuItem";
            this.consultarPuntajeJugadoresToolStripMenuItem.Size = new System.Drawing.Size(224, 22);
            this.consultarPuntajeJugadoresToolStripMenuItem.Text = "Consultar Puntaje Jugadores";
            this.consultarPuntajeJugadoresToolStripMenuItem.Click += new System.EventHandler(this.consultarPuntajeJugadoresToolStripMenuItem_Click);
            // 
            // salirToolStripMenuItem2
            // 
            this.salirToolStripMenuItem2.Name = "salirToolStripMenuItem2";
            this.salirToolStripMenuItem2.Size = new System.Drawing.Size(41, 20);
            this.salirToolStripMenuItem2.Text = "Salir";
            this.salirToolStripMenuItem2.Click += new System.EventHandler(this.SalirToolStripMenuItem2_Click);
            // 
            // frmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackgroundImage = global::GranColo.Properties.Resources.grancolo;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(661, 361);
            this.Controls.Add(this.menuStrip1);
            this.HelpButton = true;
            this.MainMenuStrip = this.menuStrip1;
            this.MinimumSize = new System.Drawing.Size(500, 400);
            this.Name = "frmPrincipal";
            this.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.ShowIcon = false;
            this.Text = "Gran Colo";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmPrincipal_FormClosing);
            this.Load += new System.EventHandler(this.FrmPrincipal_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem estadisticasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem equiposToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem jugadoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem fixtureToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem fechaToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem torneoToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem asignarFechasATorneosToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem consultarFechasAsignadasToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem salirToolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem equipoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem asignarJugadoresAEquiposToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem puntajeDeJugadorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consultarPuntajeJugadoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem generarReportePuntosJugadorEnTorneoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportePuntosJugadorPorEquipoEnTorneoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem listadoDePuntosDeJugadoresPorFechaDeTorneoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem estadistictoDeTop4JugadoresConMayorParticipaciónEnEquiposToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consultarJugadoresAsignadosAEquiposToolStripMenuItem;
    }
}