<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="SuaNguoiDung.aspx.cs" Inherits="QuanLySach.WebAdmin.SuaNguoiDung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px-4" style="margin-left: 100px; margin-top: 50px;">
        <h4 class="mt-4">Users</h4>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item active">Dashboard</li>
    <li class="breadcrumb-item ">Users</li>
</ol>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4> Sửa Người dùng</h4>
            </div>
            <div class="card-body">
                <asp:HiddenField ID="UserIdHiddenField" runat="server" />
                <div class="col-md-6 mb-3">
                    <label for="FirstName">Tên</label>
                    <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-6 mb-3">
                    <label for="LastName">Họ</label>
                    <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-6 mb-3">
                    <label for="Email">Email</label>
                    <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-6 mb-3">
                    <label for="Password">Mật khẩu</label>
                    <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="form-control" TextMode="Password" />
                </div>

                <div class="col-md-6 mb-3">
                    <label for="Role">Vai trò</label>
                    <asp:DropDownList ID="RoleDropDownList" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--Chọn Vai trò--" Value="" />
                        <asp:ListItem Text="Admin" Value="1" />
                        <asp:ListItem Text="User" Value="0" />
                    </asp:DropDownList>
                </div>

                <div class="col-md-12 mb-3">
                    <label for="Status">Trạng thái</label>
                    <asp:CheckBox ID="StatusCheckBox" runat="server" CssClass="form-check-input" />
                </div>

                <div class="col-md-12 mb-3">
                    <asp:Button ID="SuaNDButton" runat="server" CssClass="btn btn-primary" Text="Cập nhật" OnClick="SuaNDButton_Click" />
                </div>
            </div>
        </div>
    </div>
        </div>
    </div>
</asp:Content>
