using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class WFQLSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }

        private void BindProducts()
        {
            try
            {
                using (var context = new Model1())
                {
                    var products = context.sanphams.ToList();
                    if (products.Count > 0)
                    {
                        ProductsRepeater.DataSource = products;
                        ProductsRepeater.DataBind();
                        NoRecordsLabel.Visible = false;
                    }
                    else
                    {
                        NoRecordsLabel.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception (optional)
                // Display an error message to the user
                AlertMessage.Text = "Đã có lỗi xảy ra khi tải dữ liệu sản phẩm.";
                AlertMessage.CssClass = "alert alert-danger";
                AlertMessage.Visible = true;
            }
        }

        protected void ProductsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeleteProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                try
                {
                    using (var context = new Model1())
                    {
                        var product = context.sanphams.Find(productId);
                        if (product != null)
                        {
                            context.sanphams.Remove(product);
                            context.SaveChanges();
                            AlertMessage.Text = "Sản phẩm đã được xóa thành công!";
                            AlertMessage.CssClass = "alert alert-success";
                            AlertMessage.Visible = true;
                            BindProducts();
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception (optional)
                    AlertMessage.Text = "Đã có lỗi xảy ra khi xóa sản phẩm.";
                    AlertMessage.CssClass = "alert alert-danger";
                    AlertMessage.Visible = true;
                }
            }
        }
    }
}