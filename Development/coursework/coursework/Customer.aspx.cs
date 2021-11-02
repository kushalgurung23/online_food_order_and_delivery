using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

namespace coursework
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // SAVE button of dish web form.
            OracleConnection cn = new OracleConnection("Data Source=XE;User ID=cwkushal;password=gurung; Unicode=True");
            cn.Open();
            String query = "INSERT into customer (customer_id, customer_name, age, address, contact_number) values('" + customerIDTextBox.Text + "','" + customerNameTextBox.Text + "','" + ageTextBox.Text +"','"  + addressTextBox.Text + "','" + contactNumberTextBox.Text + "')";
            // Executing query
            OracleCommand cmd = new OracleCommand(query, cn);

            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Customer.aspx");

            customerIDTextBox.Text = "";
            customerNameTextBox.Text = "";
            ageTextBox.Text = "";
            addressTextBox.Text = "";
            contactNumberTextBox.Text = "";
        }

        protected void customerNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}