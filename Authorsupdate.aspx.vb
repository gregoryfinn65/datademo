
Partial Class Authorsupdate
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Authors.mdf;Integrated Security=True")
    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        tbFirstName.Text = ""
        tbLastname.Text = ""
        tbPhone.Text = ""
        tbState.Text = ""
        tbCity.Text = ""
        tbZip.Text = ""
    End Sub
    Protected Sub InsertAuthor_Click(sender As Object, e As EventArgs) Handles InsertAuthor.Click
        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Authors (FirstName, LastName, City, State, Zip, Phone) VALUES ('" & tbFirstName.Text & "','" & tbLastname.Text & "','" & tbCity.Text & "','" & tbState.Text & "','" & tbZip.Text & "','" & tbPhone.Text & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        lblMessage.Text = tbFirstName.Text & " " & tbLastname.Text & " " & "has been added!"
    End Sub
End Class
