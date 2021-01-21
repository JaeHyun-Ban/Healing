<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <style>
        body{
            font-size: 20px;
        }
        h3{margin: 0;}
        
        .filter-wrap {
        }
        .space{
            border: 1px solid #ddd;
            padding: 18px;
        }

        .list-wrap {
        }
        .head-check ul,li{
            list-style: none;
            margin: 0;
        }
        .head-check li{
            display: inline-block;
            background-color: #ddd;
            font-size: 25px;
            padding: 10px;
        }


        .product-list{
            border: 1px solid #ddd;
            padding: 10px;

        }
        .product-no{
            padding: 16px 0 16px 168px;
            position: relative;
            border-bottom: 1px solid #ddd;
        }
        .product-no .back-color{
            position: absolute;
            background-color:rgba(247, 238, 238, 0.8); 
            top: 0; 
            left: 0; 
            width: 100%; 
            height: 100%; 
            opacity: 0; 
            text-align: center; 
            color: white;
        }
        .product-no:hover> .back-color{
            opacity: 1;
            z-index: 10;
        }
        .product-no img{
            position: absolute;
            top: 16px;
            left: 10px;
            width: 150px;
            height: 227px;
        }

        .pro-right{
            text-align: right;
            padding-top: 60px;
        }

        .on{
            color: red;
        }
        .date-wrap{
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        

    </style>
    
    
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-4 filter-wrap">
                <div class="space">
                    <div class="date-wrap">
                        <h3 style="padding: 10px;">날짜</h3>
                        <div style="padding: 10px;">
                            <input type="text" id="datepicker1">일 ~
                            <input type="text" id="datepicker2">까지
                        </div>
                    </div>
                    <div class="check-wrap">
                        <h3 style="padding: 20px 10px;">상세조건</h3>
                        <div>
                            <button type="button" class="btn" style="width: 45%;">초기화</button>   
                            <button type="button" class="btn btn-danger" style="width: 45%;" id="btn1">적용</button>
                        </div>
                        <div style="padding: 10px;">
                            <form action="">
                                <h4>테마</h4>
                                <input type="radio" name="thema" checked value="">호텔<br>
                                <input type="radio" name="thema" value="">모텔<br>
                                <input type="radio" name="thema" value="">전체<br>
                                <hr>
                                <h4>거리설정</h4>
                                <input type="radio" name="range" checked>기준거리 <br>
                                <input type="radio" name="range">10km<br>
                                <input type="radio" name="range">20km<br>
                                <input type="radio" name="range">30km<br>
                                <hr>
                                <h4>가격</h4>
                                <p>
                                    <label for="amount">가격:</label>
                                    <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
                                  </p>
                                   
                                  <div id="slider-range"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-8 list-wrap">
                <div class="head-check">
                    <ul class="btn-wrap">
                        <li href="#" data-sort="distance" class="on">거리순</li>
                        <li href="#" data-sort="reco" class="">추천순</li>
                        <li href="#" data-sort="rowprice" class="">낮은가격순</li>
                        <li href="#" data-sort="highprice" class="">높은가격순</li>
                    </ul>


                    <!-- <div class="container">
                        <div class="btn-group btn-wrap">
                            <button type="button" data-sort="distance" class="btn btn-primary on">거리순</button>
                            <button type="button" data-sort="reco" class="btn btn-primary">추천순</button>
                            <button type="button" data-sort="rowprice" class="btn btn-primary">낮은가격순</button>
                            <button type="button" data-sort="highprice" class="btn btn-primary">높은가격순</button>
                        </div>
                    </div> -->
                </div>
                <div class="product-list">
                	<c:forEach items="${productlist}" var="product">
                    <div class="product-no">
                        <!-- <div class="back-color">
                            sadfsdf
                        </div> -->
                        <div>
                            <img src="display/${product.fileloca}/${product.filename}" >
                        </div>
                        <div class="pro-left">
                            <h3><a href="room_info?pro_no=${product.pro_no}">${product.name}</a></h3>
                            <span style="background-color: gold;"><em>9.0</em></span>
                            <strong>추천해요</strong>
                            <span>(244)</span>
                            <p>
                            	<span class="latlng"></span> |
                                <span>${product.basic_address}</span>
                            	<script>
                            		var lat1 =sessionStorage.getItem("lat1"); 
                            		var lng1 =sessionStorage.getItem("lng1")
                            		var lat2 = "${product.latitude}";
                            		var lng2 = "${product.hardness}";
                            		
                            		function getDistanceFromLatLonInKm(lat1,lng1,lat2,lng2) {
                            		
                            			function deg2rad(deg) {
                            		        return deg * (Math.PI/180)
                            		    }

                            		    var R = 6371; // Radius of the earth in km
                            		    var dLat = deg2rad(lat2-lat1);  // deg2rad below
                            		    var dLon = deg2rad(lng2-lng1);
                            		    var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.sin(dLon/2) * Math.sin(dLon/2);
                            		    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
                            		    var d = R * c; // Distance in km
                            		    
                            		    return d;
                            		}
                            		
                            		$(".latlng").html(getDistanceFromLatLonInKm(lat1,lng1,lat2,lng2));
                            	</script>
                                
                            </p>
                        </div>
                        <div class="pro-right">
                            <p>
                                <span style="background-color: rgb(243, 162, 162); color: white;">예약</span> 
                                <span>대실</span>
                                <strong>${product.half_price}</strong>
                            </p>
                            <p>
                                <span style="background-color: rgb(243, 162, 162); color: white;">예약</span>
                                <span>숙박</span>
                                <strong>${product.rental_price}</strong>
                            </p>
                        </div>
                    </div>
                   
                    </c:forEach>
                    
                </div>

            </div>
        </div>
    </div>
    
    <script>
        var wrap=document.querySelector(".btn-wrap")
        wrap.onclick = function(){
            
            event.preventDefault();
            if(event.target.localName != "li"){
                return;
            }
            var target=document.querySelector(".on")
            target.classList.remove("on")
            event.target.classList.add("on")
        }

        $(function(){
            $("#datepicker1").datepicker();
            $("#datepicker1").datepicker("option","dateFormat","yy-mm-dd")
            $("#datepicker2").datepicker();
            $("#datepicker2").datepicker("option","dateFormat","yy-mm-dd")
        })
        
    </script>
    <script>
        $( function() {
          $( "#slider-range" ).slider({
            range: true,
            min: 0,
            max: 30,
            values: [ 0, 30 ],
            slide: function( event, ui ) {
              $( "#amount" ).val( ui.values[ 0 ] + "만원 ~ " + ui.values[ 1 ] +"만원");
            }
          });
          $( "#amount" ).val($( "#slider-range" ).slider( "values", 0 ) +
            "만원 ~ " + $( "#slider-range" ).slider( "values", 1 )+"만원" );
        } );

        btn1.onclick = function(){
            var result=$("#amount").val().split(" ~ ")
            var score1=result[0].substring(0,result[0].indexOf("만"))
            var score2=result[1].substring(0,result[1].indexOf("만"))
            console.log(score1)
            console.log(score2)
        }
    </script>
    
    