<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--Sidebar-->
<div class="sidebar">
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
        <aside class="sidebar">

            <!-- Search Form -->
            <div class="widget search-form">

                <form method="post" action="${pageContext.request.contextPath}/blog/search/">
                    <div class="form-group">
                        <input type="search" id="search" name="search" value="${postsForm.searchWord}" placeholder="search for something"/>
                        <button type="submit" name="submit"><span class="fa fa-search"></span></button>
                    </div>
                </form>

            </div>

            <!-- Popular Categories -->
            <div class="widget popular-categories wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                <div class="sidebar-title"><h3>Popular Categories</h3></div>

                <ul class="list">
                    <c:forEach var="category" items="${postsForm.categories}" varStatus="status">
                        <li><span class="icon fa fa-angle-right"></span> <a href="javascript:getCategory(${category.id})">${category.name}</a></li>
                    </c:forEach>

                </ul>

            </div>

            <!-- Recent Posts -->
            <div class="widget recent-posts wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
            <div class="sidebar-title"><h3>Recent Posts</h3></div>

            <c:forEach var="recent" items="${postsForm.posts}" varStatus="status">

            <c:if test="${status.index < 5}">

                    <div class="post">
                                <div class="post-thumb"><a href="#"><img src="${pageContext.request.contextPath}/resources/images/blog/${recent.urlImage}" alt=""/></a></div>
                                <h4><a href="#">${recent.description}</a></h4>
                                <div class="post-info text-right">${recent.created} </div>
                            </div>

                    </c:if>

            </c:forEach>

            </div>

        </aside>


    </div>
</div>
<!--Sidebar-->