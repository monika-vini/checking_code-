<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="check._Default" %>

<!DOCTYPE html>
<script>
   /* protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton1.Checked==true)
            {
               Label2.Text= RadioButton1.Text;
            }
            else
            {
                 Label2.Text=RadioButton2.Text;
            }
        }
     protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked==true)
            {
               Label4.Text= CheckBox1.Text;
            }
            else
            {
                 Label4.Text=CheckBox2.Text;
            }
        }*/
</script>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>check_docs</title>
    </head>
<body>
<form id="form1" runat="server">
    <div align="center">
       
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>&nbsp;&nbsp;&nbsp;
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <!-- <script type="text/javascript">   </script>-->
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TxtBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    
    <asp:Label ID="Label2" runat="server" Text="select course"></asp:Label>
    <br /></br>
    
    <asp:RadioButton  id="RadioButton1" runat="server" Text="B.E/B.TECH"  Checked="true"  GroupName="control" />
        &nbsp;&nbsp;
        <!--<asp:ListItem Text=="B.E/B.TECH" Value="1" />
    <asp:ListItem Text="Mango" Value="2" />
        </asp:RadioButton>-->
   <asp:RadioButton id="RadioButton2" runat="server"  Text="OTHERS"  GroupName="control" />

        </br></br>
    
    <asp:Label ID="Label3" runat="server" Text="select gender"></asp:Label>
    
    </br></br>
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem value=""></asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>FeMale</asp:ListItem>

        </asp:DropDownList>
        </br></br>
        
    <asp:Label ID="Label4" runat="server" Text="select language"></asp:Label>
    </br></br>

    <asp:CheckBox ID="CheckBox1" runat="server" Text="ENGLISH" />  

    &nbsp;&nbsp;  

    <asp:CheckBox ID="CheckBox2" runat="server" Text="OTHERS" />  
    </br>
    <br />
    
    
        <asp:Button ID="Button1" runat="server" Style="text-align:center" Text="SAVE" OnClick="Button1_Click" />
 
 </div>
</form>
</body>
</html>

