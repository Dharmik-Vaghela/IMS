Imports System.Data.SqlClient
Partial Class result
    Inherits System.Web.UI.Page
    Dim obj As New us
    Dim adp As SqlDataAdapter
    Dim ds As New Data.DataSet
    Dim sb1, sb2, sb3, sb4, sb5, sb6, sb7 As Integer
    Dim ttotal As Integer
    Dim pper As Integer
    Dim ggrade As String
    Public Sub clear()
        ds.Clear()
        gv1.Visible = False
        subb.Visible = False
        sub0.Visible = False
        sub1.Visible = False
        sub2.Visible = False
        sub3.Visible = False
        sub4.Visible = False
        sub5.Visible = False
        s.Visible = False
        s0.Visible = False
        s1.Visible = False
        s2.Visible = False
        s3.Visible = False
        s4.Visible = False
        s5.Visible = False
        txtname.Text = ""
        txtid.Text = ""
        ddstd.SelectedValue = "Select Standard"
        total.Text = ""
        per.Text = ""
        grade.Text = ""
    End Sub
    Public Sub chkgrade()
        If pper > 90 Then
            ggrade = "A+"
        ElseIf pper > 80 Then
            ggrade = "A"
        ElseIf pper > 70 Then
            ggrade = "B+"
        ElseIf pper > 60 Then
            ggrade = "B"
        ElseIf pper > 50 Then
            ggrade = "C+"
        ElseIf pper >= 35 Then
            ggrade = "C"
        ElseIf pper < 35 Then
            ggrade = "FAIL"
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If ddstd.SelectedValue = "KG" Then
            ds.Clear()
            gv1.Visible = True
            adp = New SqlDataAdapter("select * from stdkg", obj.connection)
            adp.Fill(ds, "stdkg")
            gv1.DataSource = ds.Tables("stdkg")
            gv1.DataBind()
            subb.Visible = True
            sub0.Visible = True
            sub1.Visible = True
            sub2.Visible = True
            sub3.Visible = True
            RequiredFieldValidator7.Enabled = False
            RequiredFieldValidator8.Enabled = False
            s.Visible = True
            s0.Visible = True
            s1.Visible = True
            s2.Visible = True
            s3.Visible = True
            subb.Text = "Gujarati"
            sub0.Text = "Maths"
            sub1.Text = "Hindi"
            sub2.Text = "English"
            sub3.Text = "Drawing"

        ElseIf ddstd.SelectedValue = "1st" Or ddstd.SelectedValue = "2nd" Or ddstd.SelectedValue = "3rd" Or ddstd.SelectedValue = "4th" Or ddstd.SelectedValue = "5th" Or ddstd.SelectedValue = "6th" Or ddstd.SelectedValue = "7th" Or ddstd.SelectedValue = "8th" Then
            subb.Visible = True
            sub0.Visible = True
            sub1.Visible = True
            sub2.Visible = True
            sub3.Visible = True
            sub4.Visible = True
            sub5.Visible = True
            s.Visible = True
            s0.Visible = True
            s1.Visible = True
            s2.Visible = True
            s3.Visible = True
            s4.Visible = True
            s5.Visible = True
            subb.Text = "Gujarati"
            sub0.Text = "Maths"
            sub1.Text = "Hindi"
            sub2.Text = "English"
            sub3.Text = "Social Science"
            sub4.Text = "Science"
            sub5.Text = "Computer"
            gv1.Visible = True
            If ddstd.SelectedValue = "1st" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std1", obj.connection)
                adp.Fill(ds, "std1")
                gv1.DataSource = ds.Tables("std1")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "2nd" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std2", obj.connection)
                adp.Fill(ds, "std2")
                gv1.DataSource = ds.Tables("std2")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "3rd" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std3", obj.connection)
                adp.Fill(ds, "std3")
                gv1.DataSource = ds.Tables("std3")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "4th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std4", obj.connection)
                adp.Fill(ds, "std4")
                gv1.DataSource = ds.Tables("std4")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "5th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std5", obj.connection)
                adp.Fill(ds, "std5")
                gv1.DataSource = ds.Tables("std5")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "6th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std6", obj.connection)
                adp.Fill(ds, "std6")
                gv1.DataSource = ds.Tables("std6")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "7th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std7", obj.connection)
                adp.Fill(ds, "std7")
                gv1.DataSource = ds.Tables("std7")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "8th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std8", obj.connection)
                adp.Fill(ds, "std8")
                gv1.DataSource = ds.Tables("std8")
                gv1.DataBind()
            End If
        ElseIf ddstd.SelectedValue = "9th" Or ddstd.SelectedValue = "10th" Then
            subb.Visible = True
            sub0.Visible = True
            sub1.Visible = True
            sub2.Visible = True
            sub3.Visible = True
            sub4.Visible = True
            s.Visible = True
            s0.Visible = True
            s1.Visible = True
            s2.Visible = True
            s3.Visible = True
            s4.Visible = True
            RequiredFieldValidator8.Enabled = False
            subb.Text = "Gujarati"
            sub0.Text = "Maths"
            sub1.Text = "Hindi"
            sub2.Text = "English"
            sub3.Text = "Computer"
            sub4.Text = "Sanskrit"
            gv1.Visible = True
            If ddstd.SelectedValue = "9th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std9", obj.connection)
                adp.Fill(ds, "std9")
                gv1.DataSource = ds.Tables("std9")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "10th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std10", obj.connection)
                adp.Fill(ds, "std10")
                gv1.DataSource = ds.Tables("std10")
                gv1.DataBind()
            End If
        ElseIf ddstd.SelectedValue = "11th" Or ddstd.SelectedValue = "12th" Then
            subb.Visible = True
            sub0.Visible = True
            sub1.Visible = True
            sub2.Visible = True
            sub3.Visible = True
            sub4.Visible = True
            sub5.Visible = True
            s.Visible = True
            s0.Visible = True
            s1.Visible = True
            s2.Visible = True
            s3.Visible = True
            s4.Visible = True
            s5.Visible = True
            subb.Text = "Gujarati"
            sub0.Text = "Statistics"
            sub1.Text = "Accountancy"
            sub2.Text = "English"
            sub3.Text = "Org_of_commerce"
            sub4.Text = "Economics"
            sub5.Text = "SPCC"
            gv1.Visible = True
            If ddstd.SelectedValue = "11th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std11", obj.connection)
                adp.Fill(ds, "std11")
                gv1.DataSource = ds.Tables("std11")
                gv1.DataBind()
            ElseIf ddstd.SelectedValue = "12th" Then
                ds.Clear()
                adp = New SqlDataAdapter("select * from std12", obj.connection)
                adp.Fill(ds, "std12")
                gv1.DataSource = ds.Tables("std12")
                gv1.DataBind()
            End If
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If ddstd.SelectedValue = "KG" Then
            sb1 = s.Text
            sb2 = s0.Text
            sb3 = s1.Text
            sb4 = s2.Text
            sb5 = s3.Text
            ttotal = sb1 + sb2 + sb3 + sb4 + sb5
            total.Text = ttotal
            pper = ttotal / 5
            per.Text = pper
            chkgrade()
            grade.Text = ggrade
        ElseIf ddstd.SelectedValue = "1st" Or ddstd.SelectedValue = "2nd" Or ddstd.SelectedValue = "3rd" Or ddstd.SelectedValue = "4th" Or ddstd.SelectedValue = "5th" Or ddstd.SelectedValue = "6th" Or ddstd.SelectedValue = "7th" Or ddstd.SelectedValue = "8th" Then
            sb1 = s.Text
            sb2 = s0.Text
            sb3 = s1.Text
            sb4 = s2.Text
            sb5 = s3.Text
            sb6 = s4.Text
            sb7 = s5.Text
            ttotal = sb1 + sb2 + sb3 + sb4 + sb5 + sb6 + sb7
            total.Text = ttotal
            pper = ttotal / 7
            per.Text = pper
            chkgrade()
            grade.Text = ggrade
        ElseIf ddstd.SelectedValue = "9th" Or ddstd.SelectedValue = "10th" Then
            sb1 = s.Text
            sb2 = s0.Text
            sb3 = s1.Text
            sb4 = s2.Text
            sb5 = s3.Text
            sb6 = s4.Text
            ttotal = sb1 + sb2 + sb3 + sb4 + sb5 + sb6
            total.Text = ttotal
            pper = ttotal / 6
            per.Text = pper
            chkgrade()
            grade.Text = ggrade
        ElseIf ddstd.SelectedValue = "11th" Or ddstd.SelectedValue = "12th" Then
            sb1 = s.Text
            sb2 = s0.Text
            sb3 = s1.Text
            sb4 = s2.Text
            sb5 = s3.Text
            sb6 = s4.Text
            sb7 = s5.Text
            ttotal = sb1 + sb2 + sb3 + sb4 + sb5 + sb6 + sb7
            total.Text = ttotal
            pper = ttotal / 7
            per.Text = pper
            chkgrade()
            grade.Text = ggrade
        End If
    End Sub

    Protected Sub gv1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gv1.SelectedIndexChanged
        Dim row As GridViewRow = gv1.SelectedRow
        txtid.Text = TryCast(row.FindControl("lblid"), Label).Text
        txtname.Text = TryCast(row.FindControl("lblname"), Label).Text
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If ddstd.SelectedValue = "KG" Then
            sb1 = s.Text
            sb2 = s0.Text
            sb3 = s1.Text
            sb4 = s2.Text
            sb5 = s3.Text
            ttotal = sb1 + sb2 + sb3 + sb4 + sb5
            total.Text = ttotal
            pper = ttotal / 5
            per.Text = pper
            chkgrade()
            grade.Text = ggrade
            obj.exequery("insert into kg_result values('" + txtname.Text + "','" + txtid.Text + "','" + ddstd.SelectedItem.ToString + "','" + s.Text + "','" + s0.Text + "','" + s1.Text + "','" + s2.Text + "','" + s3.Text + "','" + total.Text + "','" + per.Text + "','" + grade.Text + "')")
            clear()
        ElseIf ddstd.SelectedValue = "1st" Or ddstd.SelectedValue = "2nd" Or ddstd.SelectedValue = "3rd" Or ddstd.SelectedValue = "4th" Or ddstd.SelectedValue = "5th" Or ddstd.SelectedValue = "6th" Or ddstd.SelectedValue = "7th" Or ddstd.SelectedValue = "8th" Then
            sb1 = s.Text
            sb2 = s0.Text
            sb3 = s1.Text
            sb4 = s2.Text
            sb5 = s3.Text
            sb6 = s4.Text
            sb7 = s5.Text
            ttotal = sb1 + sb2 + sb3 + sb4 + sb5 + sb6 + sb7
            total.Text = ttotal
            pper = ttotal / 7
            per.Text = pper
            chkgrade()
            grade.Text = ggrade
            obj.exequery("insert into primary_result values('" + txtname.Text + "','" + txtid.Text + "','" + ddstd.SelectedItem.ToString + "','" + s.Text + "','" + s0.Text + "','" + s1.Text + "','" + s2.Text + "','" + s3.Text + "','" + s4.Text + "','" + s5.Text + "','" + total.Text + "','" + per.Text + "','" + grade.Text + "')")
            clear()
        ElseIf ddstd.SelectedValue = "9th" Or ddstd.SelectedValue = "10th" Then
            sb1 = s.Text
            sb2 = s0.Text
            sb3 = s1.Text
            sb4 = s2.Text
            sb5 = s3.Text
            sb6 = s4.Text
            ttotal = sb1 + sb2 + sb3 + sb4 + sb5 + sb6
            total.Text = ttotal
            pper = ttotal / 6
            per.Text = pper
            chkgrade()
            grade.Text = ggrade
            obj.exequery("insert into hs_result values('" + txtname.Text + "','" + txtid.Text + "','" + ddstd.SelectedItem.ToString + "','" + s.Text + "','" + s0.Text + "','" + s1.Text + "','" + s2.Text + "','" + s3.Text + "','" + s4.Text + "','" + total.Text + "','" + per.Text + "','" + grade.Text + "')")
            clear()

        ElseIf ddstd.SelectedValue = "11th" Or ddstd.SelectedValue = "12th" Then
            sb1 = s.Text
            sb2 = s0.Text
            sb3 = s1.Text
            sb4 = s2.Text
            sb5 = s3.Text
            sb6 = s4.Text
            sb7 = s5.Text
            ttotal = sb1 + sb2 + sb3 + sb4 + sb5 + sb6 + sb7
            total.Text = ttotal
            pper = ttotal / 7
            per.Text = pper
            chkgrade()
            grade.Text = ggrade
            obj.exequery("insert into hsc_result values('" + txtname.Text + "','" + txtid.Text + "','" + ddstd.SelectedItem.ToString + "','" + s.Text + "','" + s0.Text + "','" + s1.Text + "','" + s2.Text + "','" + s3.Text + "','" + s4.Text + "','" + s5.Text + "','" + total.Text + "','" + per.Text + "','" + grade.Text + "')")
            clear()
        End If
    End Sub

    Protected Sub gv1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gv1.PageIndexChanging
        gv1.PageIndex = e.NewPageIndex
        gv1.DataBind()
    End Sub
End Class
