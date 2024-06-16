Imports System.Data.SqlClient
Partial Class usreg
    Inherits System.Web.UI.Page
    Dim obj As New us

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        pw.Text = ""
        us.Text = ""
        cpw.Text = ""
        txtname.Text = ""
        txtmail.Text = ""
        ans.Text = ""
        que.SelectedItem.Text = "Select Question"
        txtmno.Text = ""
        occu.SelectedItem.Text = "Select"
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try

        
            obj.exequery("insert into usreg values('" + txtname.Text + "','" + txtmail.Text + "','" + txtmno.Text + "','" + occu.SelectedItem.ToString + "','" + us.Text + "','" + cpw.Text + "','" + que.SelectedItem.ToString + "','" + ans.Text + "')")
            msg.Text = "User Created Successfully."
            msg.ForeColor = Drawing.Color.Green
            pw.Text = ""
            us.Text = ""
            cpw.Text = ""
            txtname.Text = ""
            txtmail.Text = ""
            ans.Text = ""
            que.SelectedItem.Text = "Select Question"
            txtmno.Text = ""
            occu.SelectedItem.Text = "Select"

            Response.Redirect("login.aspx")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
