Imports System.Data.SqlClient
Partial Class library
    Inherits System.Web.UI.Page
    Dim ds As New Data.DataSet
    Dim adp As SqlDataAdapter
    Dim obj As New us
    Dim std As String
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        ds.Clear()
        adp = New SqlDataAdapter("select * from stud where Enrollment_id='" + txtid.Text + "'", obj.connection)
        adp.Fill(ds, "stud")
        If ds.Tables("stud").Rows.Count > 0 Then
            gv1.DataSource = ds.Tables("stud")
            gv1.DataBind()
            gv1.Visible = True
        Else
            ds.Clear()
            adp = New SqlDataAdapter("select * from studc_reg where Enrollment_id='" + txtid.Text + "'", obj.connection)
            adp.Fill(ds, "studc_reg")
            If ds.Tables("studc_reg").Rows.Count > 0 Then
                gv1.DataSource = ds.Tables("studc_reg")
                gv1.DataBind()
                gv1.Visible = True
            Else
                msg.Text = "Enter Valid Enrollment_ID"
                msg.ForeColor = Drawing.Color.Red
                gv1.Visible = False
            End If
        End If
    End Sub
    Public Sub displaydata()
        ds.Clear()
        adp = New SqlDataAdapter("select * from stud", obj.connection)
        adp.Fill(ds, "stud")
        gv1.DataSource = ds.Tables("stud")
        gv1.DataBind()
    End Sub
    Protected Sub gv1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gv1.SelectedIndexChanged
        Dim row As GridViewRow = gv1.SelectedRow
        txtstd.Text = TryCast(row.FindControl("lblstd"), Label).Text
        txtid.Text = TryCast(row.FindControl("lblid"), Label).Text
        txtname.Text = TryCast(row.FindControl("lblname"), Label).Text
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim typee As String
        Dim tdate As DateTime = DateTime.Now
        If br.Checked = True Or su.Checked = True Then
            If br.Checked = True Then
                typee = "Borrow"
            ElseIf su.Checked = True Then
                typee = "Submit"
            End If
            obj.exequery("insert into library values(" + bid.Text + ",'" + bname.Text + "','" + txtname.Text + "','" + txtid.Text + "','" + txtstd.Text + "','" + tdate.ToString("D") + "','" + typee + "')")

        Else
            msg.Text = "Please Select Type of Transaction"
            msg.ForeColor = Drawing.Color.Red
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        displaydata()
        tdate.Text = DateTime.Now.ToString("D")
    End Sub

    Protected Sub gv1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gv1.PageIndexChanging
        gv1.PageIndex = e.NewPageIndex
        gv1.DataBind()
    End Sub
End Class
