<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/main.css">

<script src="../../js/jquery-3.3.1.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/main.js"></script>
<style>
        #accordion {
            margin-top: 1%;
        }
        .ahover:hover{
            text-decoration-line:none;
        }
        .ahover{
            text-decoration-line:none;
        }
        h2 { margin: 20px 0}
    </style>
</head>
<body id="scroll">
	<%@ include file="/views/main/header.jsp"%>
	<section>
            <div class="container">                    
                    <div class="panel-group custome" id="accordion">
                        <div class="panel panel-danger">
                          <div class="panel-heading">
                            <h2 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="ahover">
                                    &nbsp;&nbsp;&nbsp; 동대문
                              </a>
                            </h2>
                          </div>
                          <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum mauris.
                
                                Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
                            </div>
                          </div>
                        </div>
                        <div class="panel panel-danger">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                여기를 클릭해 보세요. #2
                              </a>
                            </h4>
                          </div>
                          <div id="collapseTwo" class="panel-collapse collapse ">
                            <div class="panel-body">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum mauris.
                
                                Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
                            </div>
                          </div>
                        </div>
                        <div class="panel panel-danger">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                여기를 클릭해 보세요. #3 
                              </a>
                            </h4>
                          </div>
                          <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit velit sit amet tristique tincidunt. Fusce dapibus tortor ut est ornare porttitor. Aliquam auctor bibendum posuere. Fusce laoreet tincidunt lacinia. Aliquam posuere pharetra auctor. Pellentesque et eleifend nibh, a bibendum lacus. Pellentesque sit amet dignissim mauris. Suspendisse a erat congue nunc auctor malesuada. Mauris ultricies magna quis neque egestas, eu vehicula sapien luctus. Aenean id condimentum mauris.
                
                                Integer urna enim, vehicula non nunc non, feugiat imperdiet eros. Morbi vitae est at erat tristique facilisis. Mauris pulvinar vel arcu vel ultrices. Mauris a nisi sit amet urna elementum semper. Etiam dignissim pharetra mauris. Donec rhoncus nisl sem, ut ultrices odio porttitor sed. Donec consequat facilisis velit. Cras feugiat tincidunt fermentum. Duis interdum nec quam id eleifend.
                            </div>
                          </div>
                        </div>
                      </div>
                  </div>


	</section>
	<%@ include file="/views/main/footer.jsp"%>
</body>
</html>