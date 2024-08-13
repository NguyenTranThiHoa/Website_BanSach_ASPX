<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="QuanLySach.LienHe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/index.css" type="text/css">
    <link rel="stylesheet" href="CSS/LienHe.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Bán hàng sách</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                <a href="index.aspx">Trang chủ</a>
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
            <a href="#">Liên hệ</a>
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

<!------------------------------------------------------------------------> 
    <!--Liên hệ với cửa hàng-->
    <section>
        <div class="tuine">
            <h3 style="font-size: 32px; margin-left: 650px; margin-top: 30px;">THÔNG TIN LIÊN HỆ</h3>
            <hr style="margin-left: 250px; margin-right: 250px; margin-top:20px;">
        </div>
        <div class="container-fluid">
            <div class="row">
              <div class="col-4 bg-success">
                <img src="IMAGE/anh7.jpg" style="height: 530px;">
              </div>
              <div class="col-4 bg-success1">
                <div class="contact-wrapper text-center" style="background-color: #D3C734; margin-bottom: 20px; padding: 20px 10px;">
                  <div class="contact-title">
                    <h4 style="font-size: 30px;text-align: center;">
                      Địa chỉ trụ sở:
                    </h4>
                  </div>
                  <div class="contact-info" style="text-align: center;">
                    Lô C7/II, Đường Số 2E, KCN Vĩnh Lộc, H. Bình Chánh, TP. HCM											
                  </div>
                </div>
                <div class="contact-wrapper text-center" style="background-color: #D3C734; margin-bottom: 20px;padding: 20px 10px;">
                  <div class="contact-title">
                    <h4 style="font-size: 30px; text-align: center;">
                      Số điện thoại:
                    </h4>
                  </div>
                  <div class="contact-info"style="text-align: center;">
                    <a href="tel:1900 63 60 66">1900 63 60 66</a>
                  </div>
                </div>
                <div class="contact-wrapper text-center" style="background-color: #D3C734; margin-bottom: 10px;padding: 20px 10px;">
                  <div class="contact-title">
                    <h4 style="font-size: 30px; text-align: center;">
                      Email:
                    </h4>
                  </div>
                  <div class="contact-info"  style="text-align: center;">
                    <a href="mailto:info@royalhelmet.com.vn">info@royalhelmet.com.vn</a>
                  </div>
                </div>
              </div>
              <div class="col-4 bg-warning">
                <img src="IMAGE/anh8.jpg" style="height: 530px;">
              </div>
            </div>
          </div>
    </section>
<!------------------------------------------------------------------------> 
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
