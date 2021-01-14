﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GranColo.BusinessLayer.Entities
{
    public class Localidad
    {
        public int IdLocalidad { get; set; }
        public string Nombre { get; set; }
        public Provincia Provincia { get; set; }
    }
}
