<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>


<!DOCTYPE html>
<html xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:h="http://java.sun.com/jsf/html"
      xmlns:fn="http://java.sun.com/jsp/jstl/functions">

    <script type="text/javascript">

        function DoPost(id){
            $.post("/hello/blog/paint/" + id);
        }

        function search() {
            var search = $("#search").val();
            $.post("/hello/blog/search/" + search);
        }

        function getCategory(category) {
            $.post("/hello/blog/categoryPost/" + category,
                    function(data, status){
                        $("#med-container").load("/hello/blog/showcategory/");
                    });
        }

        function loadContactForm() {
            $("#med-container").load("/hello/contact/information/");
        }

    </script>

    <body>


        <div class="page-wrapper">

            <div><tiles:insertAttribute name="header" /></div>
            <div><tiles:insertAttribute name="body" /></div>
            <div><tiles:insertAttribute name="footer" /></div>

        </div>
        <!--End pagewrapper-->

        <!--Scroll to top-->
        <div class="scroll-to-top"><span class="fa fa-arrow-up"></span></div>



    </body>
</html>