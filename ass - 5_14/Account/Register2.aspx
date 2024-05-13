<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Register2.aspx.vb" Inherits="Account_Register2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


 <form id="form1" runat="server">
    <div class="questionForm">
        <div>
            <asp:Label ID="lbUsername" runat="server" Text="Username: "></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lbPassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox>
        </div>

        <asp:Button ID="btnAddUser" runat="server" Text="REgister" />
       
    </div>
     <asp:AccessDataSource ID="addUser" runat="server" 
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
    
    </form>

    <asp:Label ID="lbQuestionText" runat="server" Text=""></asp:Label>

   

</asp:Content>

