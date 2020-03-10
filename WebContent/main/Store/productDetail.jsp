<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HobbyFactory : product-detail</title>

    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <style media="screen">
      body{height:100%; margin:0px; padding:0px; position:relative; min-width:1820px;}
      ul li{list-style:none;}
      a{text-decoration:none; color:black;}
      div{display:block;}
      p{margin:0px;}

      wrap{width:1280px; margin:0 auto;}
        .info-wrap{margin-top:50px;}
          .class-image{width:900px; height:500px;  position:relative; left:-120px;}
            .move_image{position: relative; left:0px; bottom:61px; height:550px; padding-top:60px;}
              .visual{position:relative;}
              .visual button{position:absolute; z-index:10; left:97%; top:50%; transform:translate(-30%, -50% );
                            width:50px; height:50px; border-radius:100%; background-color:rgba(0,0,0,0); border:none; }
              .visual button:before{font-family:'xeicon'; color:black; font-size:45px; }
              .visual button.slick-prev{left:0px; font-size:0; color:transparent; outline:none;}
              .visual button.slick-prev:before{content:"\e93d"; outline:none;}
              .visual button.slick-next{right:0px; font-size:0; color:transparent; outline:none;}
              .visual button.slick-next:before{content:"\e940"; outline:none;}

          .class-info{position:absolute; left:760px; top:200px;}
            .host-name{color:gray;}
            .class-name{font-size:30px; margin-top:5px;}
            .price-wrap{margin-top:20px;}
              .day{font-size:20px; font-weight:400;}
              .price{font-size:35px; font-weight:900;}
            .line{border-bottom:1px solid #d2d2d2; width:580px; margin:20px 0;}
              .mileage{font-size:13px; font-weight:900; margin-right:50px;}
              .mileage-point{font-size:13px; font-weight:900; color:gray;}
              .trans{font-size:13px; font-weight:900; margin-right:93px;}
            .select-pdt{margin-top:50px; width:580px; height:50px; font-size:20px;}
            .buy{width:524px; height:50px; margin-top:20px; background-color: #FA5882; border:none; font-size:20px;
                border:1px solid black; outline: none; cursor: pointer;}
            .star{width:50px; height:50px; border:1px solid gray; background-color: white; outline: none;
                  cursor: pointer;}
            .xi-star-o{font-size:22px;}

      .tab-wrap{width:1280px; margin:0 auto;}
        .tab{text-align:center; margin-top:100px; font-size:20px; font-weight:400;
            border-bottom:1px solid #d2d2d2;
            width:1580px;
            position:relative; left:-150px;
            padding:20px 0px 20px 0px;}
          .tab a{margin:0px 200px;}
          .tab a:hover{border-top:3px solid black;
                       border-bottom:3px solid black;
                       padding:20px 0px 20px 0px;}

      .iframe-wrap{width:100%;}
        .iframe-setting{margin:40px 0px 0px 0px; padding:0; outline:none; scroll:none; }

    </style>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  </head>
  <body>

    <div class="wrap">

      <div class="info-wrap">
          <div class="class-image">
            <div class="move_image">
              <section class="visual">
                <div class="bg1"><img src="../image/pdtdetail1.jpg" style="border:1px solid #fff; height:500px; width:900px;" alt=""></div>
                <div class="bg2"><img src="../image/pdtdetail2.jpg" style="border:1px solid #fff; height:500px; width:900px;" alt=""></div>
                <div class="bg3"><img src="../image/pdtdetail3.jpg" style="border:1px solid #fff; height:500px; width:900px;" alt=""></div>
                <div class="bg6"><img src="../image/pdtdetail6.jpg" style="border:1px solid #fff; height:500px; width:900px;" alt=""></div>
                <div class="bg7"><img src="../image/pdtdetail7.jpg" style="border:1px solid #fff; height:500px; width:900px;" alt=""></div>
                <div class="bg8"><img src="../image/pdtdetail8.jpg" style="border:1px solid #fff; height:500px; width:900px;" alt=""></div>
                <div class="bg9"><img src="../image/pdtdetail9.jpg" style="border:1px solid #fff; height:500px; width:900px;" alt=""></div>
              </section>
            </div>
          </div>

          <!--image slied-->
          <script type="text/javascript">
            $('.visual').slick({
              autoplay: true,
              autoplaySpeed: 3000,
              fade: true
            });
          </script>

          <div class="class-info">
            <ul>
              <li class="host-name">[노플랜 노프로젝트]</li>
              <li class="class-name">라탄으로 이불 톡톡</li>
              <li class="price-wrap"><span class="price">21,000</span><span class="day">원</span></li>
              <li class="line"></li>
              <li><span class="mileage">적립 마일리지</span><span class="mileage-point">최대2,100p</span></li>
              <li><span class="trans">배송비</span><span class="mileage-point">무료배송(도서산간지역 제외)</span></li>
              <li>
                <select class="select-pdt" name="">
                  <option value="">상품을 선택해주세요.</option>
                  <option value="">라탄으로 이불 톡톡</option>
                </select>
              </li>
              <li><button class="star" type="button" name="button"><i class="xi-star-o"></i></button>
                  <button class="buy" type="button" name="button">구매하기</button></li>
            </ul>
          <!-- class-info -->
          </div>
      <!-- info-wrap  -->
      </div>

      <div class="tab-wrap">
        <div class="tab">
          <a href="?page=productDetail&page2=pdtintro">상품소개</a>
          <a href="?page=productDetail&page2=pdtreview">구매후기</a>
          <a href="?page=productDetail&page2=pdtrefund">배송/교환/환불</a>
        <!-- tab  -->
        </div>
      <!-- tab-wrap  -->
      </div>

      <div>
<%
		String pl2=null;
		pl2 = request.getParameter("page2");
		if(pl2==null){
%>
		<%@include file="pdtintro.jsp" %>
<%		}else{
		if(pl2.equals("pdtintro")){
%>
		<%@include file="pdtintro.jsp"%>
<%		}
		if(pl2.equals("pdtreview")){
%>
		<%@include file="pdtreview.jsp"%>
<%		}
		if(pl2.equals("pdtrefund")){
%>
		<%@include file="pdtrefund.jsp"%>
<%			
		}		
} 
%>
      </div>

    <!-- wrap  -->
    </div>

  </body>
</html>
