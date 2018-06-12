<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
  <!DOCTYPE html>
  <html>

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <link rel="stylesheet" href="../../css/moreBtn.css">
    <!--     <link rel="stylesheet" href="../../css/enjoySelect.css"> -->
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>

    <script src="../../js/main.js"></script>
  </head>
  <style>
    .photo {
      background-repeat: no-repeat;
      background-size: 100% 100%;
      z-index: 1;
      vertical-align: middle;
      position: relative;
      float: left;
    }
  </style>

  <body id="scroll">
    <%@ include file="/views/main/header.jsp"%>
      <section>
        <%-- <!-- 명소 Header -->
   <%@ include file="/views/enjoy/enjoyListHeader.jsp" %> --%>

          <div class="container-fluid">
            <!-- 내용물 -->
            <div id="enjoyPage" style="width: 100%; height: 100%;">

              <div id="line" style="margin-left: 10%; padding: 20px;">
                <select name="list">
                  <option value="">정렬하기</option>
                  <option value="title">제목</option>
                  <option value="dayOfIssue">발행일</option>
                </select>
              </div>

              <div class="content" id="list_1" style="margin-left: 10%; padding: 20px;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18822&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; border: 1px solid #9B95C9; border-width: 2px 20px 2px 2px; position:relative;">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin-top: 10px; margin-left: 10px;">
                    갤러리 3안
                  </div>
                  <div id="contents" style="padding: 5px; margin-top: 10px; margin-left: 10px;">
                    삼청동에 개관한 갤러리 3안은 회화, 영상, 조각, 설치 외 다양한 예술 분야를 다루고 있으며 구애받지 않는 실험 정신을 가진 아티스트들의 작품을 감상할 수 있다.
                  </div>
                  <div id="tags" style="position:absolute; left:5px; bottom:30px;">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#갤러리3안</a>
                      <a href="#">#갤러리3안</a>
                      <a href="#">#갤러리3안</a>
                      <a href="#">#갤러리3안</a>
                      <a href="#">#갤러리3안</a>
                      <a href="#">#갤러리3안</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_2" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18795&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; border: 1px solid #9B95C9; border-width: 2px 20px 2px 2px;">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    아원공방
                  </div>
                  <div id="contents" style="margin: 10px;">
                    1983년도에 개업한 은 금속으로 공예를 만드는 공방이다. 30년 이상 이어온 오랜 시간 동안 많은 사랑을 받아왔다.
                    <br> 만들어진 공예작품 하나하나에는 정성이 담겨 있으며, 차가운 금속의 따스함을 느끼게 한다.
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#아원공방</a>
                      <a href="#">#아원공방</a>
                      <a href="#">#아원공방</a>
                      <a href="#">#아원공방</a>
                      <a href="#">#아원공방</a>
                      <a href="#">#아원공방</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_3" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18587&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; border: 1px solid #9B95C9; border-width: 2px 20px 2px 2px;">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    인천공항 제2여객터미널 관광정보센터
                  </div>
                  <div id="contents" style="margin: 10px;">
                    인천공항 제2여객터미널에 위치한 관광정보센터로 2018년 1월 18일에 개관하였다.
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#인천공항</a>
                      <a href="#">#인천공항</a>
                      <a href="#">#인천공항</a>
                      <a href="#">#인천공항</a>
                      <a href="#">#인천공항</a>
                      <a href="#">#인천공항</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_4" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18516&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; border: 1px solid #9B95C9; border-width: 2px 20px 2px 2px;">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    골든블루마리나
                  </div>
                  <div id="contents" style="margin: 10px;">
                    골든블루마리나는 다양한 요트 체험 프로그램을 할 수 있는 곳이다.
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#워크샵</a>
                      <a href="#">#세빛섬</a>
                      <a href="#">#태그</a>
                      <a href="#">#태그</a>
                      <a href="#">#태그</a>
                      <a href="#">#태그</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_5" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18447&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; background-color: orange">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    서울중앙우체국
                  </div>
                  <div id="contents" style="margin: 10px;">
                    서울의 중심부인 명동에 위치한 서울중앙우체국은 스카이홀의 해외 비즈니스 고객에 알맞은 동시통역뿐만 아니라, 다목적용으로 쓸 수 있는 편안하고 효율적인 회의장과 리셉션홀도 제공하고 있다.
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#우체국</a>
                      <a href="#">#우체국</a>
                      <a href="#">#우체국</a>
                      <a href="#">#우체국</a>
                      <a href="#">#우체국</a>
                      <a href="#">#우체국</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_6" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=18089&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; background-color: orange">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    숙정문
                  </div>
                  <div id="contents" style="margin: 10px;">
                    서울성곽을 이루는 사대문(四大門) 가운데 하나로, 도성의 북쪽 대문이다. 1963년 1월 21일 서울성곽에 포함되어 사적 제10호로 지정되었다
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#숙정문</a>
                      <a href="#">#숙정문</a>
                      <a href="#">#숙정문</a>
                      <a href="#">#숙정문</a>
                      <a href="#">#숙정문</a>
                      <a href="#">#숙정문</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_7" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=17308&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; background-color: orange">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    창의문
                  </div>
                  <div id="contents" style="margin: 10px;">
                    서울 성곽의 4소문 중 하나로 북문 또는 자하문으로도 불리는 창의문은 서울 종로구 청운동에 자리해있는 조선시대 성문이다.
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#창의문</a>
                      <a href="#">#창의문</a>
                      <a href="#">#창의문</a>
                      <a href="#">#창의문</a>
                      <a href="#">#창의문</a>
                      <a href="#">#창의문</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_8" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=17308&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; background-color: orange">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    8번째
                  </div>
                  <div id="contents" style="margin: 10px;">
                    88888888888888
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#8</a>
                      <a href="#">#8</a>
                      <a href="#">#8</a>
                      <a href="#">#8</a>
                      <a href="#">#8</a>
                      <a href="#">#8</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_9" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=17308&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; background-color: orange">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    9번째
                  </div>
                  <div id="contents" style="margin: 10px;">
                    99999999999999
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#9</a>
                      <a href="#">#9</a>
                      <a href="#">#9</a>
                      <a href="#">#9</a>
                      <a href="#">#9</a>
                      <a href="#">#9</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div class="content" id="list_8" style="margin-left: 10%; padding: 20px; clear: left;">
                <div class="photo" style="float: left; width: 400px; height: 200px; border-radius: 12px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=17308&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                <div id="info" style="float: left; width: 800px; height: 200px; margin-left: 20px; background-color: orange">
                  <div id="title" style="font: bold 30pt 나눔스퀘어; margin: 10px;">
                    10번째
                  </div>
                  <div id="contents" style="margin: 10px;">
                    10101010101010
                  </div>
                  <div id="tags">
                    <p style="display: inline; margin: 10px;">태그</p>
                    <div style="display: inline;">
                      <a href="#">#10</a>
                      <a href="#">#10</a>
                      <a href="#">#10</a>
                      <a href="#">#10</a>
                      <a href="#">#10</a>
                      <a href="#">#10</a>
                    </div>
                  </div>
                  <button id="button" style="margin-left: 80%; margin-top: 3%;">자세히</button>
                </div>
              </div>

              <div style="clear: left; text-align: center;">
                <label>pageNavi</label>
                <br>
              </div>

              <!-- 페이징 처리 시작 -->
              <style>
                .pagination>.active>span {
                  background-color: #9B95C9;
                  border: 1px solid #ddd;
                }
                .pagination>.active>a,
                .pagination>.active>a:focus,
                .pagination>.active>span,
                .pagination>.active>span:focus
                {
                  color: #fff;
                  cursor: default;
                  background-color: #9B95C9;
                  border: 1px solid #ddd;
                }
                .pagination>li>a,
                .pagination>li>span{
                  color:#9B95C9;
                }
                .pagination>.active>span:hover,
                .pagination>.active>a:hover,
                .pagination>li>span:hover,
                .pagination>li>a:hover{
                  background-color: #eee;
                  border-color: #ddd;
                  color: #9B95C9;
                }

                ;
              </style>
              <div class="container" style="text-align: center ">
                <ul class="pagination pagination-lg">
                  <li class="disabled">
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
                  </li>
                </ul>

              </div>
            </div>
          </div>
      </section>
      <%@ include file="/views/main/footer.jsp"%>
  </body>

  </html>