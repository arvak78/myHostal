<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Spring 3 MVC Multipe Row Submit - viralpatel.net</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script language="javascript">

        function DoPost(id){
            alert('a:' + id);
            $.post("/hello/blog/paint/" + id,
                    function(data, status){});
        }

    </script>
</head>

<%--<body>--%>



<form:form action="${pageContext.request.contextPath}/blog/paint" method="post" modelAttribute="postsForm" >

    <table>
        <c:forEach var="blog" items="${postsForm.posts}" varStatus="status">
            <tr>
                    <td><input type="text" name="posts[${status.index}].id" value="${blog.id}"  /></td>
                    <td><input type="text" name="posts[${status.index}].user" value="${blog.user}"  /></td>
                    <td><a href="javascript:DoPost(${blog.id})">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

</form:form>


<%--</body>--%>
</html>