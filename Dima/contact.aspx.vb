Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Net.Mail
Imports System.IO

Partial Class Contact

    'Public Class contact?
    Inherits System.Web.UI.Page

    'Protected Sub contact_submitted_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles contact_submitted.Click

    Protected Sub contact_submitted_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim myMessage As New MailMessage
        Dim Smtpserver As New SmtpClient

        Dim user_name As String = Request.Form("user_name")
        Dim user_email As String = Request.Form("user_email")

        'Dim user_subject As String = Request.Form("user_subject") 'should work but no Subject in this form

        Dim user_message As String = Request.Form("user_message")

        myMessage.From = New MailAddress(user_email) 'User's email
        myMessage.To.Add(New MailAddress("info@dimadayoub.net")) 'Webmaster

        Dim CC As MailAddress = New MailAddress("stevehigham@outlook.com")
        myMessage.CC.Add(New MailAddress("stevehigham@outlook.com"))

        'myMessage.Subject = user_subject 'works but no Subect in this form

        myMessage.Body = user_message
        myMessage.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure
        myMessage.IsBodyHtml = True
        myMessage.Priority = MailPriority.Normal

        Smtpserver.DeliveryMethod = SmtpDeliveryMethod.Network
        Smtpserver.Host = ("mail.server")
        Smtpserver.Port = 25
        Smtpserver.EnableSsl = False

        Dim basicAuthenticationInfo As New System.Net.NetworkCredential("info@dimadayoub.net", "Roma1992$")
        Smtpserver.Credentials = basicAuthenticationInfo
        Smtpserver.Send(myMessage)

        myMessage.Dispose()
        myMessage = Nothing
        Smtpserver = Nothing

        Dim target = String.Format("~/thankyou.aspx?user_name={0}", user_name)

        Response.Redirect(String.Format("~/thankyou.aspx?user_name={0}", user_name), True)

    End Sub


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


    Protected Sub Page_Load(ByVal sender As Object, e As EventArgs) Handles Me.Load

        Dim robots As String

        robots = Request.Form("robots")

        If robots <> "" Then

            Response.Write("No spambots here!")
        Else
            'Process the form...
        End If

        LblDate.Text = ReturnDate()

        user_name.Focus()

    End Sub

End Class


