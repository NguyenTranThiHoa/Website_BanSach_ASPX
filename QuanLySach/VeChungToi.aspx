<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VeChungToi.aspx.cs" Inherits="QuanLySach.VeChungToi" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/index.css" type="text/css">
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
<!------------------------------------------------------------------------------> 
    <section>
        <div class="tuine" style="text-align: center; margin-top: 32px; font-size: 30px;">
            <h3>VỀ CHÚNG TÔI</h3>
            <hr style="margin-left: 250px; margin-right: 250px; margin-top:20px;">
        <p style="margin-top: 20px;
        font-size: 20px;
        text-align:justify;
        margin-left: 100px;
        margin-right: 100px;
        color: #535047;">
            <i style="margin-top: 30px;
            font-size: 20px;
            text-align:justify;
            margin-left: 130px;
            margin-right: 130px;
            color: #535047;"> Khi bước vào cửa hàng sách ấy, những cánh cửa mở ra không chỉ là lối vào mà còn là cánh cửa tới vô vàn thế giới khác nhau. Mỗi cuốn sách trên kệ là một cánh cửa tới một thế giới mới, một cuộc phiêu lưu mới, hoặc một trải nghiệm mới. Từ những trang sách cổ điển đến những tác phẩm hiện đại, cửa hàng này mang đến một sự đa dạng phong phú của văn hóa và tri thức.
                            Không chỉ là nơi để mua sách, cửa hàng còn là điểm hẹn của những người yêu sách, nơi họ có thể chia sẻ, trao đổi ý kiến và khám phá những tác phẩm mới. Với không gian thoáng đãng, ánh sáng tự nhiên và không khí ấm áp, cửa hàng sách không chỉ là nơi để mua sách mà còn là điểm đến tinh thần cho những người đam mê văn hóa và tri thức.</p>
        </div>
        <div class="anh1" style="margin-top: 20px; margin-left: 450px;">
            <div class="anhdep1">
                <img src="IMAGE/anh5.jpg">
            </div>
        </div>
        <div class="ke_chuyen" style="margin-top: 30px;">
            <p style="margin-left: 100px; margin-right: 100px;"><i style="color: #535047;">"Nhìn vào những kệ sách đầy ắp, bạn có thể cảm nhận được sự đa dạng của văn hóa và kiến thức. Từ sách về lịch sử, khoa học, đến văn học và nghệ thuật, không gì là không có trong kho sách của cửa hàng này. Nhân viên tận tình và am hiểu sẵn sàng tư vấn bạn về những cuốn sách phù hợp với sở thích và nhu cầu của bạn.<br>
                <br>Ngoài ra, không chỉ là nơi để mua sách mới, cửa hàng còn cung cấp các cuốn sách đã qua sử dụng với giá cả phải chăng. Điều này không chỉ giúp tiết kiệm chi phí mà còn tạo ra một cơ hội tốt để bạn tìm thấy những bản in hiếm hoặc những cuốn sách cổ điển mà bạn đã từng mơ ước. Từ những đứa trẻ mới biết đến thế giới của chữ đến những người lớn tuổi muốn thêm kiến thức, cửa hàng sách là một điểm đến không thể bỏ qua cho mọi người đam mê văn hóa và tri thức."</i></p>
        </div>
        <div class="anh" style="margin-top: 20px; margin-left: 300px;">
            <div class="anhdep">
                <img src="IMAGE/anh6.jpg" style="margin-left: 350px;">
            </div>
        </div>
        <p style="margin-top: 30px; margin-left: 130px; font-size: 20px; color: #535047; margin-right: 130px;">Cũng với tiêu chí “Niềm tin khách hàng là sự thành công của chúng tôi”, cửa hàng THIHOA là cửa hàng tiên phong trong việc giữ gìn văn hóa đọc sách. Để đọc sách không chỉ là thu thập kiến thức mà còn tôn vinh nét đẹp, mang đến niềm tự hào, sự thoải mái, tiện lợi cao nhất cho người sử dụng.
            <br><br>
            Chính Niềm Tin và Sự ủng hộ của Khách hàng đã giúp cửa hàng xây dựng được:
            <br><br>
            -Hệ thống hơn <b>2.000</b> đại lý, nhà phân phối mũ bảo hiểm trên khắp cả nước.
            <br><br>
            -Sản phẩm của công ty cũng xuất hiện tại hàng chục hệ thống siêu thị, chuỗi bán lẻ hàng đầu Việt Nam như <b>BigC, Aeon, Điện Máy Xanh, FM Style...</b>
            <br><br>
            -Với chất lượng và mẫu mã vượt trội, đạt tiêu chuẩn quốc tế, <b>Royal, ROC, ROYCE, KIO</b> còn vươn mình chinh phục khách hàng toàn cầu với hàng loạt đơn hàng xuất khẩu lớn từ các quốc gia như <b>Mỹ, EU, Nhật Bản, Australia, Ấn Độ...</b>
            <br><br>
            -Tận dụng sức mạnh của cuộc cách mạng 4.0, công ty cũng đầu tư mạnh mẽ vào các kênh bán hàng và chăm sóc khách hàng online thông qua các trang web: <b>Royalhelmet.com.vn, Rochelmet.vn, Nonxedap.com, Roycehelmet.com, Kiohelmet.com... </b> cùng hệ thống fanpage, các kênh thương mại điện tử khác.
            <br><br>
            -Đặc biệt, <b>MAFA VN</b> đã trở thành nhà sản xuất mũ bảo hiểm đầu tiên của Việt Nam xây dựng gian hàng chính thức trên <b>Amazon.com</b>-trang thương mại điện tử hàng đầu thế giới. Bước đi chiến lược này không những đã khẳng định được chất lượng mang tầm quốc tế của mũ bảo hiểm <b>Royal, ROC, ROYCE, KIO...</b> mà còn góp thêm một thương hiệu Việt vươn ra chinh phục toàn cầu, nâng cao niềm tự hào Việt Nam.
            <br><br>
            Những hệ thống bán hàng và chăm sóc khách hàng ấy không những giúp khách hàng ở bất cứ nơi đâu có thể dễ dàng tiếp cận và sở hữu các sản phẩm của công ty mà còn là kênh lắng nghe, thấu hiểu và phản hồi những ý kiến của khách hàng một cách nhanh chóng, hiệu quả nhằm đẩy mạnh hơn nữa việc tạo ra những sản phẩm tốt nhất, hoàn hảo nhất, chinh phục niềm tin của quý khách hàng! 
            <br><br>
            <b>“Niềm Tin Khách Hàng Là Niềm Tự Hào của Chúng Tôi”</b>
            </p>
    </section>

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
