<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="SuaSanPham.aspx.cs" Inherits="QuanLySach.WebAdmin.SuaSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid px4" style="margin-top: 50px; margin-left: 100px">
             <div class="card mt-4 shadow-sm">
       <div class="card-header">
           <h4 class="mb-0"> Sửa Sản phẩm
               <a href="WFQLSanpham.aspx" class="btn btn-primary float-end"> Trở về </a>
           </h4>
       </div>
       <div class="card-body">
           <asp:PlaceHolder ID="alertPlaceholder" runat="server"></asp:PlaceHolder>
           <asp:HiddenField ID="sanpham_id" runat="server" />
           <asp:DropDownList ID="phanloai_id" runat="server" CssClass="from-select">
               <asp:ListItem Value="">Chọn Danh mục</asp:ListItem>
           </asp:DropDownList>
           <div class="row">
               <div class="col-ml-12 mb-3">
                   <asp:Label ID="tenLabel" runat="server" Text="Tên Sản phẩm*"></asp:Label>
                   <asp:TextBox ID="tenTextBox" runat="server" CssClass="form-control" TextMode="SingleLine" Required="true"></asp:TextBox>
               </div>
               <div class="col-ml-4 mb-3">
                   <asp:Label ID="anhLabel" runat="server" Text="Hình ảnh*"></asp:Label>
                   <asp:FileUpload ID="anhFileUpload" runat="server" CssClass="form-control" />
                   <asp:Image ID="anhImage" runat="server" CssClass="image-preview" />
               </div>
               <div class="col-ml-12 mb-3">
                   <asp:Label ID="motaLabel" runat="server" Text="Mô tả*"></asp:Label>
                   <asp:TextBox ID="motaTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
               </div>
               <div class="col-ml-4 mb-3">
                   <asp:Label ID="giaLabel" runat="server" Text="Giá tiền*"></asp:Label>
                 <asp:TextBox ID="giaTextBox" runat="server" CssClass="form-control" TextMode="SingleLine" Required="true" OnTextChanged="validateNumber" AutoPostBack="true"></asp:TextBox>

               </div>
               <div class="col-ml-4 mb-3">
                   <asp:Label ID="soluongLabel" runat="server" Text="Số lượng*"></asp:Label>
                   <asp:TextBox ID="soluongTextBox" runat="server" CssClass="form-control" TextMode="SingleLine" Required="true" OnTextChanged="validateNumber" AutoPostBack="true"></asp:TextBox>
               </div>
              
               <div class="col-md-6 mb-3 text-end">
                   <asp:Button ID="updateProductButton" runat="server" Text="Cập Nhật" CssClass="btn btn-primary" OnClick="updateProductButton_Click" />
               </div>
           </div>
       </div>
            </div>
        </div>
</asp:Content>

