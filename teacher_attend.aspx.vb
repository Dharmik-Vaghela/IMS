Imports System.Data.SqlClient
Partial Class teacher_attend
    Inherits System.Web.UI.Page
    Dim ds As New Data.DataSet
    Dim obj As New us
    Dim adp As SqlDataAdapter
    Public Sub clear()
        txtid.Text = ""
        txtname.Text = ""
        msg.Text = ""
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        ds.Clear()
        adp = New SqlDataAdapter("select * from teacher_attendance where teacher_id='" + txtid.Text + "' and Date='" + txtdate.Text + "'", obj.connection)
        adp.Fill(ds, "teacher_attendance")
        If (ds.Tables("teacher_attendance").Rows.Count > 0) Then
            msg.Text = "Attendance taken already, Please select different record"
        Else
            Dim status As String
            If abs.Checked = True Or pre.Checked = True Then
                If abs.Checked = True Then
                    status = "Absent"
                ElseIf pre.Checked = True Then
                    status = "Present"
                End If
                obj.exequery("insert into teacher_attendance values('" + txtid.Text + "','" + txtname.Text + "','" + txtdate.Text + "','" + status + "')")
                msg.Text = "Data saved"
                msg.ForeColor = Drawing.Color.Green
                clear()
            Else
                msg.Text = "Please Select Status"
                msg.ForeColor = Drawing.Color.Red
            End If
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim tdate As DateTime = DateTime.Now
        txtdate.Text = tdate.ToString("D")
        ds.Clear()
        adp = New SqlDataAdapter("select teacher_id,Name from teacher_reg", obj.connection)
        adp.Fill(ds, "teacher_reg")
        gv1.DataSource = ds.Tables("teacher_reg")
        gv1.DataBind()
    End Sub

    Protected Sub gv1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gv1.SelectedIndexChanged
        Dim row As GridViewRow = gv1.SelectedRow
        txtid.Text = TryCast(row.FindControl("lblid"), Label).Text
        txtname.Text = TryCast(row.FindControl("lblname"), Label).Text
    End Sub

    Protected Sub gv1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gv1.PageIndexChanging
        gv1.PageIndex = e.NewPageIndex
        gv1.DataBind()
    End Sub
End Class
