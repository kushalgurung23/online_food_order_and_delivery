using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

namespace coursework
{
    public partial class Restaurant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            // SAVE button of restaurant web form.
            OracleConnection cn = new OracleConnection("Data Source=XE;User ID=cwkushal;password=gurung; Unicode=True");
            cn.Open();
            String query = "INSERT into restaurant (restaurant_id, restaurant_name, restaurant_address, contact_number) values('" + restaurant_idTextBox.Text + "','" + restaurant_nameTextBox.Text + "','"+addressTextBox.Text +"','" + contactNumberTextBox.Text+"')";
            // Executing query
            OracleCommand cmd = new OracleCommand(query, cn);

            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Restaurant.aspx");

            restaurant_idTextBox.Text = "";
            restaurant_nameTextBox.Text = "";
            addressTextBox.Text = "";
            contactNumberTextBox.Text = "";
        }
    }
}