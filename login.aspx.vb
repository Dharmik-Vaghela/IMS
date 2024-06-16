Imports System.Data.SqlClient
Partial Class login
    Inherits System.Web.UI.Page
    Dim ds As New Data.DataSet
    Dim adp As SqlDataAdapter
    Dim obj As New loginform
    Dim dtime As String
    Protected Sub btnl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnl.Click
        ds.Clear()
        adp = New SqlDataAdapter("select * from usreg where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", obj.connectivity)
        adp.Fill(ds, "loginform")
        If (ds.Tables("loginform").Rows.Count > 0) Then
            Session("name") = TextBox1.Text
            chkoccu()
            chkname()
            dtime = DateTime.Now.ToString
            obj.exequery("insert into logus values('" + Session("nme").ToString + "','" + Session("name").ToString + "','" + Session("stat").ToString + "','" + dtime + "')")
            Response.Redirect("~/wp.aspx")
        Else
            lbl.Text = "Username or Password are incorrect"
            lbl.ForeColor = Drawing.Color.Red
        End If
    End Sub
    Public Sub chkoccu()

        Dim connectionString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\25260035\ims\App_Data\usreg.mdf;Integrated Security=True;User Instance=True"
        Dim query As String = "SELECT Occupation FROM usreg WHERE Username=@uname"
        Dim uname As String = TextBox1.Text
        Using connection As New SqlConnection(connectionString)
            connection.Open()
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@uname", uname)
                Using reader As SqlDataReader = command.ExecuteReader()
                    If reader.Read() Then
                        Dim columnValue As String = reader.GetString(0)
                        Session("stat") = columnValue
                    End If
                End Using
            End Using
            connection.Close()
        End Using
    End Sub

    Public Sub chkname()

        Dim connectionString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\25260035\ims\App_Data\usreg.mdf;Integrated Security=True;User Instance=True"
        Dim query As String = "SELECT Name FROM usreg WHERE Username=@uname"
        Dim uname As String = TextBox1.Text
        Using connection As New SqlConnection(connectionString)
            connection.Open()
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@uname", uname)
                Using reader As SqlDataReader = command.ExecuteReader()
                    If reader.Read() Then
                        Dim columnValue As String = reader.GetString(0)
                        Session("nme") = columnValue
                    End If
                End Using
            End Using
            connection.Close()
        End Using
    End Sub
End Class
