using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.SqlClient;

namespace QLVĐV
{
    public partial class state : Form
    {
        SqlConnection connection;
        SqlCommand Command;
        string str = @"Data Source=DESKTOP-PPOG0J8\CSDL;Initial Catalog=Athletes;Integrated Security=True";
       SqlDataAdapter adapter= new SqlDataAdapter();
        DataTable table= new DataTable ();
        void loaddata()
        {
            Command = connection.CreateCommand();
            Command.CommandText = "select *from Sport ";
            adapter.SelectCommand = Command;
            table.Clear();
            adapter.Fill(table);
            dgv.DataSource = table;
        }
        public state()
        {
            InitializeComponent();
        }
        private void state_Load(object sender, EventArgs e)
         {
             connection = new SqlConnection(str);
             connection.Open();
             connection.Close();
            loaddata();
         }
         private void button4_Click(object sender, EventArgs e)
         {
             check f = new check();
             this.Hide();
             f.ShowDialog();
             this.Show();
         }

         private void state_FormClosing(object sender, FormClosingEventArgs e)
         {
             if (MessageBox.Show("Do you really want to exit the program ?", "notify", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
             {
                 e.Cancel = true;
             }
         }

         private void button5_Click(object sender, EventArgs e)
         {
             Application.Exit();
         }

         private void label3_Click(object sender, EventArgs e)
         {

         }

         private void dgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
         {

         }

         private void label2_Click(object sender, EventArgs e)
         {

         }

        
        
    }
}
