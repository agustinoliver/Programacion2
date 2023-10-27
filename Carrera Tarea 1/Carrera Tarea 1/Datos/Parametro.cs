﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Carrera_Tarea_1.Datos
{
    public class Parametro
    {
        public string Nombre { get; set; }
        public object Valor { get; set; }

        public Parametro(string nombre, Object valor)
        {
            Nombre = nombre;
            Valor = valor;
        }
    }
}
