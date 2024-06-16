Imports System.Data.SqlClient
Partial Class stud_reg
    Inherits System.Web.UI.Page
    Dim obj As New us
    Dim ds As New Data.DataSet
    Dim adp As SqlDataAdapter
    Dim std, std1 As String
    Dim course, filepath As String
    Public Sub clear()
        txtenroll.Text = ""
        txtname.Text = ""
        ddstd.Enabled = True
        ddstd.SelectedValue = "Select Standard"
        bca.Checked = False
        bcom.Checked = False
        bca.Visible = False
        bcom.Visible = False
        Button6.Visible = True
        txtmail.Text = ""
        txtmno.Text = ""
        txtyear.Text = "YYYY"
        txtadd.Text = ""
        m.Checked = False
        f.Checked = False
        txtdob.Text = "DD-MM-YYYY"
        txtcaste.SelectedValue = "Select"
        txtcity.SelectedValue = "Select"
        txtpin.Text = ""
    End Sub
    Public Sub chkstd()
        Dim connectionString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Dharmik\Documents\Visual Studio 2008\ims\App_Data\usreg.mdf;Integrated Security=True;User Instance=True"

        Dim query As String = "SELECT Standard FROM stud WHERE Enrollment_id = @id"
        Dim id As Integer = txtenroll.Text

        Using connection As New SqlConnection(connectionString)
            connection.Open()

            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@id", id)

                Using reader As SqlDataReader = command.ExecuteReader()
                    If reader.Read() Then
                        Dim columnValue As String = reader.GetString(0)
                        If columnValue = "KG" Then
                            std = "stdkg"
                            std1 = "KG"
                        ElseIf columnValue = "1st" Then
                            std = "std1"
                            std1 = "1st"
                        ElseIf columnValue = "2nd" Then
                            std = "std2"
                            std1 = "2nd"
                        ElseIf columnValue = "3rd" Then
                            std1 = "3rd"
                            std = "std3"
                        ElseIf columnValue = "4th" Then
                            std1 = "4th"
                            std = "std4"
                        ElseIf columnValue = "5th" Then
                            std = "std5"
                            std1 = "5th"
                        ElseIf columnValue = "6th" Then
                            std = "std6"
                            std1 = "6th"
                        ElseIf columnValue = "7th" Then
                            std = "std7"
                            std1 = "7th"
                        ElseIf columnValue = "8th" Then
                            std = "std8"
                            std1 = "8th"
                        ElseIf columnValue = "9th" Then
                            std = "std9"
                            std1 = columnValue.ToString
                        ElseIf columnValue = "10th" Then
                            std = "std10"
                            std1 = columnValue.ToString
                        ElseIf columnValue = "11th" Then
                            std = "std11"
                            std1 = columnValue.ToString
                        ElseIf columnValue = "12th" Then
                            std = "std12"
                            std1 = columnValue.ToString
                        End If
                    End If
                End Using
            End Using
            connection.Close()
        End Using
    End Sub
    Public Sub chkcourse()

    Dim connectionString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Dharmik\Documents\Visual Studio 2008\ims\App_Data\usreg.mdf;Integrated Security=True;User Instance=True"
        Dim query As String = "SELECT Course FROM studc_reg WHERE Enrollment_id = @id"
    Dim id As Integer = txtenroll.Text

        Using connection As New SqlConnection(connectionString)
            connection.Open()

            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@id", id)

                Using reader As SqlDataReader = command.ExecuteReader()
                    If reader.Read() Then
                        Dim columnValue As String = reader.GetString(0)
                        If columnValue = "BCA" Then
                            std = "bca"
                        ElseIf columnValue = "B.Com" Then
                            std = "bcom"
                        End If
                    End If
                End Using
            End Using
            connection.Close()
        End Using
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim gender As String
            Dim course As String
            FileUpload1.SaveAs(Server.MapPath("~/Img/") + FileUpload1.FileName)
            filepath = "~/Img/" + FileUpload1.FileName
            If m.Checked = True Then
                gender = "Male"
            ElseIf f.Checked = True Then
                gender = "Female"
            End If
            If bca.Checked = True Or bcom.Checked = True Then
                If bca.Checked = True Then
                    course = "BCA"
                    obj.exequery("insert into bca values('" + txtenroll.Text + "','" + txtname.Text + "')")
                ElseIf bcom.Checked = True Then
                    course = "B.Com"
                    obj.exequery("insert into bcom values('" + txtenroll.Text + "','" + txtname.Text + "')")
                End If
                FileUpload1.SaveAs(Server.MapPath("~/Img/") + FileUpload1.FileName)
                filepath = "~/Img/" + FileUpload1.FileName
                obj.exequery("insert into studc_reg values('" + txtenroll.Text + "','" + txtname.Text + "','" + course + "','" + txtmail.Text + "'," + txtmno.Text + ",'" + txtadd.Text + "','" + gender + "','" + txtdob.Text + "','" + txtcaste.SelectedItem.ToString + "','" + txtcity.SelectedItem.ToString + "'," + txtpin.Text + "," + txtyear.Text + ",'" + filepath + "')")
                msg.Text = "Data Saved Successfully"
                msg.ForeColor = Drawing.Color.Green
            Else
                obj.exequery("insert into stud values('" + txtenroll.Text + "','" + txtname.Text + "','" + ddstd.SelectedItem.ToString + "','" + txtmail.Text + "'," + txtmno.Text + ",'" + txtadd.Text + "','" + gender + "','" + txtdob.Text + "','" + txtcaste.SelectedItem.ToString + "','" + txtcity.SelectedItem.ToString + "'," + txtpin.Text + "," + txtyear.Text + ",'" + filepath + "')")
                msg.Text = "Data Saved Successfully"
                msg.ForeColor = Drawing.Color.Green

                If ddstd.SelectedItem.ToString = "KG" Then
                    obj.exequery("insert into stdkg values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in KG."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "1st" Then
                    obj.exequery("insert into std1 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 1."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "2nd" Then
                    obj.exequery("insert into std2 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 2."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "3rd" Then
                    obj.exequery("insert into std3 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 3."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "4th" Then
                    obj.exequery("insert into std4 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 4."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "5th" Then
                    obj.exequery("insert into std5 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 5."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "6th" Then
                    obj.exequery("insert into std6 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 6."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "7th" Then
                    obj.exequery("insert into std7 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 7."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "8th" Then
                    obj.exequery("insert into std8 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 8."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "9th" Then
                    obj.exequery("insert into std9 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 9."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "10th" Then
                    obj.exequery("insert into std10 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 10."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "11th" Then
                    obj.exequery("insert into std11 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 11."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "12th" Then
                    obj.exequery("insert into std12 values('" + txtenroll.Text + "','" + txtname.Text + "')")
                    msg.Text += "in Standard 12."
                    msg.ForeColor = Drawing.Color.Green
                End If
            End If
            clear()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub


    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        chkcourse()
        If std = "bca" Or std = "bcom" Then
            obj.exequery("delete from " + std + " where Enrollment_id=" + txtenroll.Text + "")
            obj.exequery("delete from studc_reg where Enrollment_id=" + txtenroll.Text + "")
            msg.Text = "Data Deleted Successfully"
        Else
            chkstd()
            obj.exequery("delete from " + std + " where Enrollment_id='" + txtenroll.Text + "'")
            obj.exequery("delete from stud where Enrollment_id = '" + txtenroll.Text + "'")
            msg.Text = "Data Deleted Successfully"
        End If
        clear()
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        bca.Visible = True
        bcom.Visible = True
        Button6.Visible = False
        ddstd.Enabled = False
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Button6.Enabled = False
        chkstd()
        chkcourse()
        FileUpload1.SaveAs(Server.MapPath("~/Img/") + FileUpload1.FileName)
        filepath = "~/Img/" + FileUpload1.FileName

        If std = "BCA" Or std = "B.Com" Then
            ddstd.Enabled = False
            If std = "BCA" Then
                bca.Checked = True
                bcom.Enabled = False
            ElseIf std = "B.Com" Then
                bcom.Checked = True
                bca.Enabled = False
            End If
        Else
            ddstd.Enabled = False
            ddstd.SelectedItem.Value = std1
            Dim gender As String
            Dim course As String
            If m.Checked = True Then
                gender = "Male"
            ElseIf f.Checked = True Then
                gender = "Female"
            End If
            If bca.Checked = True Or bcom.Checked = True Then
                If bca.Checked = True Then
                    course = "BCA"
                    obj.exequery("update bca set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                ElseIf bcom.Checked = True Then
                    course = "B.Com"
                    obj.exequery("update bcom set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                End If

                obj.exequery("update studc set Name='" + txtname.Text + "',Course='" + course + "',E_mail='" + txtmail.Text + "',Mobileno=" + txtmno.Text + ",Address='" + txtadd.Text + "',Gender='" + gender + "',Date_of_birth='" + txtdob.Text + "',Category='" + txtcaste.SelectedItem.ToString + "',City='" + txtcity.SelectedItem.ToString + "',Pin=" + txtpin.Text + ",Year_of_joining=" + txtyear.Text + ", Imageurl='" + filepath + "' where Enrollment_id='" + txtenroll.Text + "'")
                msg.Text = "Data Updated Successfully "
                msg.ForeColor = Drawing.Color.Green
            Else
                obj.exequery("update stud set Name='" + txtname.Text + "',Standard='" + ddstd.SelectedItem.ToString + "',E_mail='" + txtmail.Text + "',Mobileno=" + txtmno.Text + ",Address='" + txtadd.Text + "',Gender='" + gender + "',Date_of_birth='" + txtdob.Text + "',Category='" + txtcaste.SelectedItem.ToString + "',City='" + txtcity.SelectedItem.ToString + "',Pin=" + txtpin.Text + ",Year_of_joining=" + txtyear.Text + ", Imageurl='" + filepath + "' where Enrollment_id='" + txtenroll.Text + "'")
                msg.Text = "Data Updated Successfully"
                msg.ForeColor = Drawing.Color.Green

                If ddstd.SelectedItem.ToString = "KG" Then
                    obj.exequery("update stdkg set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in KG."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "1st" Then
                    obj.exequery("update std1 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 1."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "2nd" Then
                    obj.exequery("update std2 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 2."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "3rd" Then
                    obj.exequery("update std3 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 3."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "4th" Then
                    obj.exequery("update std4 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 4."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "5th" Then
                    obj.exequery("update std5 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 5."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "6th" Then
                    obj.exequery("update std6 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 6."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "7th" Then
                    obj.exequery("update std7 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 7."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "8th" Then
                    obj.exequery("update std8 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 8."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "9th" Then
                    obj.exequery("update std9 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 9."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "10th" Then
                    obj.exequery("update std10 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 10."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "11th" Then
                    obj.exequery("update std11 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 11."
                    msg.ForeColor = Drawing.Color.Green
                ElseIf ddstd.SelectedItem.ToString = "12th" Then
                    obj.exequery("update std12 set Name='" + txtname.Text + "' where Enrollment_id='" + txtenroll.Text + "'")
                    msg.Text += "in Standard 12."
                    msg.ForeColor = Drawing.Color.Green
                End If
            End If
        End If
        clear()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("dispstud.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("stat").ToString = "Developer" Or Session("stat").ToString = "Principal" Then
            HyperLink1.Enabled = True
        End If
    End Sub
End Class
