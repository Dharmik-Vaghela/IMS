Imports System.Data.SqlClient
Partial Class payroll
    Inherits System.Web.UI.Page
    Dim ds As New Data.DataSet
    Dim obj As New us
    Dim adp As SqlDataAdapter
    Public Sub calcu()
        Dim hra, da, ta, pf, bsal, nsal As Double
        bsal = tbsal.Text
        hra = bsal * 15 / 100
        pf = bsal * 12 / 100
        da = bsal * 20 / 100
        ta = bsal * 10 / 100
        nsal = bsal + hra + ta + da - pf
        thra.Text = hra
        tpf.Text = pf
        tda.Text = da
        tta.Text = ta
        tnsal.Text = nsal
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        calcu()
    End Sub

    Protected Sub gv1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gv1.SelectedIndexChanged
        Dim row As GridViewRow = gv1.SelectedRow
        txtid.Text = TryCast(row.FindControl("lblid"), Label).Text
        txtname.Text = TryCast(row.FindControl("lblname"), Label).Text
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("stat").ToString = "Developer" Or Session("stat").ToString = "Principal" Then
            Button1.Enabled = True
            Button2.Enabled = True
            Dim tdate As DateTime = DateTime.Now
            txtdate.Text = tdate.ToString("D")
            ds.Clear()
            adp = New SqlDataAdapter("select teacher_id,Name from teacher_reg", obj.connection)
            adp.Fill(ds, "teacher_reg")
            gv1.DataSource = ds.Tables("teacher_reg")
            gv1.DataBind()
        Else
            Label1.Text = "You are not permitted to use this page."
        End If

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim hra, da, ta, pf, bsal, nsal As Integer
        bsal = tbsal.Text
        hra = bsal * 15 / 100
        pf = bsal * 12 / 100
        da = bsal * 20 / 100
        ta = bsal * 10 / 100
        nsal = bsal + hra + ta + da - pf
        obj.exequery("insert into staff_payroll values('" + txtname.Text + "','" + txtid.Text + "','" + txtdate.Text + "','" + bsal.ToString + "','" + hra.ToString + "','" + ta.ToString + "','" + da.ToString + "','" + pf.ToString + "','" + nsal.ToString + "')")
        Label1.Text = "Data Saved"
    End Sub

    Protected Sub gv1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gv1.PageIndexChanging
        gv1.PageIndex = e.NewPageIndex
        gv1.DataBind()
    End Sub
End Class
