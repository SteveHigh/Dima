Imports System
Imports System.Net
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Net.Mail
Imports System.Net.Mime
Imports System.IO
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration
Imports System.Text


Partial Class forgot
    Inherits System.Web.UI.Page

    Protected Sub BtnForgot_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Const ConnectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|students.mdb;"

        Dim uniqueCode As String = Guid.NewGuid().ToString("N")
        Dim recordExists As Boolean = False

        'jmcilhinney say the following - up to and including Dim link As String = builder.Uri.ToString() - is fine

        Using conn As New OleDbConnection(ConnectionString)
            Using cmd As OleDbCommand = conn.CreateCommand()
                cmd.CommandText = "UPDATE university SET uniqueCode = @uniqueCode WHERE strEmail = @strEmail"
                cmd.Parameters.AddWithValue("@uniqueCode", uniqueCode)
                cmd.Parameters.AddWithValue("@strEmail", strEmailTextBox.Text.Trim())

                conn.Open()
                Dim recordsAffected As Integer = cmd.ExecuteNonQuery()
                If recordsAffected <> 0 Then recordExists = True
            End Using
        End Using

        If recordExists Then

            Dim builder As New UriBuilder(Request.Url)
            builder.Path = VirtualPathUtility.ToAbsolute("~/newPassword.aspx")
            builder.Query = "uniqueCode=" & HttpUtility.UrlEncode(uniqueCode)

            Dim link As String = builder.Uri.ToString()
            Dim myMessage As New MailMessage
            Dim Smtpserver As New SmtpClient
            Dim strEmailValue As String = Request.Form("strEmailTextBox") 'strEmailValue = user email; strEmailTextBox = ID of email field

            'Create the mail message

            myMessage.From = New MailAddress("info@dimadayoub.net") 'Webmaster's email
            myMessage.To.Add(New MailAddress(strEmailValue)) 'user's email
            myMessage.Subject = ("Password Reset Request")
            'myMessage.Body = "Please click on the following link to reset your password: <br/>Link<br/><br/>Thank you<br/>"

            myMessage.Body = ""
            myMessage.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure
            myMessage.IsBodyHtml = True
            myMessage.Priority = MailPriority.Normal

            Dim PlainMessage As AlternateView = AlternateView.CreateAlternateViewFromString("Hello. To reset your password, please click on this link", Nothing, "text/plain")
            Dim mimeType As ContentType = New ContentType("text/html")
            Dim HtmlMessage As AlternateView = AlternateView.CreateAlternateViewFromString("<img src=cid:dimaHeader><br /><br /><br ><body style='font-family:candara; color:#ffffff; background-color:#858585; margin-left:2em;'>Hello " & strEmailValue & "<br /><br /> To reset your password, please click on this <a href='http://www.dimadayoub.net/newPassword.aspx?token=" & uniqueCode & "' style='color: #0000FF; text-decoration: none;'>link</a><br /><br />Thank you<br /><br />Regards<br /></br />Dima<br /><br ><a href='http://www.dimadayoub.net' target='_blank' style='color: #0000FF; text-decoration: none;'>http://www.dimadayoub.net</a></body>", Nothing, "text/html")

            Dim Logo As New LinkedResource(Server.MapPath("~/Images/dimaHeader.jpg"), "image/jpeg") 'embedded image
            Logo.ContentId = "dimaHeader"
            HtmlMessage.LinkedResources.Add(Logo)

            myMessage.AlternateViews.Add(PlainMessage)
            myMessage.AlternateViews.Add(HtmlMessage)

            Smtpserver.DeliveryMethod = SmtpDeliveryMethod.Network
            'Smtpserver.Host = ("96.44.149.195")
            Smtpserver.Host = ("mail.server")
            Smtpserver.Port = 25
            Smtpserver.EnableSsl = False
            Dim basicAuthenticationInfo As New System.Net.NetworkCredential("info@dimadayoub.net", "Roma1992$")
            Smtpserver.Credentials = basicAuthenticationInfo
            Smtpserver.Send(myMessage)

            myMessage.Dispose()
            myMessage = Nothing
            Smtpserver = Nothing

            'strEmailValue = Request.QueryString("strEmailValue") 'si_the_geek

            If strEmailValue IsNot Nothing Then

                'Text here to tell user in the Web page that the pwd reset link has been sent

                TextBox1.Text = String.Format("Your password reset link has been sent to {0}", strEmailValue)

                TextBox1.Visible = True

            Else

                TextBox1.Visible = False

                LabelNotRegistered.Text = "This email is not registered."

                LabelNotRegistered.Visible = True

            End If

        End If

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

        LblDate.Text = ReturnDate()

        strEmailTextBox.Focus()

    End Sub

    Private Sub Label()
        Throw New NotImplementedException
    End Sub

    Private Function Text() As Object
        Throw New NotImplementedException
    End Function

    Private Function html() As Object
        Throw New NotImplementedException
    End Function

End Class