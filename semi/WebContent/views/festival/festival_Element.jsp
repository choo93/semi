<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/main.css">
        <script src="../../js/jquery-3.3.1.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>

        <script src="../../js/main.js"></script>
        <style>
        body {padding-top: 10px;}
        #img1{
            width: 50%;
            height: 33.3%;
            background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=7951&fileTy=MEDIA&fileNo=1&thumbTy=L);
        }
        #all-img-div {
            padding-left: 0;
            padding-right: 0;
            
        }
        div{
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        .img-list {
            border-radius: 15px;
            border-top-left-radius: 15px;
        }
        </style>
    </head>

    <body id="scroll">
        <%@ include file="/views/main/header.jsp"%>
            <section>
                    <div id="all-img-div"class="container-fluid">
                                    <div id="img1" class="img-list" style="float:left; width: 50%; height: 300px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=7951&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                                    <div id="img2" class="img-list" style="float: left; width: 50%; height: 300px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=110&fileTy=MEDIA&fileNo=1&thumbTy=M);"></div>
                                
                                    <div id="img3" class="img-list" style="float:left; width: 50%; height: 300px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=7951&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                                    <div id="img4" class="img-list" style="float: left; width: 50%; height: 300px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=110&fileTy=MEDIA&fileNo=1&thumbTy=M);"></div>
                                
                                    <div id="img5" class="img-list" style="float:left; width: 50%; height: 300px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=7951&fileTy=MEDIA&fileNo=1&thumbTy=L);"></div>
                                    <div id="img6" class="img-list" style="float: left; width: 50%; height: 300px; background-image: url(http://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=110&fileTy=MEDIA&fileNo=1&thumbTy=M);"></div>
                                                                    
                    </div>
            </section>
            <%@ include file="/views/main/footer.jsp"%>
    </body>

    </html>