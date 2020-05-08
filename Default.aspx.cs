using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
namespace check
{
    public partial class _Default : System.Web.UI.Page
    {
       // SqlConnection con = new SqlConnection();

        string Courseval, langval;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                Courseval = "B.E/B.TECH";
            }

            else if (RadioButton2.Checked)
            {
                Courseval = "OTHERS";
            }
            if (CheckBox1.Checked)
            {
                langval = "ENGLISH";
            }

            else if (CheckBox2.Checked)
            {
                langval = "OTHERS";
            }
            string connectionString = "datasource=127.0.0.1; port=3306; username=root; password=; database=my_9check";
            string query = "INSERT INTO check_data(`id`,`name`,`course`,`gender`,`lang`) VALUES (NULL,'" + TxtBox1.Text + "','" + Courseval + "', '" + DropDownList1.SelectedValue + "','" + langval + "')";
            // Which could be translated manually to :
            // INSERT INTO user(`id`, `first_name`, `last_name`, `address`) VALUES (NULL, 'Bruce', 'Wayne', 'Wayne Manor')

            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
            MySqlCommand commandDatabase = new MySqlCommand(query, databaseConnection);
            commandDatabase.CommandTimeout = 60;
          
            try
            {

                Response.Write("<script> alert('" + Courseval + "');</script>");
                databaseConnection.Open();
                MySqlDataReader myReader = commandDatabase.ExecuteReader();

                Response.Write("<script> alert('User succesfully registered');</script>");

                //MessageBox.Show("User succesfully registered");

                databaseConnection.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('"+ ex.Message + "');</script>");

                // Show any error message.
                // MessageBox.Show(ex.Message);
            }
        }
    }
}