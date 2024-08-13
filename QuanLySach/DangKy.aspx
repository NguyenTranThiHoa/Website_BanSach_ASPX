<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="QuanLySach.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/dangnhap.css" type="text/css">
    <link rel="stylesheet" href="CSS/dangki.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            <a href="#">Về chúng tôi</a>
            <a href="#">Liên hệ</a>
            <a href="#">Đơn hàng</a>

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
                    <a class="fa fa-shopping-bag" href="#"></a>
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

<!-------------------------------Đăng ký-----------------------------------------> 
<article>
    <div class="dangnhap1">
        <h3>Register</h3>
        <asp:Label ID="lblError" runat="server" Visible="false" CssClass="error"></asp:Label>
        <label for="username">Email</label>
        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter email or phone number"></asp:TextBox>
        <label for="lastName">Username</label>
        <asp:TextBox ID="txtLastName" runat="server" placeholder="Name" oninput="validateInput(event)"></asp:TextBox>
        <label for="password">Password</label>
        <div style="position: relative;">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" oninput="validateInput(event)"></asp:TextBox>
            <span class="show-password" onclick="togglePasswordVisibility()">
                <i class="fas fa-eye"></i>
            </span>
        </div>
        <asp:Button ID="btnRegister" runat="server" CssClass="submit-button" Text="Register" OnClick="btnRegister_Click" />
        <h4>Already have an account? <a href="dangnhap.aspx" style="color: blue">Log in here</a></h4>
    </div>
</article>


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
        <footer style="margin-top: 550px">
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
