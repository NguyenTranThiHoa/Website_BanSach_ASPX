using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class ThemDanhmuc : System.Web.UI.Page
    {
        private Model1 _context = new Model1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AlertMessage.Visible = false;
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string categoryName = phanloai_name.Text.Trim();

            if (!string.IsNullOrEmpty(categoryName))
            {
                // Kiểm tra xem danh mục đã tồn tại chưa
                var existingCategory = _context.phanloais.FirstOrDefault(p => p.phanloai_name == categoryName);
                if (existingCategory != null)
                {
                    AlertMessage.Text = "Danh mục đã tồn tại!";
                    AlertMessage.CssClass = "alert alert-warning";
                    AlertMessage.Visible = true;
                    return;
                }

                var newCategory = new phanloai
                {
                    phanloai_name = categoryName
                };

                _context.phanloais.Add(newCategory);

                try
                {
                    _context.SaveChanges();
                    AlertMessage.Text = "Danh mục đã được tạo thành công!";
                    AlertMessage.CssClass = "alert alert-success";
                    AlertMessage.Visible = true;
                    phanloai_name.Text = string.Empty; // Xóa giá trị trong TextBox
                }
                catch (Exception ex)
                {
                    // Log lỗi nếu cần thiết
                    AlertMessage.Text = "Đã xảy ra sự cố! " + ex.Message;
                    AlertMessage.CssClass = "alert alert-danger";
                    AlertMessage.Visible = true;
                }
            }
            else
            {
                AlertMessage.Text = "Vui lòng nhập tên danh mục!";
                AlertMessage.CssClass = "alert alert-danger";
                AlertMessage.Visible = true;
            }

        }
        
    }
}