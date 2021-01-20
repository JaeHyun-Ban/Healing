<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<style>
      * {
        box-sizing: border-box
      }

      body {
        font-family: "Lato", sans-serif;
      }

      /* Style the tab */
      .tab {
        float: left;
        border: 1px solid #ccc;
        background-color: #f1f1f1;
        width: 15%;
        height: 274px;

      }

      /* Style the buttons inside the tab */
      .tab button {
        display: block;
        background-color: inherit;
        color: black;
        padding: 22px 16px;
        width: 100%;
        border: none;
        outline: none;
        text-align: left;
        cursor: pointer;
        transition: 0.3s;
        font-size: 17px;
      }

      /* Change background color of buttons on hover */
      .tab button:hover {
        background-color: #ddd;
      }

      /* Create an active/current "tab button" class */
      .tab button.active {
        background-color: #ccc;
      }

      /* Style the tab content */
      .tabcontent {
        float: left;
        padding: 0px 12px;
        width: 70%;
        border-left: none;
        /* padding-top: 100px; */
      }

      /* ========================== */



      .tabcontent>ul,
      li {
        list-style: none;
      }

      .reserve {
        position: relative;
        height: 170px;
        border-bottom: 1px solid #7777;
        padding: 20px 20px 20px 200px;
        overflow: hidden;
      }

      .reserve>.left {
        float: left;
        width: 50%;
      }

      .reserve>.right {
        float: right;
        width: 50%;
      }

      .motelimg {
        position: absolute;
        top: 10px;
        left: 10px;
      }

      .motelimg>img {
        width: 150px;
        height: 150px;
      }



      .pagination {
        display: block;
        text-align: center;
      }

      .pagination>li>a {
        float: none;
        margin-left: -5px;
      }

      .title-foot {
        text-align: center;
      }
    </style>
    
    
    
    <div class="tab">
      <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">내정보</button>
      <button class="tablinks" onclick="openCity(event, 'Paris')">예약내역</button>
      <button class="tablinks" onclick="openCity(event, 'Tokyo')">후기</button>
      <button class="tablinks" onclick="openCity(event, 'my')">찜목록</button>
    </div>

    <div id="London" class="tabcontent">
      <h3 style="margin-bottom: 20px;">내정보</h3>

      <table class="table">
        <tbody class="m-control">
          <tr>
            <td class="m-title">*ID</td>
            <td><input type="text" class="form-control m-md"></td>
          </tr>
          <tr>
            <td class="m-title">*이름</td>
            <td><input type="text" class="form-control m-md"></td>
          </tr>

          <tr>
            <td class="m-title">*이메일</td>
            <td><input type="email" class="form-control m-md" style="display: inline; width: 50%;">@
              <select class="form-control m-sm" style="display: inline; width: 40%;">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
              </select>
            </td>
          </tr>
          <tr>
            <td class="m-title">*휴대폰</td>
            <td><input type="text" class="form-control m-sm" placeholder="010" style="display: inline; width: 32%;">-
              <input type="text" class="form-control m-sm" style="display: inline; width: 32%;">-
              <input type="text" class="form-control m-sm" style="display: inline; width: 32%;">
            </td>
          </tr>
          <tr>
            <td class="m-title">*주소</td>
            <td><input type="text" class="form-control"></td>
          </tr>
          <tr>
            <td class="m-title">*상세주소</td>
            <td><input type="text" class="form-control"></td>
          </tr>
        </tbody>
      </table>
      <hr>
      <div class="title-foot">
        <button type="button" class="btn">수정</button>
        <button type="button" class="btn">삭제</button>
      </div>
    </div>

    <div id="Paris" class="tabcontent">
      <h3>예약내역</h3>
      <hr style="margin-bottom: 10px;">
      <div class="my-content">
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>


      </div>
      <hr>
      <div class="container">
        <ul class="pagination">
          <li><a href="#" data-page="${pagevo.startPage-1}">이전</a></li>
          <li><a href="#">1</a></li>
          <li class="active"><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#" data-page="${pagevo.endPage+1}">다음</a></li>
        </ul>
      </div>

    </div>

    <div id="Tokyo" class="tabcontent">
      <h3>내가쓴 후기</h3>
      <hr style="margin-bottom: 10px;">
      <div class="my-content">
        <div class="reserve">
          <div class="motelimg">
            <img src="human.png" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span><em>9.0</em></span>
            </p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <p><strong>정말정말 추천해요~~</strong></p>
            <p>객실이 깨끗하고 좋네요</p>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="human.png" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span><em>9.0</em></span>
            </p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <p><strong>정말정말 추천해요~~</strong></p>
            <p>객실이 깨끗하고 좋네요</p>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="human.png" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span><em>9.0</em></span>
            </p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <p><strong>정말정말 추천해요~~</strong></p>
            <p>객실이 깨끗하고 좋네요</p>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="human.png" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span><em>9.0</em></span>
            </p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <p><strong>정말정말 추천해요~~</strong></p>
            <p>객실이 깨끗하고 좋네요</p>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="human.png" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span><em>9.0</em></span>
            </p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <p><strong>정말정말 추천해요~~</strong></p>
            <p>객실이 깨끗하고 좋네요</p>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="human.png" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span><em>9.0</em></span>
            </p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <p><strong>정말정말 추천해요~~</strong></p>
            <p>객실이 깨끗하고 좋네요</p>
          </div>
        </div>
      </div>
      <hr>

      <div class="container">
        <ul class="pagination">
          <li><a href="#" data-page="${pagevo.startPage-1}">이전</a></li>
          <li><a href="#">1</a></li>
          <li class="active"><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#" data-page="${pagevo.endPage+1}">다음</a></li>
        </ul>
      </div>
    </div>


    <div id="my" class="tabcontent">
      <h3>찜목록</h3>
      <hr style="margin-bottom: 10px;">
      <div class="my-content">
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>
        <div class="reserve">
          <div class="motelimg">
            <img src="98eee517dd344e7bfc4cb1dc1688e7eb.jpg" alt="">
          </div>
          <div class="left">
            <h4>종로h모텔</h4>
            <p>
              <span>
                <em>9.0</em>
              </span>
            </p>
            <p>예약날짜</p>
            <p>객실정보</p>
          </div>
          <div class="right">
            <h3 style="text-align: right;">38000원</h3>
          </div>
        </div>



      </div>
      <hr>

      <div class="container">
        <ul class="pagination">
          <li><a href="#" data-page="${pagevo.startPage-1}">이전</a></li>
          <li><a href="#">1</a></li>
          <li class="active"><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#" data-page="${pagevo.endPage+1}">다음</a></li>
        </ul>
      </div>
    </div>

    <script>
      function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
      }

      // Get the element with id="defaultOpen" and click on it
      document.getElementById("defaultOpen").click();
    </script>