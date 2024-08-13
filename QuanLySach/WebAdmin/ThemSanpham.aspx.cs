using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class ThemSanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategories();
            }
        }
        private void BindCategories()
        {
            using (var context = new Model1())
            {
                var categories = context.phanloais.ToList();
                CategoryDropDown.DataSource = categories;
                CategoryDropDown.DataTextField = "phanloai_name"; // Assuming phanloai has a field named 'phanloai_name'
                CategoryDropDown.DataValueField = "id"; // Assuming phanloai's primary key is 'id'
                CategoryDropDown.DataBind();
                CategoryDropDown.Items.Insert(0, new ListItem("Chọn Danh mục", ""));
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void CapnhatButton_Click(object sender, EventArgs e)
        {
            // Retrieve the product details from the form
            string productName = ProductNameTextBox.Text.Trim();
            string description = DescriptionTextBox.Text.Trim();
            int price;
            int quantity;
            int categoryId;

            if (string.IsNullOrEmpty(productName) ||
                !int.TryParse(PriceTextBox.Text.Trim(), out price) ||
                !int.TryParse(QuantityTextBox.Text.Trim(), out quantity) ||
                !int.TryParse(CategoryDropDown.SelectedValue, out categoryId))
            {
                AlertMessage.Text = "Vui lòng nhập đầy đủ thông tin sản phẩm.";
                AlertMessage.CssClass = "alert alert-danger";
                AlertMessage.Visible = true;
                return;
            }

            // Handle file upload
            string fileName = null;
            if (ImageUpload.HasFile)
            {
                fileName = Path.GetFileName(ImageUpload.FileName);
                string filePath = Server.MapPath("~/img/") + fileName;
                ImageUpload.SaveAs(filePath);
            }

            try
            {
                using (var context = new Model1())
                {
                    var newProduct = new sanpham
                    {
                        ten = productName,
                        mota = description,
                        gia = price,
                        soluong = quantity,
                        phanloai_id = categoryId,
                        anh = fileName
                    };

                    context.sanphams.Add(newProduct);
                    context.SaveChanges();

                    Response.Redirect("WFQLSanpham.aspx?success=true");
                }
            }
            catch (Exception)
            {
                // Log the exception (optional)
                AlertMessage.Text = "Đã có lỗi xảy ra. Vui lòng thử lại.";
                AlertMessage.CssClass = "alert alert-danger";
                AlertMessage.Visible = true;
            }
        }
    }

}