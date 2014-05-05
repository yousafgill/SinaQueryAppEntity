<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userProfilePage.aspx.cs" Inherits="SinaQueryAppEntity.pages.userProfilePage" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="FormContainer">
        <fieldset>
            <br />
            <br />
            <legend>Course Profile  </legend>
            <div class="col-sm-6">
                <%--login name--%>
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblName1Id" runat="server" Text="Login Name"></asp:Label>

                    <div class="col-sm-9">
                        <asp:TextBox CssClass="form-control" ID="txtNameId" runat="server" ValidationGroup="valid_Check"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="#ff3300" Text="The name field is required!" runat="server" ControlToValidate="txtNameId" ValidationGroup="valid_Check" />
                    </div>
                </div>
                <%--Email ID--%>
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblEmailId" runat="server" Text="Email Id"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox CssClass="form-control" ID="txtEmailId" runat="server" ValidationGroup="valid_Check"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator_coustom" ControlToValidate="txtEmailId" ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is required" ValidationGroup="valid_Check"></asp:RequiredFieldValidator>
                    </div>

                </div>
                <%--password--%>
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblpwdId" runat="server" Text="Password"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtpwdId" CssClass="form-control" runat="server" ToolTip="Passoword Minimum Six Letters" TextMode="Password" ValidationGroup="valid_Check"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator_coustom" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Must Enter A Valid Password" ControlToValidate="txtpwdId" ValidationGroup="valid_Check"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <%--confirm password--%>
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblCPwdId" runat="server" Text="Confirm Password"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtCPwdId" CssClass="form-control" runat="server" TextMode="Password" ValidationGroup="valid_Check"></asp:TextBox>
                        <asp:CompareValidator CssClass="validator_coustom" ID="CompareValidator2" runat="server" ErrorMessage="Passwords Donot Match" ControlToCompare="txtCPwdId" ControlToValidate="txtPwdId" ValidationGroup="valid_Check"></asp:CompareValidator>
                    </div>
                </div>
                <%--Display name--%>
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 control-label" ID="lblDisplayNameId" runat="server" Text="Display Name"></asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox CssClass="form-control" ID="txtDisplayNameId" runat="server" ValidationGroup="valid_Check"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator_coustom" ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Rquired" ControlToValidate="txtDisplayNameId" ValidationGroup="valid_Check"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-4 ">
                        <asp:Button CssClass="btn btn-primary btn-block" ID="saveUser" runat="server" Text="Save" OnClick="save_Click" ForeColor="Black" ValidationGroup="valid_Check" />

                    </div>
                    <div class="col-sm-3 col-sm-offset-2 ">
                        <asp:Button CssClass="btn btn-primary btn-block" ID="search" runat="server" Text="Search" OnClick="search_Click" ForeColor="Black" />

                    </div>

                </div>
            </div>
            <div class="col-sm-6">
                <h2>User Profiles</h2>
                <asp:GridView CssClass="table-bordered" Style="margin: auto;" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" HorizontalAlign="Center" Width="538px" EnableModelValidation="False">
                    <Columns>
                        <asp:BoundField DataField="User_Login" HeaderText="Login" />
                        <asp:BoundField DataField="User_Password" HeaderText="Password" />
                        <asp:BoundField DataField="User_Email" HeaderText="Email" />
                        <asp:BoundField DataField="User_DisplayName" HeaderText="Display Name" />
                        <asp:BoundField DataField="Use_Disabled" HeaderText="Disabled" />
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                </asp:GridView>
                <asp:EntityDataSource ID="mySina" runat="server" ConnectionString="name=sinaDbEnt" DefaultContainerName="sinaDbEnt" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="UserProfiles" EntityTypeFilter="UserProfile">
                </asp:EntityDataSource>
            </div>
        </fieldset>

    </div>


</asp:Content>
