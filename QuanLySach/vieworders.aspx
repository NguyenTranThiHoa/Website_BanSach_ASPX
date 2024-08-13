<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vieworders.aspx.cs" Inherits="QuanLySach.vieworders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/index.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Bán hàng sách</title>
</head>
<body style="background-color:white;">
    <form id="form1" runat="server">
        <header>
            <div class="row">
                <div class="head">
                    <div class="logo">
                        <img src="IMAGE/THIHOA.png" alt="Logo" width="110" height="100">
                        <h2 style="color: black; font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">THIHOA</h2>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3">
                    <div class="row m-5">
                        <div class="col-12">
                            <div class="item-camket">
                                <img src="IMAGE/anh2.png" width="80" height="50">
                                <div class="content">
                                    <strong>Miễn phí vận chuyển</strong>
                                    <span>Đơn hàng từ 500k</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="item-camket">
                                <img src="IMAGE/anh3.png" width="80" height="50">
                                <div class="content">
                                    <strong>Hỗ trợ 24/7</strong>
                                    <span>Hotline: 0912817117</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="item-camket">
                                <img src="IMAGE/anh4.png" width="80" height="50">
                                <div class="content">
                                    <strong>Giờ làm việc</strong>
                                    <span>8h00 - 17h00. Thứ 2 - Thứ 7</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <nav class="navbar">
            <div class="nav-links">
                <a href="Index.aspx">Trang chủ</a>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Sản phẩm
                    <i class="fas fa-chevron-down"></i>
                </button>
                <div class="dropdown-content" id="dropdownContent" runat="server">
                <!-- Dynamic content will be loaded here -->
                </div>
            </div>
            <a href="VeChungToi.aspx">Về chúng tôi</a>
            <a href="LienHe.aspx">Liên hệ</a>
            <a href="listorders.aspx">Đơn hàng</a>

            <div class="d-flex">
                <input class="form-control me-2" type="text" name="tukhoa" placeholder="Tìm kiếm" aria-label="Search">
                <button class="btn btn-outline-success" type="submit" name="search">Tìm kiếm</button>
                <div class="others">
                    <div class="dropdown">
                        <a href="DangNhap.aspx" class="fa-solid fa-user"></a>
                        <div class="dropdown-content" style="margin-top: 40px;">
                            <a href="DangNhap.aspx">Đăng nhập</a>
                            <a href="DangKy.aspx">Đăng kí</a>
                        </div>
                    </div>
                    <a class="fa fa-shopping-bag" href="GioHang.aspx"></a>
                </div>
            </div>
        </nav>

        <section>
            <div class="slideshow-container">
                <img src="IMAGE/anhnen1.jpeg" style="width:100%">
            </div>
            <br>
        </section>

        <hr style="margin-left: 250px; margin-right: 250px; margin-top:20px;">
