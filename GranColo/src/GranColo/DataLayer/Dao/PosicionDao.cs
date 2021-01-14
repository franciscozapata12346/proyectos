using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GranColo.BusinessLayer.Entities;

namespace GranColo.DataLayer.Dao
{
    class PosicionDao
    {
        internal bool InsertPosicion(Posicion oPosicion)
        {
            throw new NotImplementedException();
        }

        internal bool DeletePosicion(int selected)
        {
            throw new NotImplementedException();
        }

        internal bool ModifyPosicion(Posicion oPosicion, int selected)
        {
            throw new NotImplementedException();
        }


        internal IList<Posicion> GetAllPosicion()
        {
            List<Posicion> list = new List<Posicion>();
            string sql = " SELECT * FROM Posicion ";
            DataTable rtados = DataManager.GetInstance().ConsultaSQL(sql);
            foreach (DataRow row in rtados.Rows)
            {
                list.Add(ObjectMapping(row));
            }
            return list;
        }

        private Posicion ObjectMapping(DataRow row)
        {
            Posicion Posicion = new Posicion();
            Posicion.IdPosicion = Int32.Parse(row[0].ToString());
            Posicion.Nombre = row[1].ToString();
            return Posicion;
        }
    }
}
