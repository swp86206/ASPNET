<%@ Page Title="" Language="C#" MasterPageFile="~/Home1.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    
    <h4 style= color:#3b536c;>西藏文化周邊商品之好物先報！！！ <br /> <br /></h4>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="title_id" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="156px" Width="499px" style="margin-left: 13px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="title_id" HeaderText="商品編號" ReadOnly="True" SortExpression="title_id" />
            <asp:BoundField DataField="price" HeaderText="價錢" SortExpression="price" DataFormatString="{0:###.00}  元" />
            <asp:HyperLinkField DataNavigateUrlFields="title_id" DataNavigateUrlFormatString="ItemsInfo.aspx?qid={0}" DataTextField="title" HeaderText="商品名稱" />
        </Columns>


    </asp:GridView>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:藏韻好物ConnectionString %>" SelectCommand="SELECT [title_id], [title], [price] FROM [藏物商品]"></asp:SqlDataSource>

    
</asp:Content>


