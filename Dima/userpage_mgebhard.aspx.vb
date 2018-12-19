'Imports Microsoft.AspNet.Membership.OpenAuth
Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.IO

Public Class userpage_mgebhard

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim Message As String

        'This request is a GET

        If Not Page.IsPostBack Then

            'Display the value if we have a strEmailValue querystring 

            If Not String.IsNullOrEmpty(Request.QueryString("strEmailValue")) Then

                Message = Request.QueryString("strEmailValue")

            End If

        End If

    End Sub

    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click

        If MyFileUpload.HasFile Then

            Try

                MyFileUpload.SaveAs("C:/Uploads1/" & MyFileUpload.FileName)

                Label5.Visible = False

                Label5.Text = "File name: " &
                MyFileUpload.PostedFile.FileName & "<br>" &
                "File Size: " &
                MyFileUpload.PostedFile.ContentLength & "<br>" &
                "Content type: " &
                MyFileUpload.PostedFile.ContentType & "<br>" &
                "Location Saved: C:/Uploads/" & MyFileUpload.FileName

                Label5.Visible = True

            Catch ex As Exception

                If ex.Message.ToString().ToLower().Contains("could not find a part of the path") Then

                    Label4.Text = "Error: Path unavailable"

                    Label2.Visible = False

                End If

            End Try
        Else
            Label3.Text = "You have not specified a file"

            Label2.Visible = False

        End If

        'Rename file code should go here

    End Sub


    Protected Sub btnLogout_Click(sender As Object, e As System.EventArgs) Handles btnLogout.Click

        Session.Abandon()
        Session.Clear()
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetNoStore()
        Response.Redirect("index.aspx")

        'Response.Redirect("/Account/logon.aspx")

    End Sub


    'From MSDN

    'Protected Sub Page_Load(ByVal sender As Object,
    '    ByVal e As System.EventArgs) Handles Me.Load
    '    If IsPostBack Then
    '        Dim path As String = Server.MapPath("C:/Uploads/")
    '        Dim fileOK As Boolean = False
    '        If FileUpload1.HasFile Then
    '            Dim fileExtension As String
    '            fileExtension = System.IO.Path. _
    '                GetExtension(FileUpload1.FileName).ToLower()
    '            Dim allowedExtensions As String() = _
    '                {".jpg", ".jpeg", ".png", ".gif"}
    '            For i As Integer = 0 To allowedExtensions.Length - 1
    '                If fileExtension = allowedExtensions(i) Then
    '                    fileOK = True
    '                End If
    '            Next
    '            If fileOK Then
    '                Try
    '                    FileUpload1.PostedFile.SaveAs(path & _
    '                         FileUpload1.FileName)
    '                    Label1.Text = "File uploaded!"
    '                Catch ex As Exception
    '                    Label1.Text = "File could not be uploaded."
    '                End Try
    '            Else
    '                Label1.Text = "Cannot accept files of this type."
    '            End If
    '        End If
    '    End If
    'End Sub

End Class


