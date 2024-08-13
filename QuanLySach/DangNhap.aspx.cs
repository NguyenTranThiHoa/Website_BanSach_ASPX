using QuanLySach.Models;
using QuanLySach.WebAdmin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            using (var _context = new Model1())
            {
                var danhmuc = _context.phanloais.ToList();
                dropdownContent.InnerHtml = string.Join("", danhmuc.Select(d => $"<a href='#'id= {d.id} '> {d.phanloai_name}</a>"));
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(username))
            {
                DisplayError("Please enter your email or phone number.");
                return;
            }
            else if (string.IsNullOrEmpty(password))
            {
                DisplayError("Please enter your password.");
                return;
            }

            using (var _context = new Model1())
            {
                var user = _context.dangnhaps.FirstOrDefault(u => u.user_name == username && u.password == password);
                if (user != null)
                {
                    if (user.description == "0")
                    {
                        Session["id"] = user.id;
                        Session["username"] = user.user_name;
                        Session["name"] = user.name;
                        Response.Redirect("Index.aspx");
                    }
                    else if (user.description == "1")
                    {
                        Response.Redirect("WebAdmin/WFQLTrangChu.aspx");
                    }
                }
                else
                {
                    DisplayError("Invalid username or password.");
                }
            }
        }

        private void DisplayError(string errorMessage)
        {
            lblError.Text = errorMessage;
            lblError.Visible = true;
        }
    }
}
