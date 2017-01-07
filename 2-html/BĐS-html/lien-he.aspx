<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>SM</title>
    <meta name="description" content="SM" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row wrap-contact">
            <div class="col-md-6">
                <div class="address-contact">
                    <h4 class="text-uppercase">địa chỉ của chúng tôi</h4>
                    <p><span class="fa fa-map-marker"></span>702 Tên lửa, P. Bình Trị Đông B, Q.Bình Tân, Tp.HCM</p>                    <p><span class="fa fa-phone"></span>0907 440 881 ( A.Tấn ) - 0909 440 881 ( C.Thuận )</p>                    <p><span class="fa fa-envelope"></span><a href="mailto:giaydantuongsacmau@yahoo.com.vn">giaydantuongsacmau@yahoo.com.vn</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <h4 class="text-uppercase">Chúng tôi có thể giúp gì cho bạn ?</h4>
                            <div class="contact-w">
                                <label class="contact-lb">Họ &amp; Tên</label>
                                <div class="contact-input">
                                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder="Họ &amp; Tên"></asp:TextBox>
                                </div>
                            </div>
                            <div class="contact-w">
                                <label class="contact-lb">Email</label>
                                <div class="contact-input">
                                    <asp:TextBox ID="TextBox1" CssClass="contact-textbox" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                    <div class="contact-w">
                        <label class="contact-lb">Lời nhắn</label>
                        <div class="contact-input">
                            <asp:TextBox ID="TextBox2" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Lời nhắn"></asp:TextBox>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-btn">
                            <asp:button ID="Button1" CssClass="button-btn" runat="server" text="Gởi lời nhắn" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <div id="mapshow"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMenuMobile" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" Runat="Server">
</asp:Content>

