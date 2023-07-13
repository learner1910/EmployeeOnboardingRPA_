<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyTable.aspx.cs" Inherits="BlazeRPA.ModifyTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="CSS\Bgstyle.css"/>
      <link rel="stylesheet" type="text/css" href="CSS\btn.css"/>
      <link rel="stylesheet" type="text/css" href="CSS\secondpageCSS.css"/>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
      <link rel="stylesheet" href="fontawesome-free-6.1.1-web\css\all.min.css"/>
      

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <script>
        $(document).ready(function () {
            $('input[id*=txtContact]').datepicker({
                dateFormat: "dd-mm-yy"
                            })
        })
    </script>

    
      

</head>
<body style="background-image:linear-gradient(to right,#f2f3f4, #a3a7aa)">
    <form id="form1" runat="server">
        <div>

            <div style="margin-top:40px">
                <img src="BBOT2.png" alt="Alternate Text"  class="user" style="margin-left:10px; height:65px; width:65px"/>
            <h2 style="width: 500px; font-weight:bold; font-size: 45px; margin-top:-60px; margin-left:85px">Say Yes To The Bot</h2>   
            </div>

        
    

        
            <hr class="line" align="center"/>

            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="BAckbtn.png" Height="42px" Width="46px" OnClick="BtnConfirm_Click2" />

            
            <h2 style="width: auto; text-align:center; font-weight:bold; font-size:xx-large">
               
                Modify Employee Data</h2> 

            <asp:GridView ID="gvPhoneBook" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="MailID"
                ShowHeaderWhenEmpty="True"

                OnRowCommand="gvPhoneBook_RowCommand" OnRowEditing="gvPhoneBook_RowEditing" OnRowCancelingEdit="gvPhoneBook_RowCancelingEdit"
                OnRowUpdating="gvPhoneBook_RowUpdating" OnRowDeleting="gvPhoneBook_RowDeleting"

                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="gvPhoneBook_SelectedIndexChanged" Width="969px" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                <%-- Theme Properties --%>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                
                <AlternatingRowStyle BackColor="#CCCCCC" />
                
                <Columns>
                    
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("FirstName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("FirstName") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFirstNameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("LastName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLastName" Text='<%# Eval("LastName") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtLastNameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Joining Date">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("JoiningDate") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtContact" Text='<%# Eval("JoiningDate") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtContactFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Mail ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("MailID") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" Text='<%# Eval("MailID") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtEmailFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    

                    <asp:TemplateField>
                        <ItemTemplate>
                                                  
                            <asp:ImageButton runat="server" ImageUrl="edit.png" CommandName="Edit" ToolTip="Edit" Width="25px" Height="25px" Text="Edit" />
                             <asp:ImageButton runat="server" ImageUrl="delete.png" CommandName="Delete" ToolTip="Delete" Width="30px" Height="30px" Text="Delete" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton runat="server" ImageUrl="save.png" CommandName="Update" ToolTip="Update" Width="25px" Height="25px" Text="Update" />

                            <asp:ImageButton runat="server" ImageUrl="cancel.png" CommandName="Cancel" ToolTip="Cancel" Width="27px" Height="27px" Text="Cancel" />
                         </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton runat="server" ImageUrl="addnew.png" CommandName="AddNew" ToolTip="Add New" Width="30px" Height="30px" Text="Add New" />


                           <!-- <asp:Button  runat="server" CommandName="AddNew" ToolTip="Add New" Width="100px" Height="25px" Text="Add New"/>-->
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

        </div>
    </form>

    
   
    
      

</body>
</html>
