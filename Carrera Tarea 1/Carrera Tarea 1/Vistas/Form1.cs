﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Carrera_Tarea_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void nuevaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            NuevaCarrera nuevo = new NuevaCarrera();
            nuevo.ShowDialog();
        }
    }
}
