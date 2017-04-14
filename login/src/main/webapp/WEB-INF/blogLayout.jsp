<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div id="blog-layout">
    <c:import url="/WEB-INF/blogTitle.jsp" />
    <div id="blogPosts">
        <c:import url="/WEB-INF/blog.jsp" />
    </div>
    <c:import url="/WEB-INF/blogSideBar.jsp" />
</div>
