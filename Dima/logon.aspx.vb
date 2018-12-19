
Imports System
Imports System.Web
Imports System.Web.SessionState 'stores data specific to one user 
Imports System.Web.SessionState.HttpSessionState
Imports System.Web.HttpContext
Imports System.Linq
Imports System.Web.UI
Imports System.Data
Imports System.Text
Imports System.Data.OleDb
Imports System.Data.OleDb.OleDbConnection
Imports System.Data.OleDb.OleDbCommand


Partial Class logon

    'Public Class logon?

    Inherits System.Web.UI.Page

    Function ReturnDate() As String

        Dim theDate As String = ""

        Dim NumericDayofMonth As Integer = Date.Now.Day
        Dim OrdinalSuffix As String = ""

        Select Case NumericDayofMonth
            Case 1, 21, 31
                OrdinalSuffix = "<sup>st</sup>"
            Case 2, 22
                OrdinalSuffix = "<sup>nd</sup>"
            Case 3, 23
                OrdinalSuffix = "<sup>rd</sup>"
            Case Else
                OrdinalSuffix = "<sup>th</sup>"
        End Select

        Dim NumericMonthofYear As Integer = Date.Now.Month
        Dim MonthofYear As String = ""

        Select Case NumericMonthofYear
            Case 1
                MonthofYear = "January"
            Case 2
                MonthofYear = "February"
            Case 3
                MonthofYear = "March"
            Case 4
                MonthofYear = "April"
            Case 5
                MonthofYear = "May"
            Case 6
                MonthofYear = "June"
            Case 7
                MonthofYear = "July"
            Case 8
                MonthofYear = "August"
            Case 9
                MonthofYear = "September"
            Case 10
                MonthofYear = "October"
            Case 11
                MonthofYear = "November"
            Case 12
                MonthofYear = "December"
        End Select

        theDate &= DateTime.Now.Day.ToString() '1, 2, 3, 4 etc
        theDate &= OrdinalSuffix & " " 'st, nd, rd, th
        theDate &= MonthofYear & " " 'Jan, Feb etc
        theDate &= DateTime.Now.Year.ToString() '2013, 2014 etc

        Return theDate

    End Function


    Protected Sub LogonBtn_Click(sender As Object, e As EventArgs) Handles LogonBtn.Click

        'Authenticate user

        Dim Authenticated As Boolean = Authenticate(strEmailTextBox.Text, passwordTextBox.Text)

        'If authenticated, send user to userpage.aspx

        If Authenticated Then

            Dim target = String.Format("~/userpage.aspx?strEmailValue={0}", strEmailTextBox.Text)

            Session("strEmailValue") = strEmailTextBox.Text

            Response.Redirect(target, False)

        Else

            LabelError.Text = "Email/Password invalid. Login denied"

            LabelError.Visible = True

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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Session("strEmailValue") Is Nothing Then
        'Response.Redirect("~/index.aspx")
        'Else

        Dim strEmailValue As String = Session("strEmailValue")

        'End If

        LblDate.Text = ReturnDate()

        strEmailTextBox.Focus()

    End Sub

End Class