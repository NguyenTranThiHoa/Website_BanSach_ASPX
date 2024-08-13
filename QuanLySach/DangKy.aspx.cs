using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadData();

                // Pre-populate the form fields if they were passed as query parameters
                if (Request.QueryString["username"] != null)
                    txtUsername.Text = Request.QueryString["username"];
                if (Request.QueryString["lastName"] != null)
                    txtLastName.Text = Request.QueryString["lastName"];
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

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string name = txtLastName.Text.Trim();

            if (string.IsNullOrEmpty(username))
            {
                DisplayError("Please enter your email or phone number.");
                return;
            }
            else if (string.IsNullOrEmpty(name))
            {
                DisplayError("Please enter your name.");
                return;
            }
            else if (string.IsNullOrEmpty(password))
            {
                DisplayError("Please enter a password.");
                return;
            }

            using (var _context = new Model1())
            {
                // Check if the username already exists
                if (_context.dangnhaps.Any(u => u.user_name == username))
                {
                    DisplayError("The email or phone number is already registered. Please try a different one.");
                    return;
                }

                // Create a new user
                var newUser = new dangnhap
                {
                    user_name = username,
                    password = password,
                    name = name,
                    description = "0"
                };

                _context.dangnhaps.Add(newUser);
                _context.SaveChanges();

                // Redirect to the login page or display a success message
                Response.Redirect("DangNhap.aspx?success=Registration successful. Please log in.");
            }
        }

        private void DisplayError(string errorMessage)
        {
            lblError.Text = errorMessage;
            lblError.Visible = true;
        }
    }
}