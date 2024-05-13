
Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label1.Text = "The following details have been saved to our database"
        Label1.Text = "The question is: " & loginUsernameText.Text
        Label1.Text &= "The answer is: " & loginPasswordText.Text & "<br />"


    End Sub
End Class
