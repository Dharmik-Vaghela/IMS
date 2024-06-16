Imports System.Data.SqlClient
Partial Class usactivity
    Inherits System.Web.UI.Page
    Dim adp As SqlDataAdapter
    Dim obj As New us
    Dim ds As New Data.DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("stat").ToString = "Developer" Or Session("stat").ToString = "Principal" Then
            gv1.Visible = True
            ds.Clear()
            adp = New SqlDataAdapter("select * from logus", obj.connection)
            adp.Fill(ds, "logus")
            gv1.DataSource = ds.Tables("logus")
            gv1.DataBind()
        Else
            MsgBox("You are not permitted to use this page.")
        End If
    End Sub

    Protected Sub gv1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gv1.PageIndexChanging
        gv1.PageIndex = e.NewPageIndex
        gv1.DataBind()
    End Sub
End Class
