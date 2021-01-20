<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    
    <style>

        html,
        body {
            position: relative;
            height: 100%;
        }

        body {
            background: white;
            font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
            font-size: 14px;
            color: #000;
            margin: 0;
            padding: 0;
        }

        .swiper-container {
            width: 100%;
            height: 31%;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: white;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
            overflow: hidden;
        }
        .swiper-slide>img{
            max-width: 100%;
            height: auto;
            display: block;
        }


        /* ========객실======== */
        .room {
            padding: 20px 20px 20px 330px;
            border: 1px solid #ddd;
            position: relative;
            margin-bottom: 20px;
        }

        .room-img {
            position: absolute;
            top: 20px;
            left: 20px;
        }
        .room-img img{
            height: 172px;
            width: 300px;
        }

        .room-content {
            overflow: hidden;
        }

        .room-content>.left {
            float: left;
            width: 50%;
            box-sizing: border-box;
            padding: 10px;

        }

        .room-content>.right {
            float: right;
            width: 50%;
            box-sizing: border-box;
        }

        .room-content>.left>.reserve {
            text-align: right;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }

        .re-time {
            overflow: hidden;
        }

        .re-time>.left {
            float: left;
        }

        .re-time>.right {
            float: right;
        }

        .re-time span {
            display: block;
            padding-bottom: 3px;
        }

        /* =========슬라이드========== */
        .guest-content{
            overflow: hidden;
            margin-top: 20px;
        }
        
        .guest-content .load-info{
            border: 1px solid #ddd;
            text-align: center;
            height: 200px;
            
        }
        
        .guest-content .map{
            border: 1px solid #ddd;
            text-align: center;
            height: 200px;

         }
        



        /* ========리뷰======== */
        .review ul,
        li {
            list-style: none;
        }

        .score-top {
            text-align: center;
            padding: 30px 0;
            border-bottom: 1px solid #ddd;
        }

        .pic {
            padding: 20px 20px 20px 100px;
            position: relative;
            border-bottom: 1px solid #ddd;
        }

        .pic .img {
            position: absolute;
            top: 10px;
            left: 10px;
        }

        
        /* ==========댓글등록 ================*/
        .reply-group input{width:180px;margin-bottom: 10px;}
        .reply-wrap{background-color: #f5f5f5; border: 1px solid #ddd; padding: 20px; }

        
        .reply-content{
            padding-left: 60px;
            position: relative;
        }
        .reply-img{
            position: absolute; 
            top: 10px; 
            left: 10px;}
        
        .fileDiv{padding-left: 60px;}

        .reply-group{
            overflow: hidden; 
            padding-top: 20px;
        }
        .reply-group .left{float: left;}
        .reply-group .right{float: right}
        
        /*텍스트영역 리사이징 옵션, 에니메이션*/
        .reply-content textarea{resize: none; height: 100px; transition: height 0.5s ease-in-out;} /*에니메이션 효과(변경할속성,지속시간,에니메이션방식,딜레이초)*/
        .reply-content textarea:focus{height: 200px;}

        /*댓글 코멘트 영역 - 위 클래스를 재활용*/
        .reply-group a{text-decoration: none; color:#7777;}
        .reply-group p{margin: 0;}

        /* =======별점 */
        #star_grade a{
        text-decoration: none;
        color: gray;
        font-size: 30px;
        }
        #star_grade a.on{
            color: darkgoldenrod;
        }

        @media (max-width: 767px){
            .room-img{
                display: none;
            }
            .room{
                padding: 10px;
            }
            .swiper-container{
                display: none;
            }
        }

    </style>
    
    
    
    
    
    
    <div class="container">
        <h2>Dynamic Tabs</h2>
        <p>To make the tabs toggleable, add the data-toggle="tab" attribute to each link. Then add a .tab-pane class
            with a unique ID for every tab and wrap them inside a div element with class .tab-content.</p>

        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home">객실</a></li>
            <li><a data-toggle="tab" href="#menu1">숙소정보</a></li>
            <li><a data-toggle="tab" href="#menu2">리뷰</a></li>

        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <div class="room">
                    <div class="room-img">
                        <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg">
                    </div>
                    <div>
                        <strong>스탠다드</strong>
                    </div>
                    <div class="room-content">
                        <div class="left" style="border-right: 1px solid #7777;">
                            <p>대실</p>
                            <div class="reserve">
                                <span>예약</span>
                                <b style="color: red;">20000원</b>
                            </div>
                            <div class="re-time">
                                <div class="left">
                                    <span>마감시간</span>
                                    <span>이용시간</span>
                                </div>
                                <div class="right">
                                    <span>22시까지</span>
                                    <span>8시간</span>
                                </div>
                            </div>
                            <div>
                                <button type="button" class="btn btn-danger" style="width: 100%;">예약하기</button>
                            </div>
                        </div>
                        <div class="left">
                            <p>숙박</p>
                            <div class="reserve">
                                <span>예약</span>
                                <b style="color: red;">20000원</b>
                            </div>
                            <div class="re-time">
                                <div class="left">
                                    <span>마감시간</span>
                                    <span>이용시간</span>
                                </div>
                                <div class="right">
                                    <span>22시까지</span>
                                    <span>8시간</span>
                                </div>
                            </div>
                            <div>
                                <button type="button" class="btn btn-danger" style="width: 100%;">예약하기</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="room">
                    <div class="room-img">
                        <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg">
                    </div>
                    <div>
                        <strong>스탠다드</strong>
                    </div>
                    <div class="room-content">
                        <div class="left" style="border-right: 1px solid #7777;">
                            <p>대실</p>
                            <div class="reserve">
                                <span>예약</span>
                                <b style="color: red;">20000원</b>
                            </div>
                            <div class="re-time">
                                <div class="left">
                                    <span>마감시간</span>
                                    <span>이용시간</span>
                                </div>
                                <div class="right">
                                    <span>22시까지</span>
                                    <span>8시간</span>
                                </div>
                            </div>
                            <div>
                                <button type="button" class="btn btn-danger" style="width: 100%;">예약하기</button>
                            </div>
                        </div>
                        <div class="left">
                            <p>숙박</p>
                            <div class="reserve">
                                <span>예약</span>
                                <b style="color: red;">20000원</b>
                            </div>
                            <div class="re-time">
                                <div class="left">
                                    <span>마감시간</span>
                                    <span>이용시간</span>
                                </div>
                                <div class="right">
                                    <span>22시까지</span>
                                    <span>8시간</span>
                                </div>
                            </div>
                            <div>
                                <button type="button" class="btn btn-danger" style="width: 100%;">예약하기</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="room">
                    <div class="room-img">
                        <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg">
                    </div>
                    <div>
                        <strong>스탠다드</strong>
                    </div>
                    <div class="room-content">
                        <div class="left" style="border-right: 1px solid #7777;">
                            <p>대실</p>
                            <div class="reserve">
                                <span>예약</span>
                                <b style="color: red;">20000원</b>
                            </div>
                            <div class="re-time">
                                <div class="left">
                                    <span>마감시간</span>
                                    <span>이용시간</span>
                                </div>
                                <div class="right">
                                    <span>22시까지</span>
                                    <span>8시간</span>
                                </div>
                            </div>
                            <div>
                                <button type="button" class="btn btn-danger" style="width: 100%;">예약하기</button>
                            </div>
                        </div>
                        <div class="left">
                            <p>숙박</p>
                            <div class="reserve">
                                <span>예약</span>
                                <b style="color: red;">20000원</b>
                            </div>
                            <div class="re-time">
                                <div class="left">
                                    <span>마감시간</span>
                                    <span>이용시간</span>
                                </div>
                                <div class="right">
                                    <span>22시까지</span>
                                    <span>8시간</span>
                                </div>
                            </div>
                            <div>
                                <button type="button" class="btn btn-danger" style="width: 100%;">예약하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div id="menu1" class="tab-pane fade">
                <div>
                    호텔객실사진
                </div>
                <!-- Swiper -->
                <div class="swiper-container" style="padding-top: 10px;">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        <div class="swiper-slide">
                            <img src="e13e9ca5a6796ccd14841168f0de4b64.jpg" >
                        </div>
                        
                    </div>


                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>

                <div class="container guest-content">
                    <div class="row">
                        <div class="col-sm-12 col-md-6 load-info">
                            <p>오시는길</p>
                            
                        </div>
                        <div class="col-sm-12 col-md-6 map">
                            <p>지도</p>
                            
                        </div>
                    </div>
                </div>

                


            </div>



            <div id="menu2" class="tab-pane fade">
                <div class="review">
                    <div class="score-top">
                        <strong style="padding-bottom: 10px;">추천해요</strong>

                        <div class="score-wrap">
                            <div class="score-star star-45"></div>
                            <div class="num">9.0</div>
                        </div>
                        <p>전체리뷰:333</p>
                    </div>

                    <ul style="padding: 0;">
                        <li class="pic">
                            <div class="img">
                                <img src="human.png" alt="">
                            </div>
                            <p>
                                <strong>제목</strong>
                            </p>
                            <div class="score-wrap">
                                <div class="score-star star-45"></div>
                                <div class="num">9.0</div>
                            </div>
                            <div class="name">
                                <b>스탠다드 객실이용고객.</b>
                                <strong>회원id</strong>
                            </div>
                            <div class="txt">
                                객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.
                            </div>
                            <div class="date">
                                <span>2시간전</span>
                            </div>
                        </li>
                        <li class="pic">
                            <div class="img">
                                <img src="human.png" alt="">
                            </div>
                            <p>
                                <strong>제목</strong>
                            </p>
                            <div class="score-wrap">
                                <div class="score-star star-45"></div>
                                <div class="num">9.0</div>
                            </div>
                            <div class="name">
                                <b>스탠다드 객실이용고객.</b>
                                <strong>회원id</strong>
                            </div>
                            <div class="txt">
                                객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.
                            </div>
                            <div class="date">
                                <span>2시간전</span>
                            </div>
                        </li>
                        <li class="pic">
                            <div class="img">
                                <img src="human.png" alt="">
                            </div>
                            <p>
                                <strong>제목</strong>
                            </p>
                            <div class="score-wrap">
                                <div class="score-star star-45"></div>
                                <div class="num">9.0</div>
                            </div>
                            <div class="name">
                                <b>스탠다드 객실이용고객.</b>
                                <strong>회원id</strong>
                            </div>
                            <div class="txt">
                                객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.객실이너무좋네요.
                            </div>
                            <div class="date">
                                <span>2시간전</span>
                            </div>
                        </li>
                    </ul>
                    


                </div>
                <div class="writer">
                    <form action="#" class="reply-wrap">
                        <div class="fileDiv">
                            <img id="fileImg" src="../resources/img/img_ready.png">
                        </div>
                        <div class="reply-content">
                            <div class="reply-img">
                                <img src="img/human.png">
                            </div>
                            <p id="star_grade">
                                <a href="#" data-star="1">★</a>
                                <a href="#" data-star="2">★</a>
                                <a href="#" data-star="3">★</a>
                                <a href="#" data-star="4">★</a>
                                <a href="#" data-star="5">★</a>
                                <span style="font-size: 20px;">나의별점:</span>
                                <strong id="star-result" style="font-size: 20px;"></strong>
                                <input type="hidden" name="">
                            </p>
                            
                            
                            <input type="text" class="form-control" placeholder="제목을 입력하세요" name="title" style="width: 50%;">
                            <br>
                            <textarea class="form-control" rows="5" id="comment"></textarea>
                            <div class="reply-group"> <!-- 부모상자 -->
                                <div class="filebox left">
                                    <label for="file">이미지업로드</label> 
                                    <input type="file" name="file" id="file">
                                </div>
                                <button class="right btn btn-info">등록하기</button>
                            </div>
                        </div>
                    </form>
                    
                    
                </div>

            </div>

        </div>
    </div>

    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 3,
            spaceBetween: 30,
            slidesPerGroup: 3,
            observer: true,  // true 로 설정할 경우 슬라이더가 불러올때마다 새로고침되는 역할
            observeParents: true, //
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>

    <script>
        $('#star_grade a').click(function(){
            $(this).parent().children("a").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
            $(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
            $("#star-result").html(event.target.dataset.star)
        });
    </script>
    