<%@ Master Language="C#" AutoEventWireup="true" CodeBehind="Site1.master.cs" Inherits="WebApplication5.Site1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <asp:ContentPlaceHolder ID="head" runat="server">
    </asp:ContentPlaceHolder>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            vertical-align: top;
            height: 23px;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table class="maintable">
            <tr>
                <td colspan="2">

                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Başlıksız-2 kopya.png" />

                </td>
            </tr>
            <tr>
                <td class="maintabletd">

                    <br />
                    <asp:Button ID="Button6" runat="server" BackColor="LightSalmon" BorderStyle="None" ForeColor="Black" Text="Anasayfa" Width="150px" OnClick="Button6_Click1" />
                    <br />
                    <br />

                    <asp:Button ID="Button1" runat="server" BackColor="LightSalmon" BorderStyle="None" OnClick="Button1_Click" Text="Ögretmen Kayıt" Width="150px" />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" BackColor="LightSalmon" BorderStyle="None" OnClick="Button2_Click" Text="Ders Kayıt" Width="150px" />
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" BackColor="#FE9F7A" BorderStyle="None" OnClick="Button3_Click" Text="Derslik Kayıt" Width="150px" />
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" BackColor="LightSalmon" BorderStyle="None" OnClick="Button4_Click" Text="Sınav Kayıt" Width="150px" />
                    <br />
                    <br />
                    <asp:Button ID="Button5" runat="server" BackColor="LightSalmon" BorderStyle="None" OnClick="Button5_Click" Text="Kayıtlı Sınavlar" Width="150px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />

                </td>
                <td class="sait">
                      <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
                          <p>
                              <br />
                          </p>
                          <p>
                          </p>
                          <p>
                          </p>
                          <p>
                          </p>
                          <p>
                          </p>
                          <p>
                          </p>
                          <p>
                          </p>
                          <p>
                          </p>
                      </asp:ContentPlaceHolder>
                </td>
            </tr>
            <tr>
                <td class="maintablefoot" colspan="2">

                    <asp:Label ID="Label1" runat="server" Text="2016 | Created by Abdülkadir Arpacı | İnternet Tabanlı Programlama"></asp:Label>

                </td>
            </tr>
        </table>
      

    </form>
</body>
</html>
