<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


 <form id="register-form">
    <div class="questionForm">
        
    </div>

    <div class="login-form">
        <h1>Register</h1>
        <h3>Enter your usename and password to create your account</h3>
        <div class="login-form-inputfield">
            <asp:Label ID="lbUsername" runat="server" Text="Username: "></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:Label ID="lbPassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox>
        </div>

        <asp:Button ID="btnAddUser" runat="server" Text="Register" />
       
        <h3>Already have an Account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink></h3>
    </div>
     <asp:AccessDataSource ID="addUser" runat="server" 
        DataFile="~/App_Data/user1.mdb" 
        DeleteCommand="DELETE FROM [User] WHERE [User_ID] = ?" 
        InsertCommand="INSERT INTO [User] ([User_Name], [User_Passwd], [User_Prog]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [User]" 
        
        UpdateCommand="UPDATE [User] SET [User_Name] = ?, [User_Passwd] = ?, [User_Prog] = ? WHERE [User_ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="User_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
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
    
    </form>

    <asp:Label ID="lbQuestionText" runat="server" Text=""></asp:Label>

   
</asp:Content>

