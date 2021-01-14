﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GranColo.BusinessLayer;
using GranColo.BusinessLayer.Entities;
using GranColo.DataLayer;

namespace GranColo.DataLayer.Dao
{
    class DirectorTecnicoDao
    {
        internal bool validarDirectorTecnico(DirectorTecnico oDT)
        {
            string sql = "SELECT idDirectorTecnico " +
                " FROM DirectorTecnico " + 
                " WHERE nombreUsuario = '" + oDT.NombreUsuario + "'" +
                " AND password = '" + oDT.Password + "'";

            DataTable rtados  = DataManager.GetInstance().ConsultaSQL(sql);
            
            return (rtados.Rows.Count>0);
        }

        internal IList<DirectorTecnico> getAll()
        {
            IList<DirectorTecnico> list = new List<DirectorTecnico>();
            string sql = "SELECT * " +
                " FROM DirectorTecnico ";

            DataTable rtados = DataManager.GetInstance().ConsultaSQL(sql);

            foreach (DataRow row in rtados.Rows)
            {
                list.Add(ObjectMapping(row));
            }
            return list;
        }

        private DirectorTecnico ObjectMapping(DataRow row)
        {
            DirectorTecnico oDT = new DirectorTecnico();
            oDT.Club = new Club();
            oDT.IdDirectorTecnico = Int32.Parse(row[0].ToString());
            oDT.Nombre = row[1].ToString();
            oDT.Apellido = row[2].ToString();
            oDT.NroDoc = Int32.Parse(row[3].ToString());
            oDT.TipoDoc = Int32.Parse(row[4].ToString());
            oDT.NombreUsuario = row[5].ToString();
            oDT.Password = row[6].ToString();
            oDT.Email = row[7].ToString();
            oDT.Club.IdClub = Int32.Parse(row[8].ToString());
         

            return oDT;
        }
        
    }
}
