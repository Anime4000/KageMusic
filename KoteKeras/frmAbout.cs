using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KoteKeras
{
    public partial class frmAbout : Form
    {
        public frmAbout()
        {
            InitializeComponent();
            FormBorderStyle = FormBorderStyle.FixedSingle;
            Icon = Properties.Resources.About1;
        }

        private void frmAbout_Load(object sender, EventArgs e)
        {

        }

        private void frmAbout_Shown(object sender, EventArgs e)
        {

        }

        private void frmAbout_FormClosed(object sender, FormClosedEventArgs e)
        {
            Dispose();
        }

        private void lblLink_Click(object sender, EventArgs e)
        {
            Process.Start(lblLink.Text);
        }

        private void lblCopyright_Click(object sender, EventArgs e)
        {
            Process.Start("https://www.curecomp.pro/");
        }

        private void pbxBannner_Click(object sender, EventArgs e)
        {
            Process.Start("https://www.pixiv.net/en/artworks/89771998");
        }
    }
}
