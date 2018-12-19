Imports System.Data.OleDb

Public Class mgebhardLogin


    'Public Class Account_mgebhardLogin

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub LogonBtn_Click(sender As Object, e As EventArgs) Handles LogonBtn.Click

        'Retrive the post values and call the authentication method

        Dim Authenticated As Boolean = Authenticate(strEmailTextBox.Text, passwordTextBox.Text)

        'If we found results then redirect to the userpage.aspx

        If Authenticated Then

            Dim target = String.Format("~/userpage.aspx?strEmail={0}", strEmailTextBox.Text)

            Response.Redirect(target, False)

        Else

            'Message.Text = "Sorry, email or password not found"

            MsgBox("Sorry, email or password not found")


        End If

    End Sub


    Protected Function Authenticate(strEmailValue As String, passwordValue As String) As Boolean

        'strEmailValue is the unknown variable email
        'passwordValue is the unknown variable password
        'strEmailTextBox is the ID of the email textbox field in my aspx file
        'passwordTextBox is the ID of the password textbox field in my aspx file
        'strEmail is the name of the email column in my MS Access database

        Using connection As OleDbConnection = New OleDbConnection(System.Configuration.ConfigurationManager.ConnectionStrings("students").ConnectionString)

            'Prepare command text and OleDbCommand
            Dim cmdText As String = "SELECT COUNT(strEmail) FROM university WHERE strEmail = '" & strEmailValue & "' AND [password] = '" & passwordValue & "'"

            Dim cmd As New OleDbCommand(cmdText, connection)

            'Open and execute the command
            'Returns a count of the records found; zero means no records found while 1 and greater means records found

            connection.Open()

            Dim result As Integer = cmd.ExecuteScalar

            connection.Close()

            Return result > 0

        End Using

    End Function

End Class







