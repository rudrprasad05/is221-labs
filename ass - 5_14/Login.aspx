<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="login-form">
        <h1>Login</h1>
        <h3>Enter your usename and password to access your account</h3>
        <div class="login-form-inputfield">
            <asp:Label ID="loginUserNameLabel" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="loginUsernameText" runat="server"></asp:TextBox>
            <asp:Label ID="loginPasswordLabel" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="loginPasswordText" TextMode="Password" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Login" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <h3>Dont have an Account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink></h3>
        <asp:AccessDataSource ID="userDb" runat="server" 
            DataFile="~/App_Data/user1.mdb" 
            DeleteCommand="DELETE FROM [User] WHERE [User_ID] = ?" 
            InsertCommand="INSERT INTO [User] ([User_ID], [User_Name], [User_Passwd], [User_Prog]) VALUES (?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [User]" 
            UpdateCommand="UPDATE [User] SET [User_Name] = ?, [User_Passwd] = ?, [User_Prog] = ? WHERE [User_ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="User_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="User_ID" Type="Int32" />
                <asp:Parameter Name="User_Name" Type="String" />
                <asp:Parameter Name="User_Passwd" Type="String" />
                <asp:Parameter Name="User_Prog" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="User_Name" Type="String" />
                <asp:Parameter Name="User_Passwd" Type="String" />
                <asp:Parameter Name="User_Prog" Type="String" />
                <asp:Parameter Name="User_ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
   
    </div>
</asp:Content>

