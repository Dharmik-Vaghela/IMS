Imports System.Data.SqlClient
Partial Class stud_attend
    Inherits System.Web.UI.Page
    Dim ds As New Data.DataSet
    Dim obj As New us
    Dim std As String
    Dim adp As SqlDataAdapter
    Public Sub clear()
        txtenroll.Text = ""
        txtname.Text = ""
        ddstd.SelectedValue = "Select Standard"
    End Sub
    Protected Sub gv1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gv1.SelectedIndexChanged
        Dim row As GridViewRow = gv1.SelectedRow
        txtenroll.Text = TryCast(row.FindControl("lblid"), Label).Text
        txtname.Text = TryCast(row.FindControl("lblname"), Label).Text
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim tdate As DateTime = DateTime.Now
        txtdate.Text = tdate.ToString("D")
        If Session("stat").ToString = "Developer" Or Session("stat").ToString = "Principal" Then
            HyperLink1.Enabled = True
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If txtname.Text = "" Then
            msg.Text = "Please Select Any Record"
            msg.ForeColor = Drawing.Color.Red
        Else
            ds.Clear()
            adp = New SqlDataAdapter("select * from stud_attendance where Enrollment_id='" + txtenroll.Text + "' and Date='" + txtdate.Text + "'", obj.connection)
            adp.Fill(ds, "stud_attendance")
            If (ds.Tables("stud_attendance").Rows.Count > 0) Then
                msg.Text = "Attendance taken already, Please select different record"
            Else
                Dim status As String
                If abs.Checked = True Or pre.Checked = True Then
                    If abs.Checked = True Then
                        status = "Absent"
                    ElseIf pre.Checked = True Then
                        status = "Present"
                    End If
                    If ddstd.SelectedValue = "KG" Then
                        std = "stdkg"
                    ElseIf ddstd.SelectedValue = "1st" Then
                        std = "std1"
                    ElseIf ddstd.SelectedValue = "2nd" Then
                        std = "std2"
                    ElseIf ddstd.SelectedValue = "3rd" Then
                        std = "std3"
                    ElseIf ddstd.SelectedValue = "4th" Then
                        std = "std4"
                    ElseIf ddstd.SelectedValue = "5th" Then
                        std = "std5"
                    ElseIf ddstd.SelectedValue = "6th" Then
                        std = "std6"
                    ElseIf ddstd.SelectedValue = "7th" Then
                        std = "std7"
                    ElseIf ddstd.SelectedValue = "8th" Then
                        std = "std8"
                    ElseIf ddstd.SelectedValue = "9th" Then
                        std = "std9"
                    ElseIf ddstd.SelectedValue = "10th" Then
                        std = "std10"
                    ElseIf ddstd.SelectedValue = "11th" Then
                        std = "std11"
                    ElseIf ddstd.SelectedValue = "12th" Then
                        std = "std12"
                    ElseIf ddstd.SelectedValue = "BCA" Then
                        std = "bca"
                    ElseIf ddstd.SelectedValue = "B.Com" Then
                        std = "bcom"
                    End If

                    obj.exequery("insert into stud_attendance values('" + txtenroll.Text + "','" + txtname.Text + "','" + ddstd.SelectedItem.ToString + "','" + txtdate.Text + "','" + status + "')")
                    msg.Text = "Data Saved"
                    msg.ForeColor = Drawing.Color.Green
                    clear()
                Else
                    msg.Text = "Please select any status."
                    msg.ForeColor = Drawing.Color.Red
                End If
            End If
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If ddstd.SelectedValue = "KG" Then
            std = "stdkg"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from stdkg", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "1st" Then
            std = "std1"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std1", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "2nd" Then
            std = "std2"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std2", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "3rd" Then
            std = "std3"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std3", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "4th" Then
            std = "std4"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std4", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "5th" Then
            std = "std5"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std5", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "6th" Then
            std = "std6"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std6", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "7th" Then
            std = "std7"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std7", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "8th" Then
            std = "std8"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std8", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "9th" Then
            std = "std9"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std9", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "10th" Then
            std = "std10"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std10", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "11th" Then
            std = "std11"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std11", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "12th" Then
            std = "std12"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from std12", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "BCA" Then
            std = "bca"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from bca", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        ElseIf ddstd.SelectedValue = "B.Com" Then
            std = "bcom"
            ds.Clear()
            adp = New SqlDataAdapter("select Enrollment_id,Name from bcom", obj.connection)
            adp.Fill(ds, std.ToString)
            gv1.DataSource = ds.Tables(std.ToString)
            gv1.DataBind()
        End If
    End Sub

    Protected Sub gv1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gv1.PageIndexChanging
        gv1.PageIndex = e.NewPageIndex
        gv1.DataBind()
    End Sub
End Class
