<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseProfilePage.aspx.cs" Inherits="SinaQueryAppEntity.pages.CourseProfilePage" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="FormContainer">
        <fieldset>
            <br />
            <br />
            <legend>Course Profile  </legend>
            <div class="col-sm-7">
                  <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblPG" runat="server" Text="Program Title"></asp:Label>
                    <div class="col-sm-9">
                        <asp:DropDownList CssClass="form-control" ID="ddPgId" runat="server" DataSourceID="ddsinaPG" DataTextField="ProgramTitle" DataValueField="Id"></asp:DropDownList>
                        <asp:EntityDataSource ID="ddsinaPG" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableFlattening="False" EntitySetName="ProgramProfiles">
                        </asp:EntityDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblTitleId" runat="server" Text="Course Title"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox CssClass="form-control" ID="txtTitleId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblDesId" runat="server" Text="Course Description"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox CssClass="form-control" ID="txtDesId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-5 col-sm-offset-7 ">
                        <asp:Button CssClass="btn btn-primary btn-block" ID="save" runat="server" Text="Save" OnClick="save_Click" />
                            <asp:TextBox ForeColor="Red" Visible="false" Enabled="false" Border="none" CssClass="form-control" ID="status" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>


</asp:Content>
