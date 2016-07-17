<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




    <!--Page Title-->
    <section class="page-title" style="background-image:url(${pageContext.request.contextPath}/resources/images/parallax/image-8.jpg);">
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

                            <form:form action="${pageContext.request.contextPath}/blog/paint" method="post" modelAttribute="postsForm" >

                                <table>
                                    <tr>
                                    <c:forEach var="blog" items="${postsForm.posts}" varStatus="status">
                                        <!--Blog Post-->
                                        <div class="col-md-6 col-sm-6 col-xs-12 featured-blog-post wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                                            <article class="inner-box hvr-float-shadow">
                                                <input type="hidden" name="posts[${status.index}].id" value="${blog.id}"  />
                                                <figure class="image">
                                                    <a href="blog-detail.html"><img src="${pageContext.request.contextPath}/resources/images/blog/${blog.urlImage}" alt=""/></a>
                                                </figure>
                                                <div class="post-lower">
                                                    <div class="post-header">
                                                        <div class="date"><span class="day">15</span><br/>APR</div>
                                                        <h3 class="title"><a href="javascript:DoPost(${blog.id})">${blog.description}</a></h3>
                                                        <input type="text" name="user" value="${blog.user}"  />
                                                        <ul class="post-info">
                                                            <li><span class="icon fa fa-user"></span> <a href="#">${blog.user}</a></li>
                                                            <li><span class="icon fa fa-tag"></span> <a href="#">Civil Rights</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="post-desc">
                                                        <p>${fn:substring(blog.body, 0, 150)} ...</p>
                                                    </div>
                                                </div>
                                            </article>
                                        </div>
                                    </c:forEach>
                                    </tr>
                                </table>

                            </form:form>

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
                                <div class="post-thumb"><a href="#"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-1.jpg" alt=""/></a></div>
                                <h4><a href="#">It´s all about the right practise</a></h4>
                                <div class="post-info text-right">11/01/2015 </div>
                            </div>

                            <div class="post">
                                <div class="post-thumb"><a href="#"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-2.jpg" alt=""/></a></div>
                                <h4><a href="#">Bankruptcy law is the area of federal law</a></h4>
                                <div class="post-info text-right">11/01/2015 </div>
                            </div>

                            <div class="post">
                                <div class="post-thumb"><a href="#"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-3.jpg" alt=""/></a></div>
                                <h4><a href="#">Today, many people are learning</a></h4>
                                <div class="post-info text-right">11/01/2015 </div>
                            </div>

                        </div>

                        <!-- Recent From Gallery -->
                        <div class="widget recent-gallery">
                            <div class="sidebar-title"><h3>Recent From Gallery</h3></div>

                            <div class="clearfix">
                                <figure class="image"><a href="${pageContext.request.contextPath}/resources/images/resource/image-1.jpg" class="lightbox-image"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-1.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="${pageContext.request.contextPath}/resources/images/resource/image-2.jpg" class="lightbox-image"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-2.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="${pageContext.request.contextPath}/resources/images/resource/image-1.jpg" class="lightbox-image"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-3.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="${pageContext.request.contextPath}/resources/images/resource/image-2.jpg" class="lightbox-image"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-4.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="${pageContext.request.contextPath}/resources/images/resource/image-1.jpg" class="lightbox-image"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-5.jpg" alt=""/></a></figure>
                                <figure class="image"><a href="${pageContext.request.contextPath}/resources/images/resource/image-2.jpg" class="lightbox-image"><img src="${pageContext.request.contextPath}/resources/images/resource/thumb-6.jpg" alt=""/></a></figure>
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
                <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/clients/logo-6.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/clients/logo-7.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/clients/logo-8.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/clients/logo-9.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/clients/logo-10.png" alt="" title="/"/></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/clients/logo-6.png" alt="" title=""/></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/resources/images/clients/logo-7.png" alt="" title=""/></a></li>
            </ul>
        </div>
    </section>
