<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--<tiles:importAttribute name="cssList"/><tiles:importAttribute name="jsList"/>--%>



    <!--Page Title-->
    <section class="page-title" style="background-image:url(${pageContext.request.contextPath}/resources/images/parallax/image-8.jpg);">
        <div class="auto-container">
            <div class="text-center">
                <h1>Our Blog</h1>
                <div class="bread-crumb">
                    <a href="index.html">Home</a> <i class="fa fa-angle-right"></i> <a class="current" href="/hello/blog/posts/">Blog</a>
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

                            <form:form action="${pageContext.request.contextPath}/blog/paint" method="post"  >

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
                                                        <ul class="post-info">
                                                            <li><span class="icon fa fa-user"></span> <a href="#">${blog.user}</a></li>
                                                            <li><span class="icon fa fa-tag"></span> <a href="#">${blog.categories.name}</a></li>
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

                <!--Side Bar -->
                <c:import url="/WEB-INF/blogSideBar.jsp" />


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
