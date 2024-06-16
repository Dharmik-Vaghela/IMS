Imports System.Data.SqlClient
Partial Class fees
    Inherits System.Web.UI.Page
    Dim ds As New Data.DataSet
    Dim adp As SqlDataAdapter
    Dim obj As New us
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If txtname.Text = "" Then
            ds.Clear()
            adp = New SqlDataAdapter("select * from stud where Enrollment_id='" + txtid.Text + "'", obj.connection)
            adp.Fill(ds, "stud")
            If (ds.Tables("stud").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("stud")
                gv1.DataBind()
            Else
                ds.Clear()
                adp = New SqlDataAdapter("select * from studc_reg where Enrollment_id='" + txtid.Text + "'", obj.connection)
                adp.Fill(ds, "studc_reg")
                If (ds.Tables("studc_reg").Rows.Count > 0) Then
                    gv1.DataSource = ds.Tables("studc_reg")
                    gv1.DataBind()
                Else
                    msg.Text = "Data not found"
                    msg.ForeColor = Drawing.Color.Red
                End If
            End If
        ElseIf txtid.Text = "" Then
            ds.Clear()
            adp = New SqlDataAdapter("select * from stud where Name='" + txtname.Text + "'", obj.connection)
            adp.Fill(ds, "stud")
            If (ds.Tables("stud").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("stud")
                gv1.DataBind()
            Else
                ds.Clear()
                adp = New SqlDataAdapter("select * from studc_reg where Name='" + txtname.Text + "'", obj.connection)
                adp.Fill(ds, "studc_reg")
                If (ds.Tables("studc_reg").Rows.Count > 0) Then
                    gv1.DataSource = ds.Tables("studc_reg")
                    gv1.DataBind()
                Else
                    msg.Text = "Data not found"
                    msg.ForeColor = Drawing.Color.Red
                End If
            End If
        Else
            ds.Clear()
            adp = New SqlDataAdapter("select * from stud where Enrollment_id='" + txtid.Text + "'", obj.connection)
            adp.Fill(ds, "stud")
            If (ds.Tables("stud").Rows.Count > 0) Then
                gv1.DataSource = ds.Tables("stud")
                gv1.DataBind()
            Else
                ds.Clear()
                adp = New SqlDataAdapter("select * from studc_reg where Enrollment_id='" + txtid.Text + "'", obj.connection)
                adp.Fill(ds, "studc_reg")
                If (ds.Tables("studc_reg").Rows.Count > 0) Then
                    gv1.DataSource = ds.Tables("studc_reg")
                    gv1.DataBind()
                Else
                    msg.Text = "Data not found"
                    msg.ForeColor = Drawing.Color.Red
                End If
            End If
        End If

    End Sub

    Protected Sub gv1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gv1.SelectedIndexChanged
        Dim row As GridViewRow = gv1.SelectedRow
        id.Text = TryCast(row.FindControl("lblid"), Label).Text
        name.Text = TryCast(row.FindControl("lblname"), Label).Text
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        obj.exequery("insert into fees values('" + name.Text + "','" + id.Text + "','" + txtdate.Text + "','" + txtamount.Text + "')")
        msg.Text = "Data Saved Successfully."
        msg.ForeColor = Drawing.Color.Green
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim tdate As DateTime = DateTime.Now
        txtdate.Text = tdate.ToString("D")
        ds.Clear()
        adp = New SqlDataAdapter("select * from stud", obj.connection)
        adp.Fill(ds, "stud")
        gv1.DataSource = ds.Tables("stud")
        gv1.DataBind()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        obj.exequery("update fees set Date_of_payment='" + txtdate.Text + "',Amount='" + txtamount.Text + "' where Enrollment_id='" + id.Text + "'")
        msg.Text = "Data Updated Successfully."
        msg.ForeColor = Drawing.Color.Green
    End Sub

    Protected Sub gv1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gv1.PageIndexChanging
        gv1.PageIndex = e.NewPageIndex
        gv1.DataBind()
    End Sub
End Class
