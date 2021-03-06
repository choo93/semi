<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="semi.festival.model.vo.*" import="java.util.*" %>
<% 	
FestivalPageData fpd = (FestivalPageData)request.getAttribute("pageData");
ArrayList<Festival> list = fpd.getFestivalList();
String pageNavi = fpd.getPageNavi();
String seasons = null;
switch(list.get(0).getFestivalSeason())
{
case "spring" : seasons = "봄 축제"; break;
case "summer" : seasons = "여름 축제"; break;
case "fall" : seasons = "가을 축제"; break;
case "winter" : seasons = "겨울 축제"; break;
}

%>

    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
<title>Seoulaim - 축제&행사 - 리스트</title>
		<link rel="icon" href="../../image/main/favicon.ico">
		
		
        <link rel="stylesheet" href="../../css/festival/moreBtn.css">

        <script src="../../js/jquery-3.3.1.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
        <script src="../../js/main.js"></script>
        <script>
        	
               function send(index) {
                   location.href = "/festivalSelect?titleNo="+index;
               };
            
        </script>

    </head>
    
    
    
    
    
    <style>
        .photo {
            background-repeat: no-repeat;
            background-size: 100% 100%;
            height: 200px;
            border-radius: 12px;
        }

        .info {
            width: 800px;
            height: 200px;
            margin-left: 20px;
            border: 1px solid #3071a9;
            border-width: 2px 20px 2px 2px;
        }

        .title {
            font: bold 20pt 나눔스퀘어;
            margin-top: 10px;
            margin-left: 10px;
        }

        .content {
            padding: 20px;
            clear: left;
        }

        .contents {
            padding: 5px;
            margin-top: 10px;
            margin-left: 10px;
        }

        .tags {
            padding: 5px;
            margin-top: 10px;
            margin-left: 10px;
            display: inline-block;
        }
        .ptags {
            display: inline;
        }
        #button {
            margin-top: 20px;
        }
        hr {
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .font {
			color: #3071a9;
			text-shadow: 1px -1px 1px black, -1px 2px 2px white;
			margin-bottom: 10px;
			font: italic bold 3.3rem "나눔스퀘어";
			overflow: hidden;
			text-overflow: ellipsis;
			margin-top:0px;
			padding-top:20px;
			padding-bottom:20px;
		}
		.wrapper{
			width:1662px;
			margin:0 auto;
		}

    </style>

    <body id="scroll">
 <%@ include file="/views/main/header.jsp"%>
            <section>
            <div class="wrapper">
                <div id="head" class="container-fulid">
                <h1 class="font" style="text-align: center;"><%=seasons %></h1>
                </div>
                <hr>


                <!-- 내용물 -->
              
                <div class="container">

                    <!-- 첫번째 컨텐츠 -->
                    <%for(Festival f : list) { %>
                    <div class="row">
                        <div class="col-xs-12 content" id="list">
                            <!-- 첫번째 내용 -->
                            <div class="row">
                                <!-- 첫번째 사진 -->
                                <div class="col-xs-3 photo" style="background-image: url(<%=f.getFestivalMainImg()%>)"></div>

                                <div class="col-xs-6 col-xs-offset-3 info">
                                    <!-- 첫번째 컨텐츠 제목 -->
                                    <div class="title">
                                     <%int titlesu=f.getFestivalTitle().length();%>
                                        <%if(titlesu>25) {%>
                                            <%=f.getFestivalTitle().substring(0,25)%>...
                                            
                                        <%}else{%>
                                            <%=f.getFestivalTitle()%>
                                        <%}%>
                                        
                                    </div>
                                    <hr>
                                    <!-- 첫번째 컨텐츠 설명 -->
                                    <div class="contents">
                                        <%int contentsu=f.getFestivalBasicInfo().length();%>
                                        <%if(contentsu>100) {%>
                                            <%=f.getFestivalBasicInfo().substring(0,100)%>.....
                                            
                                        <%}else{%>
                                            <%=f.getFestivalBasicInfo()%>
                                        <%}%>
                                    </div>
                                    <!-- 첫번째 컨텐츠 태그 -->
                                    <%if(f.getFestivalTag()!=null){ %>
                                    <div class="tags">
                                        <p class="ptags">태그</p>
                                        <div style="display: inline;">
                                        <%StringTokenizer sT = new StringTokenizer(f.getFestivalTag(),"#");%>
                                        <%int su1 = sT.countTokens();%>
                                        <%if(su1<6){ %>                                
                                            <%for(int i=0;i<su1;i++){ %>
                                             <a href="#">#<%=sT.nextToken() %></a>
                                         	<%}%>
                                        <%}else{%>
                                        <%for(int i=0;i<6;i++){%>
                                        <a href="#">#<%=sT.nextToken() %></a>
										<%}
                                        }%>                   
                                        </div>
                                    </div>
                                    <%} %>
                                    <button class="btn pull-right" id="button" onclick="send(<%=f.getTitleNo()%>);">자세히</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%} %>
                 

               <!--      두번째 컨텐츠
                    <div class="row">
                        <div class="col-xs-12 content" id="list_2">
                            <div class="row">
                                <div class="col-xs-3 photo" style="background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18795&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                                <div class="col-xs-6 col-xs-offset-3 info">
                                    <div class="title">
                                        아원공방
                                    </div>
                                    <hr>
                                    <div class="contents">
                                        1983년도에 개업한 은 금속으로 공예를 만드는 공방이다. 30년 이상 이어온 오랜 시간 동안 많은 사랑을 받아왔다.
                                        <br> 만들어진 공예작품 하나하나에는 정성이 담겨 있으며, 차가운 금속의 따스함을 느끼게 한다.
                                    </div>
                                    <div class="tags">
                                        <p class="ptags">태그</p>
                                        <div style="display: inline;">
                                            <a href="#">#아원공방</a>
                                            <a href="#">#아원공방</a>
                                            <a href="#">#아원공방</a>
                                            <a href="#">#아원공방</a>
                                            <a href="#">#아원공방</a>
                                            <a href="#">#아원공방</a>
                                        </div>
                                        
                                    </div>
                                    <button class="btn pull-right" id="button">자세히</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    세번째 컨텐츠
                    <div class="row">
                        <div class="col-xs-12 content" id="list_3">
                            <div class="row">
                                <div class="col-xs-3 photo" style="background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18587&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>

                                <div class="col-xs-6 col-xs-offset-3 info">
                                    <div class="title">
                                        인천공항 제2여객터미널 관광정보센터
                                    </div>
                                    <hr>
                                    <div class="contents">
                                        인천공항 제2여객터미널에 위치한 관광정보센터로 2018년 1월 18일에 개관하였다.
                                    </div>
                                    <div class="tags">
                                        <p class="ptags">태그</p>
                                        <div style="display: inline;">
                                            <a href="#">#인천공항</a>
                                            <a href="#">#인천공항</a>
                                            <a href="#">#인천공항</a>
                                            <a href="#">#인천공항</a>
                                            <a href="#">#인천공항</a>
                                            <a href="#">#인천공항</a>
                                        </div>
                                    </div>
                                    <button class="btn pull-right" id="button">자세히</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    네번째 컨텐츠
                    <div class="row">
                        <div class="col-xs-12 content" id="list_4">
                            <div class="row">
                                <div class="col-xs-3 photo" style="background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18516&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                                <div class="col-xs-6 col-xs-offset-3 info">
                                    <div class="title">
                                        골든블루마리나
                                    </div>
                                    <hr>
                                    <div class="contents">
                                        골든블루마리나는 다양한 요트 체험 프로그램을 할 수 있는 곳이다.
                                    </div>
                                    <div class="tags">
                                        <p class="ptags">태그</p>
                                        <div style="display: inline;">
                                            <a href="#">#워크샵</a>
                                            <a href="#">#세빛섬</a>
                                            <a href="#">#태그</a>
                                            <a href="#">#태그</a>
                                            <a href="#">#태그</a>
                                            <a href="#">#태그</a>
                                        </div>
                                    </div>
                                    <button class="btn pull-right" id="button">자세히</button>
                                </div>
                            </div>
                        </div>
                    </div> -->


                    

                    <!-- 페이징 처리 시작 -->

                    <div class="container" style="text-align: center;margin-bottom:30px;">
                        <ul class="pagination pagination-lg">
                        
                        <%=pageNavi %>
                            <!-- <li class="disabled">
                                <span>«</span>
                            </li>
                            <li class="active">
                                <span>1
                                </span>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">»</a>
                            </li> -->
                        </ul>

                    </div>
                </div>

			</div>
            </section>
            <%-- <%@ include file="/views/main/footer.jsp"%> --%>
    </body>

    </html>