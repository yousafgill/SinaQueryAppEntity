<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SinaQueryAppEntity._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
               <%--<h1><%: Title %>.</h1>--%>
                <h1>Sina Institute of Networks And Aesthetics</h1>
            </hgroup>
            <p>
                SINA Institute of Networks and Aesthetics, the state of the art training center established focusing IT, Telecom, Management and Personal Development.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <div class="jumbotron">
  <h1>Site Under Construction</h1>
  <p>...</p>
  <p><a href="pages/LoginPage.aspx" class="btn btn-primary btn-lg" role="button">Login</a></p>
</div>
</asp:Content>
