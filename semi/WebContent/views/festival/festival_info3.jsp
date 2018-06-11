<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Insert title here</title>

        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <script src="../../js/jquery-3.3.1.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../../css/main.css">
        <script src="../../js/main.js"></script>
        <link rel="stylesheet" href="../../css/festivalFont.css">
        <style>
            .container-fluid {
                padding: 0;
            }

            .carousel-inner {
                width: 100%;
                height: 1000px;
            }

            .carousel-inner div img {
                width: 100%;
                height: 1000px;
            }
            
            .carousel-caption {
                bottom: 90%;
            }

            .control {
                position: inherit;
                top: 50%;
                z-index: 5;
                display: inline-block;
                right: 50%;
            }
            
            .container {
                padding-top: 30px;
            }
        </style>
    </head>

    <body id="scroll">
        <%@ include file="/views/main/header.jsp"%>

            <section>
                <div class="container-fluid">

                    <!-- 캐러셀 시작 -->
                    <div id="carousel-generic" class="carousel slide">
                        <!-- 인디케이터 부분 -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-generic" data-slide-to="2"></li>
                            <li data-target="#carousel-generic" data-slide-to="3"></li>
                        </ol>
                        <!-- 캐러셀 이미지 부분 -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../../image/festival/main.jpg">
                                <div class="carousel-caption">
                                        <h1>동대문</h1>
                                     </div>  
                            </div>
                            <div class="item">
                                <img src="../../image/festival/sub1.jpg">
                                <div class="carousel-caption">
                                        <h1>동대문</h1>
                                     </div>  
                            </div>
                            <div class="item">
                                <img src="../../image/festival/sub2.jpg">
                                <div class="carousel-caption">
                                        <h1>동대문</h1>
                                     </div>  
                            </div>
                            <div class="item">
                                <img src="../../image/festival/sub3.jpg">
                                <div class="carousel-caption">
                                        <h1>동대문</h1>
                                     </div>  
                            </div>
                        </div>
                        <!-- 컨트롤러 부분 -->
                        <a href="#carousel-generic" class="left carousel-control" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a href="#carousel-generic" class="right carousel-control" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                    <!-- 설명 시작 -->
                    <div class="container">
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-target="#collapseOne">
                                        기본정보
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus
                                    tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt
                                    lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus.
                                    Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada.
                                    Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum
                                    mauris. Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae
                                    est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi
                                    sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem,
                                    ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt
                                    fermentum. Duis interdum nec quam id eleifend. Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus tortor
                                    ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt lacinia.
                                    Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque
                                    sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada. Mauris ultricies
                                    magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum mauris. Integer
                                    urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae est at erat tristique
                                    facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet urna elementum
                                    semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor
                                    sed. Donec consequat facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum
                                    nec quam id eleifend. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit
                                    velit sit amet tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam
                                    auctor bibendum posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor.
                                    Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris.
                                    Suspendisse a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas,
                                    eu vehicula sapien luctus. Aenean id condimentum mauris. Integer urna enim, vehicula
                                    non nunc non, feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris
                                    pulvinar vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim
                                    pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat
                                    facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet
                                    tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum
                                    posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque
                                    et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse
                                    a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula
                                    sapien luctus. Aenean id condimentum mauris. Integer urna enim, vehicula non nunc non,
                                    feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar
                                    vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim
                                    pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat
                                    facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet
                                    tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum
                                    posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque
                                    et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse
                                    a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula
                                    sapien luctus. Aenean id condimentum mauris. Integer urna enim, vehicula non nunc non,
                                    feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar
                                    vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim
                                    pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat
                                    facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet
                                    tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum
                                    posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque
                                    et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse
                                    a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula
                                    sapien luctus. Aenean id condimentum mauris. Integer urna enim, vehicula non nunc non,
                                    feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar
                                    vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim
                                    pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat
                                    facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-target="#collapseTwo">
                                        상세정보
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus
                                    tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt
                                    lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus.
                                    Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada.
                                    Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum
                                    mauris. Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae
                                    est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi
                                    sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem,
                                    ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt
                                    fermentum. Duis interdum nec quam id eleifend.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse"data-target="#collapseThree">
                                            지도&교통
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus
                                        tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt
                                        lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus.
                                        Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada.
                                        Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum
                                        mauris. Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae
                                        est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi
                                        sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem,
                                        ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt
                                        fermentum. Duis interdum nec quam id eleifend.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-danger">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse"data-target="#collapseFour">
                                                댓글
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseFour" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus
                                            tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt
                                            lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus.
                                            Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada.
                                            Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum
                                            mauris. Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae
                                            est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi
                                            sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem,
                                            ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt
                                            fermentum. Duis interdum nec quam id eleifend.
                                        </div>
                                    </div>
                                </div>
                    </div>
                </div>


            </section>
            <%@ include file="/views/main/footer.jsp"%>
                <script>
                    $('.carousel').carousel();
                </script>
    </body>

    </html>