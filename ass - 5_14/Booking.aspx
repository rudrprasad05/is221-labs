<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Booking.aspx.vb" Inherits="Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="booking-cont">
        <h1>Book an Appointment</h1>
        <form>
            <div class="login-form-inputfield">
                <div class="flex">
                    <asp:Label ID="lbFname" runat="server" Text="First Name: "></asp:Label>
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>

                    <asp:Label ID="lbSname" runat="server" Text="Surname: "></asp:Label>
                    <asp:TextBox ID="txtSname" runat="server" ></asp:TextBox>

                     <asp:Label ID="Label1" runat="server" Text="email: "></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                </div>

                <asp:Calendar ID="AppCalendar" runat="server"></asp:Calendar>
               
                <asp:DropDownList ID="dropDownTime" runat="server">
                    <asp:ListItem>9am - 10am</asp:ListItem>
                    <asp:ListItem>11am - 12pm</asp:ListItem>
                    <asp:ListItem>3pm - 4pm</asp:ListItem>
                </asp:DropDownList>

                 <div class="flex">
                    <asp:Label ID="Label2" runat="server" Text="Describe your symptoms: "></asp:Label>
                    <asp:TextBox ID="txtSymp" runat="server"></asp:TextBox>

                </div>

                 <asp:Label ID="Label3" runat="server" Text="Chose appointment type: "></asp:Label>
                <asp:CheckBoxList ID="checkBoxType" runat="server">
                    <asp:ListItem>general</asp:ListItem>
                    <asp:ListItem>cardiovascular</asp:ListItem>
                    <asp:ListItem>eye clinic</asp:ListItem>
                </asp:CheckBoxList>

                
            </div>

            <asp:Button ID="btnAddUser" runat="server" Text="Book" CssClass="call-to-action-btn" />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <asp:AccessDataSource ID="dbAppointment" runat="server" 
                DataFile="~/App_Data/user1.mdb" 
                DeleteCommand="DELETE FROM [Appointment] WHERE [appt_id] = ?" 
                InsertCommand="INSERT INTO [Appointment] ([patient_fname], [patient_sname], [patient_email], [appt_date], [appt_time], [appt_symptoms], [appt_type]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [Appointment]" 
                UpdateCommand="UPDATE [Appointment] SET [patient_fname] = ?, [patient_sname] = ?, [patient_email] = ?, [appt_date] = ?, [appt_time] = ?, [appt_symptoms] = ?, [appt_type] = ? WHERE [appt_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="appt_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="patient_fname" Type="String" />
                <asp:Parameter Name="patient_sname" Type="String" />
                <asp:Parameter Name="patient_email" Type="String" />
                <asp:Parameter Name="appt_date" Type="DateTime" />
                <asp:Parameter Name="appt_time" Type="String" />
                <asp:Parameter Name="appt_symptoms" Type="String" />
                <asp:Parameter Name="appt_type" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="patient_fname" Type="String" />
                <asp:Parameter Name="patient_sname" Type="String" />
                <asp:Parameter Name="patient_email" Type="String" />
                <asp:Parameter Name="appt_date" Type="DateTime" />
                <asp:Parameter Name="appt_time" Type="String" />
                <asp:Parameter Name="appt_symptoms" Type="String" />
                <asp:Parameter Name="appt_type" Type="String" />
                <asp:Parameter Name="appt_id" Type="Int32" />
            </UpdateParameters>
            </asp:AccessDataSource>

        </form>
    </div>

</asp:Content>

