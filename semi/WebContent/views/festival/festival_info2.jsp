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
            body .container * {
                font-family: "Helvetica Neue", Helvetica, Arial, "맑은 고딕", "Malgun gothic", sans-serif;
                font-size: 14px;
            }

            #accordion {
                margin-top: 2%;
            }
        </style>

    </head>

    <body id="scroll">
        <%@ include file="/views/main/header.jsp"%>

            <section>
                <div class="container">
                    <div class="panel-group custome" id="accordion">
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="ahovered">
                                        동대문
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div id="carousel-example-generic" class="carousel slide">
                                        <!-- Indicators -->
                                        <ol class="carousel-indicators">
                                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                        </ol>
                                        <!-- Carousel items -->
                                        <div class="carousel-inner">
                                            <div class="item active">
                                                <img src="../../image/festival/main.jpg" alt="First slide">
                                            </div>
                                            <div class="item">
                                                <img src="../../image/festival/sub1.jpg" alt="Second slide">
                                            </div>
                                            <div class="item">
                                                <img src="../../image/festival/sub2.jpg" alt="Third slide">
                                            </div>
                                        </div>
                                        <!-- Controls -->
                                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                            <span class="icon-prev"></span>
                                        </a>
                                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                            <span class="icon-next"></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                        기본정보
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse ">
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
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                        상세정보
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
                    </div>
                </div>
            </section>
            <%@ include file="/views/main/footer.jsp"%>
            <script>
                    $('.carousel').carousel();
                    </script>
    </body>

    </html>