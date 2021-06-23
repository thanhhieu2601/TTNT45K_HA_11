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
    public partial class check : Form
    {
         SqlConnection connection;
        SqlCommand Command;
        string str = @"Data Source=DESKTOP-PPOG0J8\CSDL;Initial Catalog=Athletes;Integrated Security=True";
       SqlDataAdapter adapter= new SqlDataAdapter();
        DataTable table= new DataTable ();
        void loaddata()
        {
            Command = connection.CreateCommand();
            Command.CommandText = "select *from Information,Achievement,Condition";
            adapter.SelectCommand = Command;
            table.Clear();
            adapter.Fill(table);
            dgv.DataSource = table;
        }
        public check()
        {
            InitializeComponent();
        }

        private void check_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(str);
            connection.Open();
            loaddata();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //add f = new add();
            //this.Hide();
            //f.ShowDialog();
            //this.Show();
        }

       

        private void txt_TimKiem_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select *from Information where IDINFOR like '%"+txt_TimKiem.Text+"%'",con);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Information");
            dgv.DataSource = ds.Tables["Information"].DefaultView;
            con.Close();
        }

        private void btn_cancel_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void btn_edit_Click(object sender, EventArgs e)
        {

        }             
    }
}
