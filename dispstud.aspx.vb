Imports System.Data.SqlClient
Partial Class dispstud
    Inherits System.Web.UI.Page
    Dim obj As New us
    Dim ds As New Data.DataSet
    Dim adp As SqlDataAdapter
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("stud_reg.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txt.Text = ""
        txn.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If txn.Text = "" Then
            ds.Clear()
            adp = New SqlDataAdapter("select * from stud where Enrollment_id='" + txt.Text + "'", obj.connection)
            adp.Fill(ds, "stud")
            If (ds.Tables("stud").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("stud")
                gv1.DataBind()
                gv1.Visible = True
                msg.Text = ""
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
                gv1.Visible = False
            End If
        ElseIf txt.Text = "" Then
            ds.Clear()
            adp = New SqlDataAdapter("select * from stud where Name='" + txn.Text + "'", obj.connection)
            adp.Fill(ds, "stud")
            If (ds.Tables("stud").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("stud")
                gv1.DataBind()
                gv1.Visible = True
                msg.Text = ""
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
                gv1.Visible = False
            End If
        Else
            ds.Clear()
            adp = New SqlDataAdapter("select * from stud where Enrollment_id='" + txt.Text + "'", obj.connection)
            adp.Fill(ds, "stud")
            If (ds.Tables("stud").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("stud")
                gv1.DataBind()
                gv1.Visible = True
                msg.Text = ""
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
                gv1.Visible = False
            End If
        End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        If txn.Text = "" Then
            ds.Clear()
            adp = New SqlDataAdapter("select * from studc_reg where Enrollment_id='" + txt.Text + "'", obj.connection)
            adp.Fill(ds, "studc_reg")
            If (ds.Tables("studc_reg").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("studc_reg")
                gv1.DataBind()
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
            End If
        ElseIf txt.Text = "" Then
            ds.Clear()
            adp = New SqlDataAdapter("select * from studc_reg where Name='" + txn.Text + "'", obj.connection)
            adp.Fill(ds, "studc_reg")
            If (ds.Tables("studc_reg").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("studc_reg")
                gv1.DataBind()
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
            End If
        Else
            ds.Clear()
            adp = New SqlDataAdapter("select * from studc_reg where Enrollment_id='" + txt.Text + "'", obj.connection)
            adp.Fill(ds, "studc_reg")
            If (ds.Tables("studc_reg").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("studc_reg")
                gv1.DataBind()
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
            End If
        End If
    End Sub
End Class
