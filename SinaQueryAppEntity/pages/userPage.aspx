<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userPage.aspx.cs" Inherits="SinaQueryAppEntity.pages.userPage" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="FormContainer">

        <br />
        <br />
        <div class="row">
            <div class="row">
                <h4>
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblNameId" runat="server"></asp:Label>
                    <br />
                </h4>

            </div>
            <div class="col-sm-6">

                <ul class="nav nav-tabs nav-stacked" style="background-color: AppWorkspace; box-shadow: inset;">

                    <li><a href="mainForm.aspx">
                        <h4>Main Form</h4>
                    </a>

                    </li>
                    <li><a href="programProfilePage.aspx">
                        <h4>Program Profiles</h4>
                    </a></li>


                    <li><a href="CourseProfilePage.aspx">
                        <h4>Course Profiles</h4>
                    </a></li>






                    <li><a href="qualificationPage.aspx">
                        <h4>Qualification</h4>
                    </a></li>

                    <li><a href="queryCategoryPage.aspx">
                        <h4>Category</h4>
                    </a></li>


                    <li><a href="QueryTypePage.aspx">
                        <h4>Query Type</h4>
                    </a></li>

                </ul>

            </div>
        </div>
</asp:Content>
