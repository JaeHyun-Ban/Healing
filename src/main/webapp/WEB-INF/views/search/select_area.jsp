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
      width: 10%;
      height: 138px;

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
      
    }
    /* ================================ */
    ul{
        margin: 0; padding: 0;
    }
    li{
        list-style: none;
        border-bottom: 1px solid #ddd;
        padding: 25px 5px;
        
    }
    .space{
        overflow: hidden;
    }
    .space> .left{
        float: left;
    }
    .space> .right{
        float: right;
    }
    
  </style>
  
  
  
  <div class="tab">
    <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">서울</button>
    <button class="tablinks" onclick="openCity(event, 'Paris')">경기</button>
    
  </div>

  <div id="London" class="tabcontent">
    <ul class="seoul">
        <li class="space">
            <span class="left">강남</span>
            <span class="right">
                <i class="glyphicon glyphicon-chevron-right"></i>
            </span>
        </li>
        <li class="space">
            <span class="left">종로</span>
            <span class="right">
                <i class="glyphicon glyphicon-chevron-right"></i>
            </span>
        </li>
        <li class="space">
            <span class="left">강북</span>
            <span class="right">
                <i class="glyphicon glyphicon-chevron-right"></i>
            </span>
        </li>
        
    </ul>
    
  </div>

  <div id="Paris" class="tabcontent">
    <ul class="gyeonggi">
        <li class="space">
            <span class="left">수원</span>
            <span class="right">
                <i class="glyphicon glyphicon-chevron-right"></i>
            </span>
        </li>
        <li class="space">
            <span class="left">용인</span>
            <span class="right">
                <i class="glyphicon glyphicon-chevron-right"></i>
            </span>
        </li>
        
    </ul>
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

    <script>
        $(".seoul").on("click",function(){
          var big = "서울";
          var small = event.target.children[0].innerHTML
          
          
        })
        
        $(".gyeonggi").on("click",function(){
          var big = "경기";
          var small = event.target.children[0].innerHTML
          
        })


    </script>