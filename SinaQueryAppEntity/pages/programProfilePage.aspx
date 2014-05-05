<%@ Page MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="programProfilePage.aspx.cs" Inherits="SinaQueryAppEntity.pages.programProfilePage" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="FormContainer">
        <fieldset>
            <br />
            <br />
            <legend>Program Profile  </legend>
            <div class="col-sm-6">
                <div class="form-group">

                    <asp:Label CssClass="col-sm-3 control-label" ID="lblPgTitleId" runat="server" Text="Program Title"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox CssClass="form-control" ID="txtPgTitleId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblPgDesId" runat="server" Text="Program Title"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox CssClass="form-control" ID="txtPgDesId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 col-sm-offset-3 ">
                        <asp:Button CssClass="btn btn-primary btn-block" ID="save" runat="server" Text="Save" OnClick="save_Click" />
                        <asp:TextBox ForeColor="Red" Visible="false" Enabled="false" Border="none" CssClass="form-control" ID="status" runat="server"></asp:TextBox>

                    </div>

                    
                </div>

            </div>
           
        </fieldset>
    </div>

</asp:Content>
