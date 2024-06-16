Imports System.Data.SqlClient
Partial Class teach_reg
    Inherits System.Web.UI.Page
    Dim obj As New us
    Dim gender, filepath As String
    Public Sub clear()
        txtname.Text = ""
        txtmail.Text = ""
        txtmno.Text = ""
        txtadd.Text = ""
        m.Checked = False
        f.Checked = False
        txtdob.Text = "DD-MM-YYYY"
        txtqua.Text = ""
        prsub.Text = ""
        ddstd.SelectedValue = "Select Standard"
        txtexp.Text = ""
        txtcity.SelectedValue = "Select"
        txtpin.Text = ""
        txtyear.Text = "YYYY"
        txtid.Text = ""
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If m.Checked = True Or f.Checked = True Then
            If m.Checked = True Then
                gender = "Male"
            ElseIf f.Checked = True Then
                gender = "Female"
            End If
            FileUpload1.SaveAs(Server.MapPath("~/Img/") + FileUpload1.FileName)
            filepath = "~/Img/" + FileUpload1.FileName
            obj.exequery("insert into teacher_reg values('" + txtname.Text + "','" + txtmail.Text + "'," + txtmno.Text + ",'" + txtadd.Text + "','" + gender + "','" + txtdob.Text + "','" + txtqua.Text + "','" + prsub.Text + "','" + ddstd.SelectedItem.ToString + "','" + txtexp.Text + "','" + txtcity.SelectedItem.ToString + "','" + txtpin.Text + "','" + txtyear.Text + "','" + filepath + "')")
            msg.Text = "Data Saved Successfully."
            msg.ForeColor = Drawing.Color.Green
        Else
            msg.Text = "Please Select Gender."
            msg.ForeColor = Drawing.Color.Red
        End If
        clear()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If txtid.Text = "" Then
            MsgBox("Please Enter Teacher_id")
            msg.Text = "Please Enter Teacher_id"
            msg.ForeColor = Drawing.Color.Red
        Else
            If m.Checked = True Or f.Checked = True Then
                If m.Checked = True Then
                    gender = "Male"
                ElseIf f.Checked = True Then
                    gender = "Female"
                End If
                obj.exequery("update teacher_reg set Name='" + txtname.Text + "',E_mail='" + txtmail.Text + "',Mobileno=" + txtmno.Text + ",Address='" + txtadd.Text + "',Gender='" + gender + "',Date_of_birth='" + txtdob.Text + "',Qualification='" + txtqua.Text + "',Preferable_subjects='" + prsub.Text + "',Preferable_class='" + ddstd.SelectedItem.ToString + "',Experience='" + txtexp.Text + "',City='" + txtcity.SelectedItem.ToString + "',PIN='" + txtpin.Text + "',Year_of_joining='" + txtyear.Text + "',Imageurl='" + filepath + "' where teacher_id=" + txtid.Text + "")
                msg.Text = "Data Updated Successfully."
                msg.ForeColor = Drawing.Color.Green
            Else
                msg.Text = "Please Select Gender."
                msg.ForeColor = Drawing.Color.Red
            End If
        End If
        clear()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If txtid.Text = "" Then
            MsgBox("Please Enter Teacher_id")
            msg.Text = "Please Enter Teacher_id"
            msg.ForeColor = Drawing.Color.Red
        Else
            obj.exequery("delete teacher_reg where teacher_id=" + txtid.Text + "")
            msg.Text = "Data Deleted Successfully."
            msg.ForeColor = Drawing.Color.Green
        End If
        clear()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("teachdisp.aspx")
    End Sub
End Class
