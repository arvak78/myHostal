<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--Contact Us Section-->
<div class="sidebar-page">
    <div class="auto-container">

        <div class="row clearfix">

            <div class="col-md-9 col-sm-6 col-xs-12">
                <section class="contact-section">
                    <!--Sec Title-->
                    <div class="sec-title clearfix">

                        <h2 class="heading-text">Contacte con nosotros</h2>

                    </div>

                    <br>

                    <div class="form">

                        <form:form action="${pageContext.request.contextPath}/contact/sendmail" method="post" modelAttribute="contactForm" commandName="contactForm">
                            <div class="row clearfix">
                                <div class="form-group col-md-4 col-sm-12 col-xs-12">
                                    <div class="form-group-inner">
                                        <div class="icon-box"><label for="your-name"><span class="icon fa fa-user"></span></label></div>
                                        <div class="field-outer">
                                            <input type="text" name="name" id="your-name" placeholder="Nombre" value="${contactForm.name}">
                                            <span><form:errors path="name" /></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-12 col-xs-12">
                                    <div class="form-group-inner">
                                        <div class="icon-box"><label for="your-email"><span class="icon fa fa-envelope"></span></label></div>
                                        <div class="field-outer">
                                            <input type="email" name="email" id="your-email" placeholder="Email" value="${contactForm.email}">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-12 col-xs-12">
                                    <div class="form-group-inner">
                                        <div class="icon-box"><label for="your-subject"><span class="icon fa fa-edit"></span></label></div>
                                        <div class="field-outer">
                                            <input type="text" name="subject" id="your-subject" placeholder="Tema" value="${contactForm.subject}" >
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group-inner">
                                        <textarea name="message" placeholder="Tu mensaje" value="${contactForm.message}"></textarea>
                                    </div>
                                </div>

                                <div class="form-group col-md-12 col-sm-12 col-xs-12 text-right">
                                    <button class="hvr-bounce-to-right" type="submit" name="submit-form">Enviar mensaje &ensp; <span class="icon flaticon-envelope32"></span></button>
                                </div>
                            </div>
                            </form:form>

                    </div>

                </section>
            </div>

            <!--Sidebar-->
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <aside class="sidebar">

                    <!-- Contact Information -->
                    <div class="widget contact-info">
                        <div class="sidebar-title"><h3>Informacion de contacto</h3></div>
                        <div class="text">If you are in the middle of something and you don’t want to miss that important call that could be the start of an exciting new business.</div>
                        <ul class="info">
                            <li><strong>Email</strong> <a href="mailto:support@legalhelp.com">support@legalhelp.com</a></li>
                            <li><strong>Phone</strong> +49 123 456 789</li>
                            <li><strong>Fax</strong> +49 123 456 789</li>
                            <li><strong>Website</strong> <a href="http://www.envato.com">http://www.envato.com</a></li>
                        </ul>
                    </div>

                </aside>


            </div>
            <!--Sidebar-->

        </div>
    </div>
</div>
