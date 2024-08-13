<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="ThemSanpham.aspx.cs" Inherits="QuanLySach.WebAdmin.ThemSanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px4" style="margin-top: 70px;margin-left: 110px">
         <div class="card mt-4 shadow-sm">
     <div class="card-header">
         <h4 class="mb-0"> Thêm Sản phẩm
             <asp:HyperLink ID="BackLink" runat="server" NavigateUrl="WFQLSanpham.aspx" CssClass="btn btn-primary float-end">Trở về</asp:HyperLink>
         </h4>
     </div>
     <div class="card-body">
         <asp:Label ID="AlertMessage" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>
         <!-- Loại bỏ thẻ form chạy trên server -->
         <div class="row">
             <div class="col-md-12 mb-3">
                 <label>Chọn danh mục </label>
                 <asp:DropDownList ID="CategoryDropDown" runat="server" CssClass="form-select">
                     <asp:ListItem Text="Chọn Danh mục" Value=""></asp:ListItem>
                 </asp:DropDownList>
             </div>
             <div class="col-md-12 mb-3">
                 <label for=""> Tên Sản phẩm*</label>
                 <asp:TextBox ID="ProductNameTextBox" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
             </div>
             <div class="col-md-4 mb-3">
                 <label for=""> Hình ảnh*</label>
                 <asp:FileUpload ID="ImageUpload" runat="server" CssClass="form-control" />
             </div>
             <div class="col-md-12 mb-3">
                 <label for=""> Mô tả*</label>
                 <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
             </div>
             <div class="col-md-4 mb-3">
                 <label for=""> giá tiền*</label>
                 <asp:TextBox ID="PriceTextBox" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
             </div>
             <div class="col-md-4 mb-3">
                 <label for="">số lượng*</label>
                 <asp:TextBox ID="QuantityTextBox" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
             </div>
             <div class="col-md-6 mb-3 text-end">
                 <br />
                 <asp:Button ID="CapnhatButton" runat="server" Text="Cập nhật" CssClass="btn btn-primary" OnClick="CapnhatButton_Click" />
             </div>
         </div>
     </div>
        </div>
    </div>
</asp:Content>

