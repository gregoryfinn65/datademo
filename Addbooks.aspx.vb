
Partial Class Addbooks
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Authors.mdf;Integrated Security=True")
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        AuthorIDTextBox.Text = Convert.ToString(DropDownList1.SelectedItem.Value)
    End Sub
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        tbSummary.Text = ""
        tbTitle.Text = ""
        tbYear.Text = ""
    End Sub
    Protected Sub AddBookButton_Click(sender As Object, e As EventArgs) Handles AddBookButton.Click
        cn.Open()
        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Books (BookTitle, BookSummary, AuthorID, PublishedYear) VALUES ('" & tbTitle.Text & "','" & tbSummary.Text & "','" & AuthorIDTextBox.Text & "','" & tbYear.Text & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        lblMessage.Text = tbTitle.Text & " " & "has been added!"
    End Sub
End Class
