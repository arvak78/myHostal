<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="tilesx" uri="http://tiles.apache.org/tags-tiles-extras" %>

<tilesx:useAttribute name="jslista" id="jsList" classname="java.util.List" />
<tilesx:useAttribute name="csslista" id="cssList" classname="java.util.List" />


<head>
    <c:forEach var="css" items="${cssList}">
        <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>

    <c:forEach var="js" items="${jsList}">
        <script type="text/javascript" src="<c:url value="${js}"/>"></script>
    </c:forEach>

</head>


<!-- Preloader -->
<div class="preloader"></div>

<!-- Main Header -->
<header class="main-header">
    <!-- Header Top -->
    <div class="header-top">
        <div class="auto-container clearfix">
            <div class="row">
                <div class="col-md-4">
                    <div class="color-light-white fs-13 mt-5"><span class="color-white fw-b">We are open:</span> Mon - Sat 9.00 - 16.00</div>
                </div>
                <div class="col-md-8 text-right">
                    <div class="header-widget">
                        <ul class="clearfix">
                            <li><a href="#"><span class="fa fa-phone"></span> (080) 4523-4514</a></li>
                            <li><a href="mailto:noreply@regulator.com"><span class="fa fa-envelope-o"></span> support@legalhelp.com</a></li>
                        </ul>
                    </div>
                    <div class="header-widget social-links">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
            <!-- Top Right -->
            <div class="top-right">
            </div>

        </div>
    </div><!-- Header Top End -->

    <!-- Search Box -->
    <div class="search-box toggle-box">
        <div class="auto-container clearfix">

            <!-- Search Form -->
            <div class="search-form mr-5">
                <form method="post" action="index.html">
                    <div class="form-group">
                        <input type="search" name="search" value="" placeholder="Search"/>
                        <button class="search-submit" type="submit"><span class="f-icon fa fa-search"></span></button>
                    </div>
                </form>
            </div>

        </div>
    </div>

    <!-- Header Lower -->
    <div class="header-lower">
        <div class="auto-container clearfix">

            <!--Outer Box-->
            <div class="outer-box">

                <!-- Logo -->
                <div class="logo mt-12">
                    <a href="index.html"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Logo" height="44"/></a>
                </div>

                <!-- Main Menu -->
                <nav class="main-menu">
                    <div class="navbar-header">
                        <!-- Toggle Button -->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <div class="navbar-collapse collapse clearfix">
                        <ul class="navigation">
                            <li class="current dropdown"><a href="index.html">Home</a>
                                <ul>
                                    <li><a href="index.html">Homepage One</a></li>
                                    <li><a href="index-2.html">Homepage Two</a></li>
                                </ul>
                            </li>
                            <li><a href="about.html">About Us</a></li>
                            <li class="dropdown"><a href="#">Practice Areas</a>
                                <ul>
                                    <li class="dropdown"><a href="#">Practice Style One</a>
                                        <ul>
                                            <li><a href="practice-one-3column.html">3column</a></li>
                                            <li><a href="practice-one-4column.html">4column</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#">Practice Style Two</a>
                                        <ul>
                                            <li><a href="practice-two-3column.html">3column</a></li>
                                            <li><a href="practice-two-4column.html">4column</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown"><a href="#">Attorneys</a>
                                <ul>
                                    <li><a href="attorneys-style-one.html">Attorneys Style One</a></li>
                                    <li><a href="attorneys-style-two.html">Attorneys Style Two</a></li>
                                    <li><a href="attorney-details.html">Attorney Details</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a href="index.html">Pages</a>
                                <ul>
                                    <li><a href="appointment.html">Appointment</a></li>
                                    <li><a href="faq.html">FAQ</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a href="blog.html">Blog</a>
                                <ul>
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-two-column.html">Blog Two Column</a></li>
                                    <li><a href="blog-three-column.html">Blog Three Column</a></li>
                                    <li><a href="blog-detail.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="javascript:loadContactForm()">Contact</a></li>
                        </ul>
                    </div>
                </nav><!-- Main Menu End-->

                <div class="search-box-btn">
                    <div class="search-btn"><span class="icon fa fa-search"></span></div>
                </div>

            </div>
        </div>
    </div><!-- Header Lower End-->

</header><!--End Main Header -->