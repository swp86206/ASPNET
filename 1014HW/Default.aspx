<%@ Page Title="" Language="C#" MasterPageFile="~/Home1.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    
    <P>西藏文化周邊商品之好物先報！！！</P>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" horizontalalign="Center" DataKeyNames="商品編號" DataSourceID="SqlDataSource2" EnableModelValidation="True" Height="151px" Width="293px">
        <Columns>
            <asp:BoundField DataField="商品編號" HeaderText="商品編號" ReadOnly="True" SortExpression="商品編號" />
            <asp:BoundField DataField="商品名稱" HeaderText="商品名稱" SortExpression="商品名稱" />
            <asp:BoundField DataField="商品售價" HeaderText="商品售價" SortExpression="商品售價" />
        </Columns>


    </asp:GridView>

    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:藏韻好物ConnectionString %>" SelectCommand="SELECT [商品編號], [商品名稱], [商品售價] FROM [藏物商品]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    
</asp:Content>


