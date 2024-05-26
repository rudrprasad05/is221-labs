<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login In</title>
    <link href="Styles/Site.css?t=<%= DateTime.Now.Ticks %>" rel="Stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <a class="backhome" href="Home.aspx">&#8676 &nbsp Back Home</a>
        <section class="login-cont">
        
            <aside>
                <img src="images/login_bg.jpg" alt="login image" />
            </aside>
            <main class="login-inputform">
                <h1>Sign In</h1>
                <p>Dont have an account? <a href="Register.aspx">Register now</a></p>

                <section>
                    <section>
                        <asp:Label ID="loginUserNameLabel" runat="server" Text="Username"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*This field is required" ControlToValidate="loginUsernameText" CssClass="danger"></asp:RequiredFieldValidator>
                    </section>            
                    <asp:TextBox ID="loginUsernameText" runat="server"></asp:TextBox> 
                </section>
                
                <section>
                    <section>
                        <asp:Label ID="loginPasswordLabel" runat="server" Text="Password"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*This field is required" ControlToValidate="loginPasswordText" CssClass="danger"></asp:RequiredFieldValidator>
                    </section>
                    
                    <asp:TextBox ID="loginPasswordText" TextMode="Password" runat="server"></asp:TextBox>
                    
                </section>

                <section>
                    <p>Forgot password? <a href="Changepassword.aspx">Click here</a></p>
                    <button class="call-to-action-btn" id="loginButton" type="button">login</button>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </section>
                
            </main>
            
    
        </section>
    

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

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="User_ID" DataSourceID="userDb" CssClass="hidden">
                <Columns>
                    <asp:BoundField DataField="User_ID" HeaderText="User_ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="User_ID" />
                    <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                        SortExpression="User_Name" />
                    <asp:BoundField DataField="User_Passwd" HeaderText="User_Passwd" 
                        SortExpression="User_Passwd" />
                    <asp:BoundField DataField="User_Prog" HeaderText="User_Prog" 
                        SortExpression="User_Prog" />
                </Columns>
            </asp:GridView>
      

      <script type="application/javascript">

        document.getElementById("loginButton").addEventListener("click", login)

        function saveCookieLogin(){
            localStorage.setItem('credentials', true)
            document.location.href = "Home.aspx"
        }

        function loginAdmin(){
            localStorage.setItem('admin', true)
        }
        
        function login() {
            let isLoggedIn = false;
            let messageLabel = document.getElementById('Label1')
            let usernameText = document.getElementById('loginUsernameText').value
            let passwordText = document.getElementById('loginPasswordText').value

            let grid = document.getElementById('GridView1')
            let tbody = grid.children[0]
            let trArray = Array.from(tbody.children)
            trArray.shift()

            if(usernameText.length < 1 || passwordText.length < 1){
                messageLabel.textContent = "Please ensure all fields are filled"
                return;
            }

            for(let i = 0; i < trArray.length; i++){
                for(let j = 0; j < trArray[i].cells.length; j++){
                    let username = trArray[i].cells[1].textContent
                    let password = trArray[i].cells[2].textContent

                    if(username === usernameText && password === passwordText){
                        messageLabel.textContent = "Logged in"
                        isLoggedIn = true;
                        if(username === "admin"){
                            loginAdmin()
                        }
                        saveCookieLogin()
                        return;
                    }
                    
                }
            }

            if(!isLoggedIn){
                messageLabel.textContent = "Incorrect credentials"
            }
        }

    </script>
     </form>
</body>
</html>
