using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class WFQLNguoidung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUsersGrid();
            }

        }
        protected void BindUsersGrid()
        {
            using (Model1 db = new Model1()) // Use your actual DbContext class
            {
                UsersGridView.DataSource = db.dangnhaps.ToList();
                UsersGridView.DataBind();
            }
        }
        protected void UsersGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "DeleteUser")
            {
                int userId = Convert.ToInt32(e.CommandArgument);
                DeleteUser(userId);
                BindUsersGrid();
            }
            else if (e.CommandName == "EditUser")
            {
                int userId = Convert.ToInt32(e.CommandArgument);
                // Redirect to the edit page with the user ID as query string parameter
                Response.Redirect("~/SuaNguoidung.aspx?id=" + userId);
            }

        }
        protected void DeleteUser(int userId)
        {
            using (Model1 db = new Model1()) // Use your actual DbContext class
            {
                var user = db.dangnhaps.Find(userId);
                if (user != null)
                {
                    db.dangnhaps.Remove(user);
                    db.SaveChanges();
                }
            }
        }

        protected void UsersGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}