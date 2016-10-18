<%@ Page Title="" Language="C#" MasterPageFile="~/Home1.master" %>

<script runat="server">

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <h2>前七大售價 <br /> 
        <asp:DataList ID="DataList1" runat="server" CellPadding="10" DataKeyField="title_id" DataSourceID="SqlDataSource1" Font-Size="Small" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "coverss/{0}.jpg") %>' Width="120px" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("title_id", "ItemsInfo.aspx?qid={0}") %>' Text='<%# Eval("title", "{0}") %>'></asp:HyperLink>
                <br />
                商品編號:
                <asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
                <br />
                商品名稱:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                單位:
                <asp:Label ID="unitLabel" runat="server" Text='<%# Eval("unit") %>' />
                <br />
                價錢:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price", "{0:C}") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:藏韻好物ConnectionString %>" SelectCommand="SELECT  Top 7 [title_id], [title], [unit], [price] FROM [藏物商品] ORDER BY [price] DESC"></asp:SqlDataSource>
        <br /> </h2>
    </asp:Content>

