using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class SuaSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategories();
                LoadProductDetails();
            }
        }


        protected void LoadCategories()
        {
            using (var db = new Model1())
            {
                var categories = db.phanloais.ToList();
                phanloai_id.DataSource = categories;
                phanloai_id.DataTextField = "phanloai_name";
                phanloai_id.DataValueField = "id";
                phanloai_id.DataBind();
            }
        }

        protected void LoadProductDetails()
        {
            int productId = Convert.ToInt32(Request.QueryString["id"]);
            using (var db = new Model1())
            {
                var product = db.sanphams.FirstOrDefault(p => p.id == productId);
                if (product != null)
                {
                    tenTextBox.Text = product.ten;
                    giaTextBox.Text = product.gia.ToString();
                    soluongTextBox.Text = product.soluong.ToString();
                    // Set other product details if needed
                }
            }
        }
        protected void validateNumber(object sender, EventArgs e)
        {
            TextBox textBox = sender as TextBox;
            if (!string.IsNullOrEmpty(textBox.Text))
            {
                int number;
                if (!int.TryParse(textBox.Text, out number))
                {
                    textBox.Text = "";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Vui lòng chỉ nhập số')", true);
                }
            }
        }

        protected void updateProductButton_Click(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(Request.QueryString["id"]);
            using (var db = new Model1())
            {
                var product = db.sanphams.FirstOrDefault(p => p.id == productId);
                if (product != null)
                {
                    product.ten = tenTextBox.Text;
                    product.gia = Convert.ToInt32(giaTextBox.Text);
                    product.soluong = Convert.ToInt32(soluongTextBox.Text);
                    // Update other product details if needed
                    db.SaveChanges();
                }
            }
        }
    }
}