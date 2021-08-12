
<!DOCTYPE html>
<html>
	<head>
 
<meta name="viewport" content="width=device-width; initial-scale = 1.0;maximum-scale=1.0; user-scalable=no" />
<link href="css/style_in.css" rel="stylesheet">
 <link type="text/css" rel="stylesheet" href="/images/main1.css&contentType=text/css" />
  <script type="text/javascript" src="/css/jquery-1.12.3.min.js"></script>
  <script type="text/javascript" src="/css/bootstrap.min.js"></script>

	</head>
	<body>
	<header id="top" class="header navbar-fixed-top">  
        <div class="container">            
            <h1 class="logo pull-left">
                <a class="scrollto" th:href="@{'/'}">
                    <img id="logo-image" class="logo-image" src="images/logo_wipay.png" alt="Logo">
                   
                </a>
            </h1><!--//logo-->   
			<a class="brand-logo center hide-on-med-and-down dropdown-button small-text purple-text" href="#" data-activates="themesMenu">WiPay Test FrameWork</a>
	
            <nav id="main-nav" class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->            
                <div class="navbar-collapse collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item sr-only active">
						</li>
                       
                        
                        <li class="nav-item"><a class="scrollto" th:href="@{'/view_TestGroup'}" >Add/Edit Group</a></li>
						 <li class="nav-item"><a class="scrollto" th:href="@{'/view_wipayTest'}" >Add/Edit Test Links</a></li>
						 <li class="nav-item"><a class="scrollto" th:href="@{'/viewGroup'}" >Test</a></li>
                        <li class="nav-item"><a class="scrollto" th:href="@{'/wipay_testcase_result'}"> Report</a></li>
                       
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->           
        </div>
    </header>
	
	<section id="faq" class="faq section offset-header">
<div class="container">
<div class="row">
<h2 class="title text-center animated fadeInUp delayp1" ><a th:href="@{'/view_TestGroup'}"><b> Add/Edit Group</b></a></h2>
<h2 class="title text-center animated fadeInUp delayp1" ><a th:href="@{'/view_wipayTest'}"><b>Add/Edit Test Links</b></a></h2>
<h2 class="title text-center animated fadeInUp delayp1" ><a th:href="@{'/viewGroup'}"><b>Test</b></a></h2>
<h2 class="title text-center animated fadeInUp delayp1" ><a th:href="@{'/wipay_testcase_result'}"><b> Report</b></a></h2>
			</div></div>
	</section>
	
</body>
</html>