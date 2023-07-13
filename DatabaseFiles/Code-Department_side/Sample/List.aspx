<%@ Page Language="C#" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="Sample.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:linear-gradient(to right, rgb(0,128,128), rgb(25,25,112))">
    <form id="form1" runat="server">
        <div>
            <div style="margin-top:40px">
                <img src="BBOT2.png" alt="Alternate Text"  class="user" style="margin-left:10px; height:65px; width:65px"/>
            <h2 style="width: 500px; font-weight:bold; font-size: 45px; margin-top:-60px; margin-left:85px; color:white">Say Yes To The Bot</h2>   
            </div>

        
            <hr class="line" align="center"/>
            <h2 style="width: auto; text-align:center; font-weight:bold; font-size:xx-large; color:white">
               
                Progress Report</h2>  

        <asp:Button ID="btnConfirm" runat="server" Text="Add New Employee" PostBackUrl="ModifyTable.aspx" Width="200px" Height="30px" style="margin-left: 150px" BackColor=""/>

            <table style="width:80% ; margin:auto; color:black">
                <tr>
                    <td style="background-color:lightyellow">
                        <asp:GridView ID="GridView1" runat="server" Width="100%"></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
