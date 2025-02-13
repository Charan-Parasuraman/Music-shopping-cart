﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Security.Claims;

namespace ids410Clnu4Pro
{
    public partial class AddCC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (User.Identity.IsAuthenticated)
            {
                if (Session["userID"] == null)
                {
                    var identity = new ClaimsIdentity(User.Identity);
                    int length = identity.Claims.ElementAt(0).ToString().Length;
                    Session["userID"] = identity.Claims.ElementAt(0).ToString().Substring(length - 36);
                    Session["userName"] = User.Identity.Name;
                }
            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            //declare and initialize connection object to connect to the database
            SqlConnection conn = new SqlConnection(
                WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            SqlCommand cmd; //declare a command object that will be used to send commands to database.

            conn.Open(); //open a connection to the database
            cmd = conn.CreateCommand(); //create a command object

            cmd.CommandText = "Insert into CreditCard Values ('" +
                txtCCNo.Text + "', '" +
                txtFName.Text + "', '" +
                txtMidName.Text + "', '" +
                txtLName.Text + "', '" +
                txtExpirationDate.Text + "', '" + txtType.Text + "', " +
                txtcvc.Text + ", '" + txtIsDefault.Text + "', '" +
                Session["userID"].ToString() + "')";
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            conn.Close();

            // added for navigation
            Response.Redirect("~/selectCC.aspx");


         

        }
    }
}