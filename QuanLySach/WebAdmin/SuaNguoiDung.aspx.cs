using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class SuaNguoiDung : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateUserData();
            }
        }

       
        protected void PopulateUserData()
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                int userId;
                if (int.TryParse(Request.QueryString["id"], out userId))
                {
                    using (Model1 db = new Model1())
                    {
                        var user = db.dangnhaps.FirstOrDefault(u => u.id == userId);
                        if (user != null)
                        {
                            // Populate form fields with user data
                            UserIdHiddenField.Value = user.id.ToString();
                            FirstNameTextBox.Text = user.user_name;
                            LastNameTextBox.Text = user.name;
                            EmailTextBox.Text = user.password;
                            RoleDropDownList.SelectedValue = user.description;
                        }
                    }
                }
            }
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
    
        }

        protected void UpdateUserData()
        {
            int userId;
            if (int.TryParse(UserIdHiddenField.Value, out userId))
            {
                using (Model1 db = new Model1())
                {
                    var user = db.dangnhaps.FirstOrDefault(u => u.id == userId);
                    if (user != null)
                    {
                        // Update user data
                        user.user_name = FirstNameTextBox.Text;
                        user.name = LastNameTextBox.Text;
                        user.password = EmailTextBox.Text;
                        user.description = RoleDropDownList.SelectedValue;

                        try
                        {
                            db.SaveChanges();
                            // Display success message

                        }
                        catch (Exception ex)
                        {

                        }
                    }
                }
            }

        }

        protected void SuaNDButton_Click(object sender, EventArgs e)
        {
            UpdateUserData();
        }
    }
}