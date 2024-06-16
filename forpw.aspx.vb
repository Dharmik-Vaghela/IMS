Imports System.Data.SqlClient
Partial Class forpw
    Inherits System.Web.UI.Page
    Dim ds As New Data.DataSet
    Dim adp As SqlDataAdapter
    Dim obj As New us
    Dim mycmd As SqlCommand
    Dim res As Object
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        ds.Clear()
        adp = New SqlDataAdapter("select * from usreg where Username='" + fus.Text + "' and Security_Question='" + fque.SelectedItem.ToString + "' and Answer = '" + fans.Text + "'", obj.connection)
        adp.Fill(ds, "loginform")
        If (ds.Tables("loginform").Rows.Count > 0) Then
            mycmd = New SqlCommand("select Password from usreg where Username='" + fus.Text + "'", obj.connection)
            res = mycmd.ExecuteScalar()
            lbl.Text = "Your Password : " + res.ToString
            lbl.ForeColor = Drawing.Color.Green
        Else
            lbl.Text = "Your Information is incorrect."
            lbl.ForeColor = Drawing.Color.Red
        End If
    End Sub
End Class
