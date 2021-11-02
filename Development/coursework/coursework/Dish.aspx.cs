using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

namespace coursework
{
    public partial class Dish : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // SAVE button of dish web form.
            OracleConnection cn = new OracleConnection("Data Source=XE;User ID=cwkushal;password=gurung; Unicode=True");
            cn.Open();
            String query = "INSERT into dish (dish_code, dish_name, dish_rate, local_name) values('" + txtDishCode.Text + "','" + txtDishName.Text + "','" + txtDishRate.Text + "','" + txtLocalName.Text + "')";
            // Executing query
            OracleCommand cmd = new OracleCommand(query, cn);

            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Dish.aspx");

            txtDishCode.Text = "";
            txtDishName.Text = "";
            txtDishRate.Text = "";
            txtLocalName.Text = "";
        }
    }
}