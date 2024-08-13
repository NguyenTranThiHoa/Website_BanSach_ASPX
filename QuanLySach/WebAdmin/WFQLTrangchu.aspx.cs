using QuanLySach.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySach.WebAdmin
{
    public partial class WFQLTrangchu : System.Web.UI.Page
    {
        private Model1 _context = new Model1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                TotalCategories.Text = GetCount("phanloai").ToString();
                TotalProducts.Text = GetCount("sanpham").ToString();
                TotalUsers.Text = GetCount("dangnhap").ToString();
                TotalOrders.Text = GetCount("orders").ToString();
                TodayOrders.Text = GetTodayOrders().ToString();
            }

        }
        private int GetCount(string tableName)
        {
            switch (tableName)
            {
                case "phanloai":
                    return _context.phanloais.Count();
                case "sanpham":
                    return _context.sanphams.Count();
                case "dangnhap":
                    return _context.dangnhaps.Count();
                case "orders":
                    return _context.orders.Count();
                default:
                    return 0;
            }
        }

        private int GetTodayOrders()
        {
            DateTime today = DateTime.Today;
            return _context.orders.Count(o => o.created_at.HasValue && DbFunctions.TruncateTime(o.created_at) == today.Date);

        }
    }
}