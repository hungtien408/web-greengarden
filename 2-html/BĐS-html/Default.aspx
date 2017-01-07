<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Bất động sản</title>
    <meta name="description" content="Bất động sản" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
           
    <div id="content-wrap">    
    	<div class="row row-nav" id="row1">
          <div class="banner-slider">
              <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                  <!-- Wrapper for slides -->
                  <div class="carousel-inner" role="listbox">
                    <div class="item active" data-img="assets/images/banner1.jpg"></div>
                    <div class="item" data-img="assets/images/banner1.jpg"></div>
                  </div>

                  <!-- Controls -->
                  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
              <div class="scroll_play_wave_button">
                <div class="pulse_holder">
				    <div class="pulse_marker">
					    <a href="javascript:void(0);" class="scroll_cir">
						    <div class="scroll_cir2"></div>
						    <span class="percentage">Scroll</span>
						    <div class="cir0"></div>
						    <div class="cir1"></div>
						    <div class="cir2"></div>
						    <div class="cir3"></div>
						    <div class="cir4"></div>
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
                        <li role="presentation" class="active"><a href="#gioithieu" data-toggle="tab">GIỚI THIỆU DỰ ÁN</a></li>
                        <li role="presentation"><a href="#chudautu" data-toggle="tab">CHỦ ĐẦU TƯ</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="gioithieu">
                        <div class="tab-box">
                            <h1>Tổng quan dự án</h1>
                            <ul>
                                <li>
                                    <div class="li-img">
                                        <img src="assets/images/li1.png" />
                                    </div>
                                    <div class="li-box">
                                        <span>Diện tích khu đất</span><span><b> 8,569 m<sup>2</sup></b></span>
                                    </div>
                                </li>
                                 <li>
                                    <div class="li-img">
                                        <img src="assets/images/li1.png" />
                                    </div>
                                    <div class="li-box">
                                        <span>Mật độ xây dựng</span><span><b> 39.9%</b></span>
                                    </div>
                                </li>
                                 <li>
                                    <div class="li-img">
                                        <img src="assets/images/li1.png" />
                                    </div>
                                    <div class="li-box">
                                        <span>Không gian xanh</span><span><b>5,689 m<sup>2</sup></b></span>
                                    </div>
                                </li>
                                 <li>
                                    <div class="li-img">
                                        <img src="assets/images/li1.png" />
                                    </div>
                                    <div class="li-box">
                                        <span>Diện tích xây dựng</span><span> <b>5,689 m<sup>2</sup></b></span>
                                    </div>
                                </li>
                                 <li>
                                    <div class="li-img">
                                        <img src="assets/images/li1.png" />
                                    </div>
                                    <div class="li-box">
                                        <span>Diện tích xây dựng</span><span> <b>5,689 m<sup>2</sup></b></span>
                                    </div>
                                </li>
                                 <li>
                                    <div class="li-img">
                                        <img src="assets/images/li1.png" />
                                    </div>
                                    <div class="li-box">
                                        <span>Số blcok & Tầng cao</span><span><b>4</b> block & <b>16</b> tầng</span>
                                    </div>
                                </li>
                            </ul>
                            <div class="tienich">
                                <h1>TIỆN ÍCH</h1>
                                <p>Hồ bơi người lớn, Nhà trẻ, Khu sinh hoạt cộng đồng, Bãi đậu xe, Thang máy, Khu vực kỹ thuật, Đài phun nước, Cafe sân vườn, Phòng tập Gym, Ghế nằm thư giãn, </p>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="chudautu">
                        <div class="tab-box">
                            <h1>Tổng quan dự án1</h1>
                            
                        </div>
                    </div>
                    </div>
                </div>
                <div class="overview-img">
                    <img src="assets/images/img1.jpg" />
                </div>
            </div>
    	</div>
        <div class="row row-nav" id="row3">
           <div class="location-main">
               <div class="location-box title-box">
                   <h1>VỊ TRÍ CHIẾN LƯỢC <span>GIỮA LÒNG ĐÔ THỊ</span></h1>
                   <p>Green Garden mang đến một cuộc sống vẹn toàn không chỉ từ tiện nghi bên trong căn hộ mà còn từ vị trí kết nối toàn khu vực. Từ đây, cư dân chỉ mất khoảng 5 phút để vào trung tâm Quận 1 và Khu đô thị Phú Mỹ Hưng, đồng thời dễ dàng tận hưởng những tiện ích hàng đầu chỉ trong bán kính 2km.</p>
                   <p>Với vị trí đắc địa bên dòng sông xanh thanh bình của khu Trung Sơn, Green Garden tạo nên một cuộc sống trong lành, xanh mát ngay giữa Sài Gòn nhộn nhịp, mang đến sức khỏe cho cư dân.</p>
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
               </div>
               
           </div>
    	</div>
        <div class="row row-nav" id="row4">
            <div class="utilities-box title-box">
                <h1>TẬN HƯỞNG <span>TIỆN ÍCH VƯỢT TRỘI</span></h1>
                <div class="utilities-main">
                    <div class="utilities-item">
                        <div class="utilities-img">
                             <img src="assets/images/img3.jpg" />
                        </div>
                        <div class="utilities-content">
                            <h1>Hồ bơi nghỉ dưỡng rộng lớn</h1>
                            <p>Một ngày trôi qua, thanh thản trút bỏ những lo toan thường nhật của cuộc sống, trở về với thế giới riêng đầm ấm của mình, thỏa nguyện với những gì đang có và tự hào khi nghĩ về tương lai. Với Him Lam Phú Đông, bạn sẽ có một trải nghiệm thật khác biệt. Đó không chỉ là một nơi an cư sang trọng tiện nghi mà còn thực sự là một nơi nghỉ dưỡng với hồ bơi rộng lớn được đầu tư dành riêng cho cư dân</p>
                        </div>
                    </div>
                     <div class="utilities-item">
                        <div class="utilities-img">
                             <img src="assets/images/img4.jpg" />
                        </div>
                        <div class="utilities-content">
                            <h1>Khu vui chơi dành cho trẻ em</h1>
                            <p>Là cha mẹ, bạn luôn cố gắng chọn những điều tốt nhất cho con. Để con trẻ được sống trong giấc mơ tuổi thơ, có điều kiện học tập lý tưởng nhất, không gian giải trí độc đáo, bên cạnh sự chăm sóc sức khỏe tối ưu nhất.  Tiện ích không thể thiếu đặc biệt được chú trọng dành cho con yêu của bạn là sân chơi trong nhà và khu thể thao ngoài trời giúp trẻ phát triển toàn diện về thể chất và tinh thần.</p>
                        </div>
                    </div>
                </div>
            </div>
    	</div>
       <div class="row row-nav" id="row5">
           <div class="diagrams-all title-box">
               <h1>MẶT BẰNG TỔNG THỂ <span>GREEN GARDEN</span></h1>
           </div>
           <div class="diagrams-main">
               <div class="diagrams-img">
                   <img src="assets/images/img5.jpg" />
               </div>
               <div class="diagrams-content">
                   <ul>
                       <li><span>1</span> Hồ bơi người lớn</li>
                       <li><span>2</span> Hồ bơi trẻ em</li>
                       <li><span>3</span> Khu vui chơi trẻ em</li>
                       <li><span>4</span> Ghế nằm thư giản</li>
                       <li><span>5</span> Sân vườn</li>
                       <li><span>6</span> Hồ bơi người lớn</li>
                       <li><span>7</span> Hồ bơi trẻ em</li>
                       <li><span>8</span> Khu vui chơi trẻ em</li>
                       <li><span>9</span> Ghế nằm thư giản</li>
                       <li><span>10</span> Sân vườn</li>
                       <li><span>11</span> Hồ bơi người lớn</li>
                       <li><span>12</span> Hồ bơi trẻ em</li>
                       <li><span>13</span> Khu vui chơi trẻ em</li>
                       <li><span>14</span> Ghế nằm thư giản</li>
                       <li><span>15</span> Sân vườn</li>
                       <li><span>16</span> Hồ bơi người lớn</li>
                       <li><span>17</span> Hồ bơi trẻ em</li>
                       <li><span>18</span> Khu vui chơi trẻ em</li>
                   </ul>
               </div>
           </div>
    	</div>
        
   </div>
             
</asp:Content>