<style>
    .container2 {
        padding: 20px;
    }

    .card {
        border: 0;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .card-body {
        padding: 40px;
    }

    .row2 {
        margin-bottom: 20px;
        display: flex; /* Sử dụng Flexbox để các .row2 nằm ngang nhau */
    }

    .col1-md-3 {
        font-weight: bold;
        flex: 0 0 70%; /* Đặt kích thước cố định cho .col1-md-3, có thể điều chỉnh theo nhu cầu */
    }

    .col1-md-9 {
        flex: 0 0 70%; /* Đặt kích thước cố định cho .col1-md-9, có thể điều chỉnh theo nhu cầu */
    }

    .col1-md-6{
        flex: auto;
        width: 100%;
    }
    
    .table {
    width: 100%;
    margin-top: 20px;
    margin-right: 370px;
    border-collapse: collapse; /* Add this line to collapse the borders and prevent spacing between cells */
}

.table th, .table td {
    padding: 12px;
    text-align: center;
    border: 1px solid #ddd; /* Add this line to create a border around cells */
}

.table th {
    background-color: #343a40;
    color: #fff;
}

    .tongtien {
        margin-top: 20px;
    }

    .tongtien h5 {
        font-weight: bold;
        font-size: 18px;
    }

    .Xu_ly { color: #FF0000; }
    .Da_xac_nhan { color: #FFFF00; }
    .Dang_chuyen_hang { color: #008000; }
    .Da_giao_hang { color: #0000FF; }
    .Da_huy { color: #808080; }

    @media (max-width: 875px) {
        .col1-md-3, .col1-md-9 {
            flex: 0 0 100%; /* Đặt kích thước cho màn hình nhỏ hơn */
            margin-bottom: 10px;
        }
        .col1-md-6 {
            margin-bottom: 10px;
        }
        .ben_trai{
        width: 100%;
        padding: 0; /* Remove padding on small screens */
        }
    }

    .ben_trai {
    width: 50%;
    float: left;
    box-sizing: border-box;
    margin-bottom: 50px;
    margin-left: 160px;
}
/*--------------Form button thihoa--------------*/
.thihoa {
    text-align: center;
  }
  .thihoa input[type="button"] {
    margin-top: 20px;
    background-color: #4CAF50;
    color: #110E72;
    padding: 10px 20px;
    width: 230px;
    border: none;
    border-radius: 20px;
    cursor: pointer;
    font-size: 20px;
  }
  .thihoa input[type="button"]:hover {
    background-color:#CBA511;
  }

</style>
<div class="container2">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row2">
                <div class="col1-lg-12">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4" style="font-size: 28px">Chi tiết đơn hàng</h1>
                        </div>
                        <div class="row2">
                            <div class="col1-md-6">
                                    <div class="row2">
                                        <div class="col1-md-3">Khách hàng:</div>
                                        <div class="col1-md-9">
                                            <asp:Label ID="lblCustomerName" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row2">
                                        <div class="col1-md-3">Địa chỉ:</div>
                                        <div class="col1-md-9">
                                            <asp:Label ID="lblAddress" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row2">
                                        <div class="col1-md-3">Số điện thoại:</div>
                                        <div class="col1-md-9">
                                            <asp:Label ID="lblPhone" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row2">
                                        <div class="col1-md-3">Email:</div>
                                        <div class="col1-md-9">
                                            <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row2">
                                        <div class="col1-md-3">Trạng thái đơn hàng:</div>
                                        <div class="col1-md-9">
                                            <asp:Label ID="lblStatus" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row2">
                                        <div class="col1-md-3" style="color: #D3C734;">
                                            <asp:Label ID="lblPaymentStatus" runat="server"></asp:Label>
                                        </div>
                                    </div>
                            </div>
                            <div class="ben_trai">
                                <div class="col-md-6">
                                    <table class="table">
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Ảnh</th>
                                            <th>Đơn Giá</th>
                                            <th>Số lượng</th>
                                            <th>Thành tiền</th>
                                        </tr>
                                        <asp:Repeater ID="rptOrderItems" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Container.ItemIndex + 1 %></td>
                                                    <td><%# Eval("ProductName") %></td>
                                                    <td>
                                                        <img src="IMAGE/<%# Eval("ProductImage") %>" style="width: 80px; height: 80px;" alt="Img">
                                                    </td>
                                                    <td><%# string.Format("{0:N0}", Eval("Price")) %> VND</td>
                                                    <td><%# Eval("Quantity") %></td>
                                                    <td><%# string.Format("{0:N0}", Eval("TotalAmount")) %> VND</td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </table>
                                    <div class="tongtien">
                                        <h5>
                                            Tổng tiền:
                                            <asp:Label ID="lblTotal" runat="server"></asp:Label>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!----------------------------------------------------------------------------------------------------------> 
          <style>
            /*---------------video----------------*/
            .video{
              margin-left: 150px;
            }
            /*--------------footer--------------*/
            footer .video {
              position: absolute;
              top: 20px;
              left: 0;
              padding: 10px;
              bottom: 0;
            }
        </style>
        <footer>
            <div class="footer-content">
                <div class="tieude">
                    <ul>
                        <li style="text-align: center; color: white; font-size: 20px;">HỆ THỐNG SHOWROOM</li>
                        <li style="text-align: left; color: #D3C734;">HÀ NỘI</li>
                        <li style="color: white;"><i class="fas fa-map-marker-alt"></i>Địa Chỉ: 466 đường Bưởi, P. Vĩnh Phúc, Q. Ba Đình, Hà Nội</li>
                        <li style="color: white;"><i class="fas fa-phone"></i>Điện thoại: 08 38 38 44 66</li>
                        <li style="text-align: left; color: #D3C734;">HỒ CHÍ MINH</li>
                        <li style="color: white;"><i class="fas fa-map-marker-alt"></i>Địa Chỉ: 147 Đồng Đen, Phường 11, Quận Tân Bình</li>
                        <li style="color: white;"><i class="fas fa-phone"></i>Điện thoại: 0938.632.169</li>
                        <li style="text-align: left; color: #D3C734;">CÔNG TY ĐẠI DIỆN TẠI ẤN ĐỘ</li>
                        <li style="color: white;"><i class="fas fa-map-marker-alt"></i>Địa Chỉ: 8/304, Manisha Nagar, Mumbai Pune Road, Kalwa (W) Thane-400 605 Maharashtra, INDIA.</li>
                        <li style="text-align: left; color: #D3C734;">Người đại diện: RADHAKRISNAN MB</li>
                        <li style="text-align: left; color: white;"><i class="far fa-envelope"></i>Email: <a href="mailto:abc@gmail.com" style="color: #FFE3B3">info@royalhelmet.com.vn</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-top">
                <div class="tieude1">
                    <ul>
                        <li>
                            <a href="https://www.facebook.com/royalhelmetvietnam/" class="fa-brands fa-facebook" style="width: 30px; height: 30px;"></a>
                            <a href="#" class="fa-brands fa-twitter" style="width: 30px; height: 30px;"></a>
                            <a href="https://www.tiktok.com/@royalhelmetofficial" class="fa-brands fa-tiktok" style="width: 30px; height: 30px;"></a>
                        </li>
                    </ul>
                </div>
                <div class="hinhanh">
                    <img src="IMAGE/THIHOA.png" alt="Logo" width="110" height="100">
                </div>
                <div class="video">
                <iframe width="500" height="289" 
                    src="https://www.youtube.com/embed/RbdbJGN6xhw?start=11&mute=1&loop=1&playlist=RbdbJGN6xhw" 
                    frameborder="0" 
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                    allowfullscreen>
                </iframe>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
