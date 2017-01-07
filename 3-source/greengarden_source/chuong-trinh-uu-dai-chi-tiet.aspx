<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="chuong-trinh-uu-dai-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <title>Bất động sản</title>
    <meta name="description" content="Bất động sản" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="newscontent">
        <div class="news-main">
            <div class="news-title">
                CHƯƠNG TRÌNH ƯU ĐÃI</div>
            <asp:ListView ID="lstNewDetail" runat="server" DataSourceID="odsNewDetail" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="news-content">
                        <h1>
                            <%# Eval("ProductName")%></h1>
                        <%# Eval("Content") %>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsNewDetail" runat="server" SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="ud" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
