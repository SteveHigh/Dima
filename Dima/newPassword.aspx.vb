Imports System.Data.OleDb
Imports System.Configuration
Imports System.Text
Imports System.Data
Imports System.Data.OleDb.OleDbConnection

'Public Class newPassword?

Partial Class newPassword
    Inherits System.Web.UI.Page

    Dim cmd As New OleDbCommand()
    Dim dr As OleDbDataReader
    Dim conn As OleDbConnection


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Using conn As OleDbConnection = New OleDbConnection(System.Configuration.ConfigurationManager.ConnectionStrings("students").ConnectionString)

            conn.Open()

            If Not Page.IsPostBack Then

                'Check if the email address and generated unique code is same then the panel for resetting password will be visible otherwise not

                Dim cmd As New OleDbCommand("SELECT strEmail,uniqueCode FROM university" & vbTab & "WHERE strEmail=@strEmail AND (uniqueCode=@uniqueCode)", conn)

                cmd = New OleDbCommand("SELECT strEmail,uniqueCode FROM university WHERE strEmail=@strEmail AND (uniqueCode=@uniqueCode)", conn)

                cmd.Parameters.AddWithValue("@uniqueCode", String.Format("{0}", Request.QueryString("uniqueCode")))
                cmd.Parameters.AddWithValue("@strEmail", String.Format("{0}", Request.QueryString("strEmail")))


                dr = cmd.ExecuteReader()

                dr.Close()
                dr.Dispose()

            End If

        End Using

        lblExpired.Text = "Reset password link has expired"

        lblExpired.Visible = True

        Return

        LblDate.Text = ReturnDate()

        newPass1.Focus()

    End Sub


    Protected Sub resetBtn_Click(sender As Object, e As System.EventArgs)


        Using conn As OleDbConnection = New OleDbConnection(System.Configuration.ConfigurationManager.ConnectionStrings("students").ConnectionString)

            Dim Sql As String = "UPDATE university SET uniqueCode='',[password]=@password WHERE uniqueCode=@uniqueCode AND (strEmail=@strEmail)"

            Dim cmd As New OleDbCommand(Sql, conn)

            conn.Open()

            'jmcilhinney: while you are using names for your parameters, both Jet and ACE ignore the names and just use the 
            'positions. That means that you MUST add the parameters to the command in the same order as they appear in the SQL code
            'I have now corrected this.

            cmd.Parameters.AddWithValue("@uniqueCode", Convert.ToString(Request.QueryString("uniqueCode")))
            cmd.Parameters.AddWithValue("@password", txtNewPwd.Text.Trim())
            cmd.Parameters.AddWithValue("@strEmail", Convert.ToString(Request.QueryString("strEmail")))

            cmd.ExecuteNonQuery()

            lblStatus.Text = "Password updated"

            lblStatus.Visible = True

            txtNewPwd.Text = String.Empty

            txtConfirmPwd.Text = String.Empty

        End Using

    End Sub

    Private Function Sql() As Object
        Throw New NotImplementedException
    End Function

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

End Class



