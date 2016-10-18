<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
   
    <h3>首頁 ！！！</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="title_id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" Height="142px" PageSize="5" Width="569px">
         <Columns>
             <asp:BoundField DataField="title_id" HeaderText="title_id" ReadOnly="True" SortExpression="title_id" />
             <asp:HyperLinkField DataNavigateUrlFields="title_id" DataNavigateUrlFormatString="BookInfo.aspx?qid={0}" DataTextField="title" HeaderText="書名" />
             <asp:BoundField DataField="pubdate" HeaderText="出版日期" SortExpression="pubdate" DataFormatString="{0:yyyy-MM-dd}" />
             <asp:BoundField DataField="price" HeaderText="價格" SortExpression="price" DataFormatString="{0:###.00} 元" />
         </Columns>
</asp:GridView>
    


    
    


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString %>" SelectCommand="SELECT [title_id], [title], [price], [pubdate] FROM [titles]"></asp:SqlDataSource>
    


</asp:Content>

