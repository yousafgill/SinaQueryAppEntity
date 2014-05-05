<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sysAd_001.aspx.cs" Inherits="SinaQueryAppEntity.admin.sysAd_001" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <div class="FormContainer">

        <br />
        <br />

        <div class="col-sm-6">
            <%--Email ID--%>
            <div class="form-group">
                <asp:Label CssClass="col-sm-3 control-label" ID="lbllogId" runat="server" Text="Email Id"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox CssClass="form-control" ID="txtlogId" runat="server"></asp:TextBox>
                </div>

            </div>
            <%--password--%>
            <div class="form-group">
                <asp:Label CssClass="col-sm-3 control-label" ID="lblLpwdId" runat="server" Text="Password"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox ID="txtLpwdId" CssClass="form-control" runat="server" ToolTip="Passoword Minimum Six Letters" TextMode="Password"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-5 col-sm-offset-7 ">
                    <asp:Button CssClass="btn btn-primary btn-block" ID="AdminLogin" runat="server" Text="Log In" ForeColor="Black" OnClick="AdminLogin_Click" />

                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <asp:TextBox ID="errormsg" Visible="false" BorderStyle="None"  CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

        </div>


    </div>
</asp:Content>
