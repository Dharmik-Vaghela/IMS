Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Public Class loginform
    Public cn As SqlConnection
    Public cmd As SqlCommand

    Public Function connectivity() As SqlConnection
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\25260035\ims\App_Data\usreg.mdf;Integrated Security=True;User Instance=True")
        cn.Open()
        Return cn
    End Function
    Public Sub exequery(ByVal str As String)
        cmd = New SqlCommand(str, connectivity())
        cmd.ExecuteNonQuery()
        cn.Close()
    End Sub
End Class
