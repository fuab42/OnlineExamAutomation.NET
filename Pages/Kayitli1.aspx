<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Kayitli1.aspx.cs" Inherits="WebApplication5.Kayitli1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label2" runat="server" Text="Gözetmen Seçiniz : "></asp:Label>
<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="isim" DataValueField="isim">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [isim], [unvan] FROM [hoca] WHERE ([unvan] = ?)">
    <SelectParameters>
        <asp:Parameter DefaultValue="Araştırma Görevlisi" Name="unvan" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
&nbsp;&nbsp;
<asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Göster" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label3" runat="server" Text="Sınıf Seçiniz : "></asp:Label>
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="likadd" DataValueField="likadd">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [likadd] FROM [derslik]"></asp:SqlDataSource>
&nbsp;&nbsp;
<asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Göster" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Tüm Sınavları Göster" />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Visible="False" Width="610px">
    <Columns>
        <asp:BoundField DataField="Gözetmen" HeaderText="Gözetmen" SortExpression="Gözetmen" />
        <asp:BoundField DataField="Ders" HeaderText="Ders" SortExpression="Ders" />
        <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
        <asp:BoundField DataField="Saat" HeaderText="Saat" SortExpression="Saat" />
        <asp:BoundField DataField="Derslik" HeaderText="Derslik" SortExpression="Derslik" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [Gözetmen], [Ders], [Tarih], [Saat], [Derslik] FROM [kayitsinav] WHERE ([Gözetmen] = ?)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="Gözetmen" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
&nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Visible="False" Width="610px">
    <Columns>
        <asp:BoundField DataField="Gözetmen" HeaderText="Gözetmen" SortExpression="Gözetmen" />
        <asp:BoundField DataField="Ders" HeaderText="Ders" SortExpression="Ders" />
        <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
        <asp:BoundField DataField="Saat" HeaderText="Saat" SortExpression="Saat" />
        <asp:BoundField DataField="Derslik" HeaderText="Derslik" SortExpression="Derslik" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [Gözetmen], [Ders], [Tarih], [Saat], [Derslik] FROM [kayitsinav] WHERE ([Derslik] = ?)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList2" Name="Derslik" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Visible="False" Width="609px">
    <Columns>
        <asp:BoundField DataField="Gözetmen" HeaderText="Gözetmen" SortExpression="Gözetmen" />
        <asp:BoundField DataField="Ders" HeaderText="Ders" SortExpression="Ders" />
        <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
        <asp:BoundField DataField="Saat" HeaderText="Saat" SortExpression="Saat" />
        <asp:BoundField DataField="Derslik" HeaderText="Derslik" SortExpression="Derslik" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [Gözetmen], [Ders], [Tarih], [Saat], [Derslik] FROM [kayitsinav]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Yazdır" />
</asp:Content>
