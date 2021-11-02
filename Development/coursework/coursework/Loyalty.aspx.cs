using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

namespace coursework
{
    public partial class Loyalty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            // SAVE button of Loyalty web form.
            OracleConnection cn = new OracleConnection("Data Source=XE;User ID=cwkushal;password=gurung; Unicode=True");
            cn.Open();
            String query = "INSERT into loyalty (loyalty_id, description, loyalty_points, dish_code, restaurant_id) values('" + txtLoyaltyID.Text + "', '" + txtDescription.Text + "', '" + txtLoyaltyPoints.Text + "', '" + txtDishCode.Text + "', '" + txtRestaurantID.Text + "')";
            // Executing query
            OracleCommand cmd = new OracleCommand(query, cn);

            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Loyalty.aspx");

            txtLoyaltyID.Text = "";
            txtDescription.Text = "";
            txtLoyaltyPoints.Text = "";
            txtDishCode.Text = "";
            txtRestaurantID.Text = "";
        }
    }
}