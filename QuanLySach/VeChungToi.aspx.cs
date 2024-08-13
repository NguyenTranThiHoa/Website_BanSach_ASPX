using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach
{
    public partial class VeChungToi : System.Web.UI.Page
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
    }
}