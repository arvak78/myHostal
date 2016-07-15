<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:h="http://java.sun.com/jsf/html"
      xmlns:fn="http://java.sun.com/jsp/jstl/functions">
<head>

    <spring:url value="/resources/css/bootstrap.css" var="bootstrap" />
    <spring:url value="/resources/css/revolution-slider.css" var="slider" />
    <spring:url value="/resources/css/style.css" var="style" />
    <spring:url value="/resources/css/bootstrap-margin-padding.css" var="padding" />
    <spring:url value="/resources/css/responsive.css" var="responsive" />

    <spring:url value="/resources/js2/jquery.js" var="jquery" />
    <spring:url value="/resources/js2/bootstrap.min.js" var="bootstrapjs" />
    <spring:url value="/resources/js2/jquery.mixitup.min.js" var="mixitup" />
    <spring:url value="/resources/js2/jquery.fancybox.pack.js" var="fancybox" />
    <spring:url value="/resources/js2/owl.js" var="owl" />
    <spring:url value="/resources/js2/jquery.plugin.min.js" var="jqueryplugin" />
    <spring:url value="/resources/js2/jquery.datepick.min.js" var="datepick" />
    <spring:url value="/resources/js2/wow.js" var="wow" />
    <spring:url value="/resources/js2/script.js" var="rscript" />
    <%--<spring:url value="/resources/js2/respond.js" var="respond" />--%>

    <meta charset="utf-8"/>
    <title>Legal Hepl Law Firm HTML5 Template</title>

    <!-- Stylesheets -->
    <link href="${bootstrap}" rel="stylesheet"/>
    <link href="${slider}" rel="stylesheet"/>
    <link href="${style}" rel="stylesheet"/>
    <!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <link href="${padding}" rel="stylesheet"/>
    <link href="${responsive}" rel="stylesheet"/>


    <script type="text/javascript" src="${jquery}"></script>
    <script type="text/javascript" src="${bootstrap}"></script>
    <script type="text/javascript" src="${mixitup}"></script>
    <script type="text/javascript" src="${fancybox}"></script>
    <script type="text/javascript" src="${owl}"></script>
    <script type="text/javascript" src="${jqueryplugin}"></script>
    <script type="text/javascript" src="${datepick}"></script>
    <script type="text/javascript" src="${wow}"></script>
    <script type="text/javascript" src="${rscript}"></script>
    <%--<script type="text/javascript" src="${respond}"></script>--%>

    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>

<body>


