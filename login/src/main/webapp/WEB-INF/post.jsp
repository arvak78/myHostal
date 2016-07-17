<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--Sidebar Page-->
<div class="sidebar-page">
    <div class="auto-container">
        <div class="row clearfix">
            <!--Content Side-->
            <div class="col-lg-9 col-md-8 col-sm-6 col-xs-12">
                <section class="blog-container blog-detail">

                    <!--Blog Post-->
                    <div class="blog-post">
                        <!--Blog Post-->
                        <div class="featured-blog-post wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                            <article class="inner-box">
                                <figure class="image">
                                    <a href="blog-detail.html"><img src="${pageContext.request.contextPath}/resources/images/blog/blog-image-4.jpg" alt=""></a>
                                </figure>
                                <div class="post-lower">
                                    <div class="post-header">
                                        <div class="date"><span class="day">18</span><br>APR</div>
                                        <h3 class="title"><a href="blog-detail.html">Blog post with image</a></h3>
                                        <ul class="post-info">
                                            <li><span class="icon fa fa-user"></span> <a href="#">${post.user}</a></li>
                                            <li><span class="icon fa fa-tag"></span> <a href="#">Civil Right</a></li>
                                            <li><span class="icon fa fa-comment-o"></span> <a href="#"> 22 comments</a></li>
                                            <li><span class="icon fa fa-calendar-o"></span> <a href="#">22th Jan, 2016 - 10:21 AM</a></li>
                                        </ul>
                                    </div>
                                    <div class="post-desc">
                                        ${post.body}
                                    </div>
                                </div>
                            </article>

                            <!--About Author-->
                            <div class="about-author mt-60 wow fadeIn" data-wow-delay="0ms" data-wow-duration="1500ms">
                                <div class="author-desc">
                                    <div class="author-thumb"><img src="images/resource/author-thumb.jpg" alt=""></div>
                                    <div class="author-info"><strong>${post.user}</strong> /  24 Blogposts / Entrepreneur / works for Company Inc.</div>
                                    <div class="text">“Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.”</div>
                                </div>
                            </div>

                            <!--Comments Area-->
                            <div class="comments-area">
                                <div class="sec-title"><h4 class="title-bottom mb-30">2 Comments Found</h4></div>
                                <div class="comment-box">
                                    <div class="comment wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                                        <div class="author-thumb"><img src="images/resource/author-thumb-2.jpg" alt=""></div>
                                        <div class="comment-info"><strong>Johnathan Doe</strong> - posted 2 minutes ago</div>
                                        <div class="text">Whether you need to create a brand from scratch, including marketing materials and a beautiful and functional website or whether you are looking for a design.</div>
                                        <a href="#" class="theme-btn dark-btn reply-btn"><span class="icon flaticon-update23"></span>&ensp; Reply</a>
                                    </div>

                                    <div class="comment reply-comment wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                                        <div class="author-thumb"><img src="images/resource/author-thumb-3.jpg" alt=""></div>
                                        <div class="comment-info"><strong>Johnathan Doe</strong> - posted 2 minutes ago</div>
                                        <div class="text">Whether you need to create a brand from scratch, including marketing materials and a beautiful and functional website or whether you are looking for a design.</div>
                                        <a href="#" class="theme-btn dark-btn reply-btn"><span class="icon flaticon-update23"></span>&ensp; Reply</a>
                                    </div>

                                    <div class="comment wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                                        <div class="author-thumb"><img src="images/resource/author-thumb-2.jpg" alt=""></div>
                                        <div class="comment-info"><strong>Johnathan Doe</strong> - posted 2 minutes ago</div>
                                        <div class="text">Whether you need to create a brand from scratch, including marketing materials and a beautiful and functional website or whether you are looking for a design.</div>
                                        <a href="#" class="theme-btn dark-btn reply-btn"><span class="icon flaticon-update23"></span>&ensp; Reply</a>
                                    </div>

                                </div>
                            </div>



                            <!-- Comment Form -->
                            <div class="comment-form wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">

                                <div class="sec-title"><h4 class="title-bottom mb-30">Post a <strong>comment</strong></h4></div>

                                <!--Comment Form-->
                                <form method="post" action="blog.html">
                                    <div class="row clearfix">
                                        <div class="form-group col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group-inner">
                                                <div class="icon-box"><label for="your-name"><span class="icon fa fa-user"></span></label></div>
                                                <div class="field-outer">
                                                    <input type="text" name="username" id="your-name" placeholder="Your Name">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group-inner">
                                                <div class="icon-box"><label for="your-email"><span class="icon fa fa-envelope"></span></label></div>
                                                <div class="field-outer">
                                                    <input type="email" name="email" id="your-email" placeholder="Email">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                            <div class="form-group-inner">
                                                <textarea name="message" placeholder="Your Message"></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group col-md-12 col-sm-12 col-xs-12 text-right">
                                            <button class="hvr-bounce-to-right" type="submit" name="submit-form">Add Comment</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>

                    </div>
                </section>

            </div>
            <!--Content Side-->
