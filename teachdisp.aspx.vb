Imports System.Data.SqlClient
Partial Class teachdisp
    Inherits System.Web.UI.Page
    Dim obj As New us
    Dim ds As New Data.DataSet
    Dim adp As SqlDataAdapter
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("teach_reg.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        txt.Text = ""
        txn.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ds.Clear()
        adp = New SqlDataAdapter("select * from teacher_reg", obj.connection)
        adp.Fill(ds, "teach_reg")
        gv1.DataSource = ds.Tables("teach_reg")
        gv1.DataBind()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If txn.Text = "" Then
            ds.Clear()
            adp = New SqlDataAdapter("select * from teacher_reg where teacher_id='" + txt.Text + "'", obj.connection)
            adp.Fill(ds, "teacher_reg")
            If (ds.Tables("teacher_reg").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("teacher_reg")
                gv1.DataBind()
                msg.Visible = False
                gv1.Visible = True
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
                gv1.Visible = False
                msg.Visible = True
            End If
        ElseIf txt.Text = "" Then
            ds.Clear()
            adp = New SqlDataAdapter("select * from teacher_reg where Name='" + txn.Text + "'", obj.connection)
            adp.Fill(ds, "teacher_reg")
            If (ds.Tables("teacher_reg").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("teacher_reg")
                gv1.DataBind()
                gv1.Visible = True
                msg.Visible = False
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
                gv1.Visible = False
                msg.Visible = True
            End If
        Else
            ds.Clear()
            adp = New SqlDataAdapter("select * from teacher_reg where teacher_id='" + txt.Text + "'", obj.connection)
            adp.Fill(ds, "teacher_reg")
            If (ds.Tables("teacher_reg").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("teacher_reg")
                gv1.DataBind()
                gv1.Visible = True
            Else
                msg.Text = "Error : 404 - Data not found."
                msg.ForeColor = Drawing.Color.Red
                gv1.Visible = False
            End If
        End If
    End Sub

    Protected Sub gv1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gv1.PageIndexChanging
        gv1.PageIndex = e.NewPageIndex
        gv1.DataBind()
    End Sub
End Class
