<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="ThemDanhmuc.aspx.cs" Inherits="QuanLySach.WebAdmin.ThemDanhmuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid px4" style="margin-top: 70px;margin-left: 100px">
        <div class="card mt-4 shadow-sm">
            <div class="card-header">
                <h4 class="mb-0">Thêm Danh mục 
                    <asp:HyperLink ID="BackLink" runat="server" NavigateUrl="WFQLDanhmuc.aspx" CssClass="btn btn-primary float-end">Back</asp:HyperLink>
                </h4>
            </div>
            <div class="card-body">
                <asp:Label ID="AlertMessage" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>
                <div class="row">
                    <div class="col-ml-12 mb-3">
                        <label for="phanloai_name">Tên Danh mục*</label>
                        <asp:TextBox ID="phanloai_name" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
                    </div>
                    <div class="col-md-6 mb-3 text-end">
                     
                          <asp:Button ID="SaveButton" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="SaveButton_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

