using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class ThemNguoidung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Khởi tạo danh sách vai trò
                LoadRoleList();
            }
        }



        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Tạo đối tượng user từ dữ liệu nhập vào
            dangnhap newUser = new dangnhap()
            {
                // Lấy dữ liệu từ các control trên giao diện
                user_name = FirstNameTextBox.Text.Trim(),
                // Tương tự với các trường dữ liệu khác
                password = PasswordTextBox.Text.Trim(),
                name = LastNameTextBox.Text.Trim(),
                description = RoleDropDownList.SelectedValue,
                // Đặt trạng thái tùy thuộc vào trạng thái của checkbox
                // Trạng thái Checked của checkbox là true nếu được chọn
                // Nếu không chọn, trạng thái là false

            };

            // Thêm user mới vào cơ sở dữ liệu
            using (Model1 db = new Model1())
            {
                db.dangnhaps.Add(newUser);
                db.SaveChanges();
            }

            // Redirect về trang danh sách người dùng sau khi thêm thành công
            Response.Redirect("WFQLNguoidung.aspx");
        }

        // Hàm này dùng để khởi tạo danh sách vai trò cho dropdownlist
        protected void LoadRoleList()
        {
            // Lấy danh sách vai trò từ cơ sở dữ liệu hoặc khai báo cứng nếu không có dữ liệu từ cơ sở dữ liệu
            string[] roles = new string[] { "Admin", "User" };

            // Duyệt qua mảng và thêm các vai trò vào dropdownlist
            foreach (string role in roles)
            {
                RoleDropDownList.Items.Add(new System.Web.UI.WebControls.ListItem(role, role));
            }
        }
    }
}