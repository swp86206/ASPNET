<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="title_id" DataSourceID="SqlDataSource1" CellPadding="10" RepeatColumns="3" RepeatDirection="Horizontal" Width="615px">
        <ItemTemplate>
            &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("title_id", "covers/{0}.jpg") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("title_id", "BookInfo.aspx?qid={0}") %>' Text='<%# Eval("title", "{0}") %>'></asp:HyperLink>
            <br />
            編號:
            <asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
            <br />
            價格:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price", "{0:C}") %>' />
            <br />
            出版日期:
            <asp:Label ID="pubdateLabel" runat="server" Text='<%# Eval("pubdate", "{0:D}") %>' />
            <br />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>" SelectCommand="SELECT TOP (10) title, price, ytd_sales, pubdate, title_id FROM titles ORDER BY ytd_sales DESC"></asp:SqlDataSource>

</asp:Content>

