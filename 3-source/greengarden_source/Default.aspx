<%@ Page Title="" Language="C#" MasterPageFile="~/site-default.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.40412.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2012.3.1016.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <title>Bất động sản</title>
    <meta name="description" content="Bất động sản" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="content-wrap">
        <div class="row row-nav" id="row1">
            <div class="banner-slider">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <asp:ListView ID="lstBanner" runat="server" DataSourceID="odsBanner" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class='<%# (Container.DataItemIndex + 1) == 1 ?  "item active" : "item" %>'
                                    data-img='<%# "res/advertisement/" + Eval("FileName") %>'>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsBanner" runat="server" SelectMethod="AdsBannerSelectAll"
                            TypeName="TLLib.AdsBanner">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                                <asp:Parameter Name="CompanyName" Type="String" />
                                <asp:Parameter Name="Website" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter DefaultValue="true" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="true" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                            Previous</span> </a><a class="right carousel-control" href="#carousel-example-generic"
                                role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                                </span><span class="sr-only">Next</span> </a>
                </div>
                <div class="scroll_play_wave_button">
                    <div class="pulse_holder">
                        <div class="pulse_marker">
                            <a href="javascript:void(0);" class="scroll_cir">
                                <div class="scroll_cir2">
                                </div>
                                <span class="percentage">Scroll</span>
                                <div class="cir0">
                                </div>
                                <div class="cir1">
                                </div>
                                <div class="cir2">
                                </div>
                                <div class="cir3">
                                </div>
                                <div class="cir4">
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row row-nav" id="row2">
            <div class="overview">
                <div class="overview-tab">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <asp:ListView ID="lstTongQuan" runat="server" DataSourceID="odsTongQuan" EnableModelValidation="True">
                            <ItemTemplate>
                                <li role="presentation" class='<%# (Container.DataItemIndex + 1) == 1 ? "active" : "" %>'>
                                    <a href='<%# "#tongquan" + Eval("ProductID") %>' data-toggle="tab">
                                        <%# Eval("ProductName") %></a></li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsTongQuan" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter Name="IsAvailable" Type="String" DefaultValue="true" />
                                <asp:Parameter Name="SortByPriority" Type="String" DefaultValue="true" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <asp:ListView ID="lstTongQuan2" runat="server" DataSourceID="odsTongQuan" EnableModelValidation="True">
                            <ItemTemplate>
                                <div role="tabpanel" class='<%# (Container.DataItemIndex + 1) == 1 ? "tab-pane active" : "tab-pane" %>'
                                    id='<%# "tongquan" + Eval("ProductID") %>'>
                                    <div class="tab-box">
                                        <h1>
                                            <%# Eval("ProductName") %></h1>
                                        <ul>
                                            <li>
                                                <div class="li-img">
                                                    <img src="assets/images/li1.png" />
                                                </div>
                                                <div class="li-box">
                                                    <span>Diện tích khu đất</span><span><b>
                                                        <%# Eval("DienTichKhuDat") %>
                                                        <%--m<sup>2</sup>--%></b></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="li-img">
                                                    <img src="assets/images/li1.png" />
                                                </div>
                                                <div class="li-box">
                                                    <span>Mật độ xây dựng</span><span><b>
                                                        <%# Eval("MatDoXayDung") %>%</b></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="li-img">
                                                    <img src="assets/images/li1.png" />
                                                </div>
                                                <div class="li-box">
                                                    <span>Không gian xanh</span><span><b><%# Eval("KhongGianXanh") %>
                                                        m<sup>2</sup></b></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="li-img">
                                                    <img src="assets/images/li1.png" />
                                                </div>
                                                <div class="li-box">
                                                    <span>Diện tích xây dựng</span><span> <b>
                                                        <%# Eval("DienTichXayDung") %>
                                                        m<sup>2</sup></b></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="li-img">
                                                    <img src="assets/images/li1.png" />
                                                </div>
                                                <div class="li-box">
                                                    <span>Số block & Tầng cao</span><span><b><%# Eval("SoBLock") %></b> block & <b>
                                                        <%# Eval("SoTang") %></b> tầng</span>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="tienich">
                                            <h1>
                                                TIỆN ÍCH</h1>
                                            <p>
                                                <%# Eval("Description")%>
                                            </p>
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
                <div class="overview-img">
                    <img src="assets/images/img1.jpg" />
                </div>
            </div>
        </div>
        <div class="row row-nav" id="row3">
            <div class="location-main">
                <%--<div class="location-box title-box">
                    <h1>
                        VỊ TRÍ CHIẾN LƯỢC <span>GIỮA LÒNG ĐÔ THỊ</span></h1>
                    <p>
                        Green Garden mang đến một cuộc sống vẹn toàn không chỉ từ tiện nghi bên trong căn
                        hộ mà còn từ vị trí kết nối toàn khu vực. Từ đây, cư dân chỉ mất khoảng 5 phút để
                        vào trung tâm Quận 1 và Khu đô thị Phú Mỹ Hưng, đồng thời dễ dàng tận hưởng những
                        tiện ích hàng đầu chỉ trong bán kính 2km.</p>
                    <p>
                        Với vị trí đắc địa bên dòng sông xanh thanh bình của khu Trung Sơn, Green Garden
                        tạo nên một cuộc sống trong lành, xanh mát ngay giữa Sài Gòn nhộn nhịp, mang đến
                        sức khỏe cho cư dân.</p>
                    <div class="location-item">
                        <div class="location-list">
                            <ul>
                                <li>Trường Quốc Tế Singapore</li>
                                <li>Trường Quốc Tế ABC</li>
                                <li>Trường Quốc Tế Bắc Mỹ</li>
                            </ul>
                        </div>
                        <div class="location-minute">
                            <span><strong>5</strong> phút</span>
                        </div>
                    </div>
                    <div class="location-item">
                        <div class="location-list">
                            <ul>
                                <li>Khu vui chơi Vietopia</li>
                                <li>Đại Học Cảnh sát nhân dân</li>
                                <li>Đại học Tôn Đức Thắng</li>
                            </ul>
                        </div>
                        <div class="location-minute">
                            <span><strong>10</strong> phút</span>
                        </div>
                    </div>
                    <div class="location-item">
                        <div class="location-list">
                            <ul>
                                <li>Đại học RMIT</li>
                                <li>Đại Học Cảnh sát nhân dân</li>
                                <li>Đại học Tôn Đức Thắng</li>
                            </ul>
                        </div>
                        <div class="location-minute">
                            <span><strong>15</strong> phút</span>
                        </div>
                    </div>
                    
                </div>
                <div class="location-img">
                    <img src="assets/images/img2.jpg" />
                </div>--%>
                <asp:ListView ID="lstVitri" runat="server" DataSourceID="odsVitri" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="location-box title-box">
                            <h1>
                                VỊ TRÍ CHIẾN LƯỢC <span>GIỮA LÒNG ĐÔ THỊ</span></h1>
                            <%# Eval("Content") %>
                        </div>
                        <div class="location-img">
                            <img id="Img1" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                runat="server" />
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsVitri" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
                        <asp:Parameter Name="ManufacturerID" Type="String" />
                        <asp:Parameter Name="OriginID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="InStock" Type="String" />
                        <asp:Parameter Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsBestSeller" Type="String" />
                        <asp:Parameter Name="IsSaleOff" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter Name="IsAvailable" Type="String" DefaultValue="true" />
                        <asp:Parameter Name="SortByPriority" Type="String" DefaultValue="true" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
        <div class="row row-nav" id="row4">
            <div class="utilities-box title-box">
                <h1>
                    TẬN HƯỞNG <span>TIỆN ÍCH VƯỢT TRỘI</span></h1>
                <div class="utilities-main">
                    <asp:ListView ID="lstTienIch" runat="server" DataSourceID="odsTienIch" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="utilities-item">
                                <div class="utilities-img">
                                    <img id="Img1" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" />
                                </div>
                                <div class="utilities-content">
                                    <h1>
                                        <%# Eval("ProductName") %></h1>
                                    <p>
                                        <%# Eval("Content") %>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsTienIch" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:Parameter DefaultValue="4" Name="CategoryID" Type="String" />
                            <asp:Parameter Name="ManufacturerID" Type="String" />
                            <asp:Parameter Name="OriginID" Type="String" />
                            <asp:Parameter Name="Tag" Type="String" />
                            <asp:Parameter Name="InStock" Type="String" />
                            <asp:Parameter Name="IsHot" Type="String" />
                            <asp:Parameter Name="IsNew" Type="String" />
                            <asp:Parameter Name="IsBestSeller" Type="String" />
                            <asp:Parameter Name="IsSaleOff" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter Name="IsAvailable" Type="String" DefaultValue="true" />
                            <asp:Parameter Name="SortByPriority" Type="String" DefaultValue="true" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
        <div class="row row-nav" id="row5">
            <div class="diagrams-all title-box">
                <h1>
                    MẶT BẰNG TỔNG THỂ <span>GREEN GARDEN</span></h1>
            </div>
            <asp:ListView ID="lstSoDoCanHo" runat="server" DataSourceID="odsSoDoCanHo" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="diagrams-main">
                        <div class="diagrams-img">
                            <img id="Img1" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                runat="server" />
                        </div>
                        <div class="diagrams-content">
                            <%# Eval("Content") %>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsSoDoCanHo" runat="server" SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter DefaultValue="5" Name="CategoryID" Type="String" />
                    <asp:Parameter Name="ManufacturerID" Type="String" />
                    <asp:Parameter Name="OriginID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="InStock" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="IsBestSeller" Type="String" />
                    <asp:Parameter Name="IsSaleOff" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter Name="IsAvailable" Type="String" DefaultValue="true" />
                    <asp:Parameter Name="SortByPriority" Type="String" DefaultValue="true" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="row row-nav" id="row6">
            <div class="news-main">
                <div class="news-title">
                    CHƯƠNG TRÌNH ƯU ĐÃI</div>
                <div class="new-box">
                    <asp:ListView ID="lstChuongTrinhUuDai" runat="server" DataSourceID="odsChuongTrinhUuDai" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item">
                                <div class="item-img">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-ud-" + Eval("ProductID") + ".aspx" %>'>
                                        <img id="Img1" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                            runat="server" /></a>
                                </div>
                                <div class="item-name">
                                    <%# Eval("ProductName")%></div>
                                <div class="description">
                                    <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 90) %></div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsChuongTrinhUuDai" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                            <asp:Parameter DefaultValue="6" Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:Parameter DefaultValue="7" Name="CategoryID" Type="String" />
                            <asp:Parameter Name="ManufacturerID" Type="String" />
                            <asp:Parameter Name="OriginID" Type="String" />
                            <asp:Parameter Name="Tag" Type="String" />
                            <asp:Parameter Name="InStock" Type="String" />
                            <asp:Parameter Name="IsHot" Type="String" />
                            <asp:Parameter Name="IsNew" Type="String" />
                            <asp:Parameter Name="IsBestSeller" Type="String" />
                            <asp:Parameter Name="IsSaleOff" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter Name="IsAvailable" Type="String" DefaultValue="true" />
                            <asp:Parameter Name="SortByPriority" Type="String" DefaultValue="true" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
        <div class="row row-nav" id="row7">
            <div class="news-main">
                <div class="news-title">
                    TIN TỨC - SỰ KIỆN</div>
                <div class="new-box">
                    <asp:ListView ID="lstNews" runat="server" DataSourceID="odsNews" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item">
                                <div class="item-img">
                                    <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                        <img id="Img1" alt='<%# Eval("ProductName") %> ' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                            runat="server" /></a>
                                </div>
                                <div class="item-name">
                                    <%# Eval("ProductName")%></div>
                                <div class="description">
                                    <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 90) %></div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsNews" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                            <asp:Parameter DefaultValue="6" Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:Parameter DefaultValue="6" Name="CategoryID" Type="String" />
                            <asp:Parameter Name="ManufacturerID" Type="String" />
                            <asp:Parameter Name="OriginID" Type="String" />
                            <asp:Parameter Name="Tag" Type="String" />
                            <asp:Parameter Name="InStock" Type="String" />
                            <asp:Parameter Name="IsHot" Type="String" />
                            <asp:Parameter Name="IsNew" Type="String" />
                            <asp:Parameter Name="IsBestSeller" Type="String" />
                            <asp:Parameter Name="IsSaleOff" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter Name="IsAvailable" Type="String" DefaultValue="true" />
                            <asp:Parameter Name="SortByPriority" Type="String" DefaultValue="true" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
        <div class="row row-nav" id="row8">
            <div class="library-main">
                <div class="library-title">
                    <h1>
                        THƯ VIỆN</h1>
                </div>
                <div class="library-box">
                    <asp:ListView ID="lstLibrary" runat="server" DataSourceID="odsLibrary" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="library-item">
                                <a href='<%# progressTitle(Eval("PhotoAlbumCategoryName")) + "-lib-" + Eval("PhotoAlbumCategoryID") + ".aspx" %>'>
                                    <div class="library-info">
                                        <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbumcategory/" + Eval("ImageName") %>'
                                            visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>'
                                            runat="server" />
                                        <div class="library-bg">
                                            <div class="library-icon">
                                                <img src="assets/images/icon.png" alt="icon" />
                                            </div>
                                            <div class="library-name">
                                                <%# Eval("PhotoAlbumCategoryName")%></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsLibrary" runat="server" SelectMethod="PhotoAlbumCategorySelectAll"
                        TypeName="TLLib.PhotoAlbumCategory">
                        <SelectParameters>
                            <asp:Parameter Name="PhotoAlbumCategoryName" Type="String" />
                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
        <div class="row row-nav" id="row9">
            <div class="contact-main">
                <div class="map-main">
                    <div id="mapshow">
                    </div>
                </div>
                <div class="contact-info">
                    <div class="row wrap-contact">
                        <div class="col-md-5">
                            <div class="address-contact">
                                <h4>
                                    MELOSA GARDEN</h4>
                                <p>
                                    <span class="fa fa-map-marker"></span>1648/8/2 Tỉnh Lộ 10 . Q.Bình Tân</p>
                                <p>
                                    <span class="fa fa-phone"></span>(08) 6280 5457( C.Thuận )</p>
                                <p>
                                    <span class="fa fa-envelope"></span><a href="mailto:info@canhomelosagarden.com">info@canhomelosagarden.com</a></p>
                                <p>
                                    <span class="fa fa-globe"></span><a target="_blank" href="http://www.canhomelosagarden.com/">www.canhomelosagarden.com</a></p>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="wrap-send">
                                <p>
                                    Vui lòng điền đầy đủ thông tin vào form bên dưới để liên hệ với chúng tôi.</p>
                                <div class="contact-w">
                                    <div class="contact-input">
                                        <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                                            WatermarkText="Họ &amp; Tên" TargetControlID="txtFullName">
                                        </asp:TextBoxWatermarkExtender>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                            Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtFullName"
                                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="contact-w">
                                    <div class="contact-input">
                                        <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                                            WatermarkText="Email" TargetControlID="txtEmail">
                                        </asp:TextBoxWatermarkExtender>
                                        <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                            runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Sai định dạng email!"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                            ForeColor="Red"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                            ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!"
                                            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="contact-w">
                                    <div class="contact-input">
                                        <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="txtPhone_WatermarkExtender" runat="server" Enabled="True"
                                            WatermarkText="Điện thoại" TargetControlID="txtPhone">
                                        </asp:TextBoxWatermarkExtender>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                            ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtPhone" ErrorMessage="Thông tin bắt buộc!"
                                            ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="contact-w">
                                    <div class="contact-input">
                                        <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                                            WatermarkText="Lời nhắn" TargetControlID="txtNoiDung">
                                        </asp:TextBoxWatermarkExtender>
                                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                            ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="contact-w">
                                            <div class="contact-input">
                                                <div class="wcodes">
                                                    <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                                    <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                                        Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                                    </asp:TextBoxWatermarkExtender>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="contact-w">
                                            <div class="contact-input">
                                                <div class="wcodes">
                                                    <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="SendEmail"
                                                        runat="server" ErrorMessage="+ Mã an toàn: không chính xác." ValidatedTextBoxID="txtVerifyCode"
                                                        Display="Dynamic">
                                                        <CaptchaImage Height="35" Width="135" RenderImageOnly="True" />
                                                    </asp:RadCaptcha>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="contact-w">
                                    <div class="contact-btn">
                                        <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="Gửi lời nhắn" ValidationGroup="SendEmail"
                                            OnClick="btGui_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
