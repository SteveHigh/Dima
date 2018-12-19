Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Data
Imports System.Data.OleDb
Imports System.Data.OleDb.OleDbConnection
Imports System.IO
Imports System.Web.Services.Description


Partial Class userpage
    Inherits System.Web.UI.Page

    Private _message As String

    Private Property Message As String
        Get
            Return _message
        End Get
        Set(value As String)
            _message = value
        End Set
    End Property

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


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            Dim strEmailValue As String = "strEmailValue".ToString()


            If Not String.IsNullOrEmpty(Request.QueryString("strEmailValue")) Then
                strEmailValue = Request.QueryString("strEmailValue")
            End If

            Label2.Text = "Hello " & strEmailValue & ", welcome!"

        End If

        If Not String.IsNullOrEmpty(Request.QueryString("strEmailValue")) Then

            'Message = Request.QueryString("strEmailValue")

            Label1.Text = "Please upload your file"

            btnLogout.Visible = True

            'Else

            'Label2.Text = "Please login to visit this page"

        End If

        LblDate.Text = ReturnDate()

    End Sub



    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click

        If MyFileUpload.HasFile Then

            Try

                MyFileUpload.SaveAs("C:/Uploads/" & MyFileUpload.FileName)

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

                If ex.Message.ToString().ToLower().Contains("could not find part of the path") Then

                    Label4.Text = "Error: Path unavailable"

                    Label2.Visible = False

                End If

            End Try
        Else
            Label3.Text = "You have not specified a file"

            Label2.Visible = False

        End If

    End Sub


    Sub SaveFile(ByVal file As HttpPostedFile)

        Dim savePath As String = String.Empty
        Dim fileName As String = String.Empty
        Dim pathToCheck As String = savePath & fileName
        Dim tempfileName As String = String.Empty

        ' Create the path and file name to check for duplicates.

        ' Create a temporary file name to use for checking duplicates.
        'Dim tempfileName As String

        ' Check to see if a file already exists with the
        ' same name as the file to upload.        
        If (System.IO.File.Exists(pathToCheck)) Then
            Dim counter As Integer = 2
            While (System.IO.File.Exists(pathToCheck))
                ' If a file with this name already exists,
                ' prefix the filename with a number.
                tempfileName = counter.ToString() + fileName
                pathToCheck = savePath + tempfileName
                counter = counter + 1
            End While

            fileName = tempfileName

            ' Notify the user that the file name was changed.
            Label5.Text = "A file with the same name already exists." + "<br />" +
            "Your file was saved as " + fileName

            'UploadStatusLabel.Text = "A file with the same name already exists." + "<br />" + _
            '"Your file was saved as " + fileName

        Else

            ' Notify the user that the file was saved successfully.

            'Label5.Text = "Your file was uploaded successfully."

            Label5.Text = "File name: " &
            MyFileUpload.PostedFile.FileName & "<br>" &
            "File Size: " &
            MyFileUpload.PostedFile.ContentLength & "<br>" &
            "Content type: " &
            MyFileUpload.PostedFile.ContentType & "<br>" &
            "Location Saved: C:/Uploads/" & MyFileUpload.FileName

            'UploadStatusLabel.Text = "Your file was uploaded successfully."

        End If

        ' Append the name of the file to upload to the path.
        savePath += fileName

        ' Call the SaveAs method to save the uploaded
        ' file to the specified directory.
        MyFileUpload.SaveAs(savePath)

    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As System.EventArgs) Handles btnLogout.Click

        Session.RemoveAll()
        Session.Clear()
        Session.Abandon()
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetNoStore()
        'Response.Redirect("index.aspx")

        Response.Redirect("logon.aspx")

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




'Public Class userpage?
