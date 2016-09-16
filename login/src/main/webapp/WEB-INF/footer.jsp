<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<tiles:importAttribute name="cssList"/><tiles:importAttribute name="jsList"/>
<head>
    <c:forEach var="css" items="${cssList}">
        <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>
</head>


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