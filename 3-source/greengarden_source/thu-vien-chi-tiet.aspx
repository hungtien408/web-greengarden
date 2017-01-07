<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true"
    CodeFile="thu-vien-chi-tiet.aspx.cs" Inherits="thu_vien_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <title>Bất động sản</title>
    <meta name="description" content="Bất động sản" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="slider-library">
        <div class="librarymain">
            <div class="library-title">
                <h1>
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h1>
            </div>
            <div id="sliderGallery" class="gallery-slider">
                <div class="slider-for">
                    <asp:ListView ID="lstLibraryBig" runat="server" DataSourceID="odsLibraryDetail" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="slider-big">
                                <div class="gallery-group">
                                    <div class="gallery-img">
                                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbum/" + Eval("ImageName") %>' 
                                            visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                </div>
                <div class="gallery-smalls">
                    <div class="slider-nav">
                        <asp:ListView ID="lstLibrarySmall" runat="server" DataSourceID="odsLibraryDetail"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slider-small">
                                    <div class="gallery-small">
                                        <div class="small-box">
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbum/thumbs/" + Eval("ImageName") %>' 
                                            visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
            <asp:ObjectDataSource ID="odsLibraryDetail" runat="server" SelectMethod="PhotoAlbumSelectAll"
                TypeName="TLLib.PhotoAlbum">
                <SelectParameters>
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Descripttion" Type="String" />
                    <asp:QueryStringParameter QueryStringField="lib" Name="PhotoAlbumCategoryID" Type="String" />
                    <asp:Parameter Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
