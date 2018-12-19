
Public Class Index
    Inherits Page

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

        'Dim NumericDayofWeek As Integer = Date.Now.DayOfWeek
        'Dim DayofWeek As String = ""

        'Select Case NumericDayofWeek
        '    Case 1
        '        DayofWeek = "Monday"
        '    Case 2
        '        DayofWeek = "Tuesday"
        '    Case 3
        '        DayofWeek = "Wednesday"
        '    Case 4
        '        DayofWeek = "Thursday"
        '    Case 5
        '        DayofWeek = "Friday"
        '    Case 6
        '        DayofWeek = "Saturday"
        '    Case 7
        '        DayofWeek = "Sunday"
        'End Select

        'theDate &= DayofWeek & " " 'Monday, Tuesday, Wednesday etc

        theDate &= DateTime.Now.Day.ToString() '1, 2, 3, 4 etc
        theDate &= OrdinalSuffix & " " 'st, nd, rd, th
        theDate &= MonthofYear & " " 'Jan, Feb etc
        theDate &= DateTime.Now.Year.ToString() '2013, 2014 etc

        Return theDate
    End Function


    Protected Sub Page_Load(ByVal sender As Object, e As EventArgs) Handles Me.Load

        LblDate.Text = ReturnDate()

    End Sub

End Class