<div class="page-wrapper">

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
                        <a href="index.html"><img src="../../resources/images/logo.png" alt="Logo" height="44"/></a>
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
                                <li><a href="contact.html">Contact</a></li>
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


    <!--Page Title-->
    <section class="page-title" style="background-image:url(../../resources/images/parallax/image-8.jpg);">
        <div class="auto-container">
            <div class="text-center">
                <h1>Our Blog</h1>
                <div class="bread-crumb">
                    <a href="index.html">Home</a> <i class="fa fa-angle-right"></i> <a class="current" href="#">Blog</a>
                </div>
            </div>
        </div>
    </section>

    <!--Sidebar Page-->
    <div class="sidebar-page pb-0">
        <div class="auto-container">
            <div class="row clearfix">

                <!--Content Side-->
                <div class="col-lg-9 col-md-8 col-sm-6 col-xs-12">

                    <!--Default Section-->
                    <section class="default-section blog-section pt-0 pb-0">
                        <div class="row clearfix">

                            <form action="/blog/paint" method="post">

                                <c:forEach var="blog" items="#{blogController.allPosts}">
                                    <!--Blog Post-->
                                    <div class="col-md-6 col-sm-6 col-xs-12 featured-blog-post wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                                        <article class="inner-box hvr-float-shadow">
                                            <figure class="image">
                                                <a href="blog-detail.html"><img src="../../resources/images/blog/${blog.urlImage}" alt=""/></a>
                                            </figure>
                                            <div class="post-lower">
                                                <div class="post-header">
                                                    <div class="date"><span class="day">15</span><br/>APR</div>
                                                    <h3 class="title"><a href="blog-detail.html">${blog.description}</a></h3>
                                                    <ul class="post-info">
                                                        <li><span class="icon fa fa-user"></span> <a href="#">${blog.user}</a></li>
                                                        <li><span class="icon fa fa-tag"></span> <a href="#">Civil Rights</a></li>
                                                    </ul>
                                                </div>
                                                <div class="post-desc">
                                                    <p>${fn:substring(blog.body, 0, 150)} ...</p>
                                                    <!--<div class="text-right"><a class="color-theme fs-14" href="blog-detail.html">Read more</a></div>-->
                                                    <input type="submit" class="color-theme fs-14" />
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                </c:forEach>

                            </form>

                        </div>
                        <!--Pagination-->
                        <div class="pager-outer">
                            <ul class="pagination mt-0 mb-50">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li class="active"><a href="#">3</a></li>
                                <li><a href="#">-</a></li>
                                <li><a href="#">7</a></li>
                                <li><a href="#">8</a></li>
                                <li><a href="#">Next</a></li>
                            </ul>
                        </div>
                    </section>

                </div>
                <!--Content Side-->

                <!--Sidebar-->
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <aside class="sidebar">

                        <!-- Search Form -->
                        <div class="widget search-form">

                            <form method="post" action="blog.html">
                                <div class="form-group">
                                    <input type="search" name="search" value="" placeholder="search for something"/>
                                    <button type="submit" name="submit"><span class="fa fa-search"></span></button>
                                </div>
                            </form>

                        </div>

                        <!-- Popular Categories -->
                        <div class="widget popular-categories wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="sidebar-title"><h3>Popular Categories</h3></div>

                            <ul class="list">
                                <li><span class="icon fa fa-angle-right"></span> <a href="#">Civil &amp; Family Rights</a></li>
                                <li><span class="icon fa fa-angle-right"></span> <a href="#">Laws &amp; Rights</a></li>
                                <li><span class="icon fa fa-angle-right"></span> <a href="#">Court House</a></li>
                                <li><span class="icon fa fa-angle-right"></span> <a href="#">Estate Lawyer</a></li>
                                <li><span class="icon fa fa-angle-right"></span> <a href="#">Police Matter</a></li>
                            </ul>

                        </div>

                        <!-- Recent Posts -->
                        <div class="widget recent-posts wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <div class="sidebar-title"><h3>Recent Posts</h3></div>

                            <div class="post">
                                <div class="post-thumb"><a href="#"><img src="../../resources/images/resource/thumb-1.jpg" alt=""/></a></div>
                                <h4><a href="#">It´s all about the right practise</a></h4>
                                <div class="post-info text-right">11/01/2015 </div>
                            </div>

                            <div class="post">
                                <div class="post-thumb"><a href="#"><img src="../../resources/images/resource/thumb-2.jpg" alt=""/></a></div>
                                <h4><a href="#">Bankruptcy law is the area of federal law</a></h4>
                                <div class="post-info text-right">11/01/2015 </div>
                            </div>

                            <div class="post">
                                <div class="post-thumb"><a href="#"><img src="../../resources/images/resource/thumb-3.jpg" alt=""/></a></div>
                                <h4><a href="#">Today, many people are learning</a></h4>
                                <div class="post-info text-right">11/01/2015 </div>
                            </div>

                        </div>

                        <!-- Recent From Gallery -->
                        <div class="widget recent-gallery">
                            <div class="sidebar-title"><h3>Recent From Gallery</h3></div>

                            <div class="clearfix">
                                <figure class="image"><a href="../../resources/images/resource/image-1.jpg" class="lightbox-image"><img src="../../resources/images/resource/thumb-1.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="../../resources/images/resource/image-2.jpg" class="lightbox-image"><img src="../../resources/images/resource/thumb-2.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="../../resources/images/resource/image-1.jpg" class="lightbox-image"><img src="../../resources/images/resource/thumb-3.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="../../resources/images/resource/image-2.jpg" class="lightbox-image"><img src="../../resources/images/resource/thumb-4.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="../../resources/images/resource/image-1.jpg" class="lightbox-image"><img src="../../resources/images/resource/thumb-5.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="../../resources/images/resource/image-2.jpg" class="lightbox-image"><img src="../../resources/images/resource/thumb-6.jpg" alt=""/></a></figure>
                            </div>

                        </div>

                        <!-- Popular Tags -->
                        <div class="widget popular-tags">
                            <div class="sidebar-title"><h3>Popular Tags</h3></div>

                            <a href="#">awesome</a> <a href="#">strategy</a> <a href="#">development</a> <a href="#">css</a> <a href="#">photoshop</a> <a href="#">photography</a> <a href="#">html</a> <a href="#">charity</a> <a href="#">charity</a> <a href="#">organisations</a> <a href="#">php</a> <a href="#">foundation</a> <a href="#">donations</a> <a href="#">money</a> <a href="#">children</a> <a href="#">spendings</a> <a href="#">help</a> <a href="#">housing</a>

                        </div>

                    </aside>


                </div>
                <!--Sidebar-->


            </div>
        </div>
    </div>


    <!--Client Logos-->
    <section class="sponsors-section">
        <div class="container">
            <ul class="slider">
                <li><a href="#"><img src="../../resources/images/clients/logo-6.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="../../resources/images/clients/logo-7.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="../../resources/images/clients/logo-8.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="../../resources/images/clients/logo-9.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="../../resources/images/clients/logo-10.png" alt="" title="/"/></a></li>
                <li><a href="#"><img src="../../resources/images/clients/logo-6.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="../../resources/images/clients/logo-7.png" alt="" title=""/></a></li>
            </ul>
        </div>
    </section>


    <!--Main Footer-->
    <footer class="main-footer">

        <!--Footer Upper-->
        <div class="footer-upper xs-width4-center">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-widget links-widget mb-sm-20 mb-xs-30">
                            <div class="widget-title"><h3>About Us</h3></div>
                            <p class="color-light-gray">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta.</p>
                            <a href="#" class="btn-thm btn-xs mb-10 mt-10">Read more <i class="fa fa-arrow-circle-right"></i></a>
                            <br/>
                            <!--Social Links-->
                            <div class="social-links list-inline mt-15 ml-0">
                                <a href="#"><i class="fa fa-facebook-square"></i></a>
                                <a href="#"><i class="fa fa-linkedin-square"></i></a>
                                <a href="#"><i class="fa fa-twitter-square"></i></a>
                                <a href="#"><i class="fa fa-google-plus-square"></i></a>
                                <a href="#"><i class="fa fa-pinterest-square"></i></a>
                                <a href="#"><i class="fa fa-flickr"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-widget links-widget">
                            <div class="widget-title"><h3>Client Information</h3></div>
                            <ul>
                                <li><a href="#">Our Attorneys</a></li>
                                <li><a href="#">Practise Areas</a></li>
                                <li><a href="#">Our Services</a></li>
                                <li><a href="#">Latest News</a></li>
                                <li><a href="#">Our Blog</a></li>
                                <li><a href="#">Contact Information</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-widget links-widget">
                            <div class="widget-title"><h3>Customer Services</h3></div>
                            <ul>
                                <li><a href="#">Support Forums</a></li>
                                <li><a href="#">Community Area</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">Customer Feedback</a></li>
                                <li><a href="#">Community Agent</a></li>
                                <li><a href="#">Terms &amp; Conditions</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-widget links-widget">
                            <div class="widget-title"><h3>Contact Info</h3></div>
                            <ul>
                                <li class="pull-left"><i class="fa fa-map-marker color-white fs-20 mr-15 mt-5"></i></li>
                                <li class="color-light-gray mb-10">14 Tottenham Road, N1 4EP London, United Kingdom</li>
                            </ul>
                            <ul>
                                <li class="mb-12"><a class="color-light-gray no-before pl-0" href="#"><i class="fa fa-phone color-white fs-16 mr-10"></i> +1800-222-3333</a></li>
                                <li class="mb-0"><a class="color-light-gray no-before pl-0" href="#"><i class="fa fa-envelope-o color-white fs-14 mr-10"></i> support@legalhelp.com</a></li>
                            </ul>
                            <ul>
                                <li class="pull-left"><i class="fa fa-clock-o color-white fs-16 mr-10"></i></li>
                                <li class="color-light-gray mt-15">Mon - Sat 9.00 - 16.00 <br/> Sunday - <span class="color-theme">CLOSED</span></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!--Footer bootom-->
        <div class="footer-bottom">
            <div class="auto-container fs-13">
                <p class="mb-0">copy; Copyright 2016 by <span class="color-theme">Legal-Help</span> | All rights reserved</p>
            </div>
        </div>

    </footer>

</div>
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top"><span class="fa fa-arrow-up"></span></div>



</body>
</html>