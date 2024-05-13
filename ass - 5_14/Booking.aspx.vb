
Partial Class Booking
    Inherits System.Web.UI.Page

    Protected Sub btnAddUser_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddUser.Click
        Label4.Text = "The following details have been saved to our database"
        Label4.Text = "The question is: " & txtFname.Text()
        Label4.Text &= "The answer is: " & txtSname.Text & "<br />"
        Label4.Text &= "The answer is: " & txtEmail.Text & "<br />"
        Label4.Text &= "The answer is: " & txtSymp.Text & "<br />"
        Label4.Text &= "The answer is: " & dropDownTime.SelectedValue & "<br />"
        Label4.Text &= "The answer is: " & AppCalendar.SelectedDate & "<br />"

        dbAppointment.InsertParameters("patient_fname").DefaultValue = txtFname.Text
        dbAppointment.InsertParameters("patient_sname").DefaultValue = txtSname.Text
        dbAppointment.InsertParameters("patient_email").DefaultValue = txtEmail.Text
        dbAppointment.InsertParameters("appt_date").DefaultValue = AppCalendar.SelectedDate
        dbAppointment.InsertParameters("appt_time").DefaultValue = dropDownTime.SelectedValue
        dbAppointment.InsertParameters("appt_symptoms").DefaultValue = txtSymp.Text
        dbAppointment.InsertParameters("appt_type").DefaultValue = txtFname.Text

        For Each item As ListItem In checkBoxType.Items
            If item.Selected Then
                Label4.Text &= "The answer is: " & item.Value & "<br />"
                dbAppointment.InsertParameters("appt_type").DefaultValue = item.Value
            End If
        Next

    End Sub
End Class
