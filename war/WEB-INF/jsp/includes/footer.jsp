<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>

    <!-- start: Footer Menu -->
	<div id="footer-menu" class="hidden-tablet hidden-phone">

		<!-- start: Container -->
		<div class="container">
			
			<!-- start: Row -->
			<div class="row">

				<!-- start: Footer Menu Logo -->
				<div class="span2">
					<div id="footer-menu-logo">
						<div id="logo-chart"></div><a class="brand" href="http://www.reservarhotelmadrid.com/">RH<span>Mad</span>.</a>
					</div>
				</div>
				<!-- end: Footer Menu Logo -->

				<!-- start: Footer Menu Links-->
				<div class="span9">
					
					<div id="footer-menu-links">

						<ul id="footer-nav">

							<li><a href="http://www.reservarhotelmadrid.com/">Inicio</a></li>
							
							<li><a href="/blog">Blog</a></li>

							<li><a href="/ofertas">Ofertas de hoteles</a></li>
							
							<li><a href="/contacto">Contacto</a></li>

						</ul>

					</div>
					
				</div>
				<!-- end: Footer Menu Links-->

				<!-- start: Footer Menu Back To Top -->
				<div class="span1">
						
					<div id="footer-menu-back-to-top">
						<a href="http://www.reservarhotelmadrid.com/"></a>
					</div>
				
				</div>
				<!-- end: Footer Menu Back To Top -->
			
			</div>
			<!-- end: Row -->
			
		</div>
		<!-- end: Container  -->	

	</div>	
	<!-- end: Footer Menu -->

	<!-- start: Footer -->
	<div id="footer">
		
		<!-- start: Container -->
		<div class="container">			
			<!-- start: Row -->
			<div class="row" style="margin-top: 20px;">

				<!-- start: About -->
				<div class="span3">
					
					<h3>Sobre nosotros</h3>
					<p>
						Somos un equipo de personas con pasión por viajar y en especial por la ciudad de Madrid, que además quiere ofrecerte la mejor información y los mejores artículos sobre reserva de hoteles y destinos a visitar en la capital española.
					</p>
						
				</div>
				<!-- end: About -->

				<!-- start: Photo Stream -->
				<div class="span3">
					
					<h3></h3>
					<div class="flickr-widget">
							
						<div class="clear"></div>
					</div>
					
				</div>
				<!-- end: Photo Stream -->

				<div class="span6">
				
					<!-- start: Follow Us -->
					<h3><a target="_blank" href="/rssfeed" title="RSS feed"><img src="/img/rss.png" alt="RSS feed"></a>&nbsp;Síguenos!</h3>
					<ul class="social-grid">
						<li>
							<div class="social-item">				
								<div class="social-info-wrap">
									<div class="social-info">
										<div class="social-info-front social-twitter">
											<a target="_blank" href="https://twitter.com/RHotelMadrid"></a>
										</div>
										<div class="social-info-back social-twitter-hover">
											<a target="_blank" href="https://twitter.com/RHotelMadrid"></a>
										</div>	
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="social-item">				
								<div class="social-info-wrap">
									<div class="social-info">
										<div class="social-info-front social-facebook">
											<a target="_blank" href="https://www.facebook.com/reservarhotelmadrid"></a>
										</div>
										<div class="social-info-back social-facebook-hover">
											<a target="_blank" href="https://www.facebook.com/reservarhotelmadrid"></a>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="social-item">				
								<div class="social-info-wrap">
									<div class="social-info">
										<div class="social-info-front social-youtube">
											<a target="_blank" href="https://www.youtube.com/c/Reservarhotelmadrid"></a>
										</div>
										<div class="social-info-back social-youtube-hover">
											<a target="_blank" href="https://www.youtube.com/c/Reservarhotelmadrid"></a>
										</div>	
									</div>
								</div>
							</div>
						</li>
						 
						<li>
							<div class="social-item">				
								<div class="social-info-wrap">
									<div class="social-info">
										<div class="social-info-front social-flickr">
											<a target="_blank" href="https://www.flickr.com/photos/reservarhotelmadrid/"></a>
										</div>
										<div class="social-info-back social-flickr-hover">
											<a target="_blank" href="https://www.flickr.com/photos/reservarhotelmadrid/"></a>
										</div>	
									</div>
								</div>
							</div>
						</li> 
					</ul>
					<!-- end: Follow Us -->
				
					<!-- start: Newsletter -->
					
					<h3>Suscríbete!</h3>
					<form id="newsletter" action="//reservarhotelmadrid.us10.list-manage.com/subscribe/post?u=fa305d6ec0ab2ca194c14e92b&amp;id=d2be27c462" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank">	
						<p>Por favor, déjanos tu email para recibir nuestras novedades y las mejores ofertas para viajar y reservar hotel en Madrid.</p>
						<label for="newsletter_input">@:</label>
						<input style="border: 1px solid #29a9df" type="text" name="EMAIL" id="mce-EMAIL" placeholder="Introduce tu email">
						<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    					<div style="position: absolute; left: -5000px;"><input type="text" name="b_fa305d6ec0ab2ca194c14e92b_d2be27c462" tabindex="-1" value=""></div>
						<input type="submit" value="Suscribirme" name="Suscribirme" id="mc-embedded-subscribe">							
					</form>
					<!-- end: Newsletter -->
				
				</div>
				
			</div>
			<!-- end: Row -->	
			
		</div>
		<!-- end: Container  -->

	</div>
	<!-- end: Footer -->

	<!-- start: Copyright -->
	<div id="copyright">
	
		<!-- start: Container -->
		<div class="container">
		
			<div class="span12">
			<jsp:useBean id="date" class="java.util.Date" />
				<p>
				&copy; <fmt:formatDate value="${date}" pattern="yyyy" />,&nbsp;<a target="_blank" href="https://plus.google.com/+Reservarhotelmadrid" rel="publisher"><span id="_publisher8" itemscope itemtype="http://schema.org/Organization">
<span itemprop="name">Reservar Hotel Madrid</span></span></a><i style="margin-top: -18px;" class="ico-color ico-brightness-increase"></i>
				<a style="margin-left: 19px;" href="/politica-de-privacidad">Política de privacidad</a>					
				</p>
				<br><br>
			</div>
	
		</div>
		<!-- end: Container  -->
		
	</div>
		
	<!-- end: Copyright -->
<!-- start: Java Script -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/js/jquery.lazyload.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/isotope.min.js"></script>
<script src="/js/jquery.imagesloaded.min.js"></script>
<script src="/js/flexslider.min.js"></script>
<script src="/js/carousel.min.js"></script>
<script src="/js/jquery.cslider.min.js"></script>
<script src="/js/slider.min.js"></script>
<script src="/js/fancybox.min.js"></script>
<script defer="defer" src="/js/custom.min.js"></script>
<script async src="/js/apprise-v2.min.js"></script>
<script async src="/js/jquery.rateit.min.js"></script>

<%@ include file="/WEB-INF/jsp/includes/scripts.jsp"%>


<script>
$("head").append("<link rel='stylesheet' type='text/css' href='/css/apprise-v2.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/icons.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/icons-color.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/social-icons.min.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/hover.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/fancybox.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/rateit.css' />");
</script>
<script>
	$("img.lazy").lazyload({
	    threshold : 250
	});

	var pathname = window.location.pathname;
	var parts = pathname.split('/');
	$("#menuSuperior > li").removeClass('active');
	if(parts[1] == 'contacto'){		
		$("#menuContacto").addClass('active');
	}else if(parts[1] == 'sobre'){	
		$("#menuSobre").addClass('active');
	}else if('${publicacion.tipo}' == 'AR'){	
		$("#menuBlog").addClass('active');
	}else if('${publicacion.tipo}' == 'EB'){	
		$("#menuOfertas").addClass('active');
	}else if(parts[1] == 'ofertas'){	
		$("#menuOfertas").addClass('active');
	}else if(parts[1] == 'blog'){	
		$("#menuBlog").addClass('active');
	}else{
		$("#menuInicio").addClass('active');
	}
</script>
<script src="//load.sumome.com/" data-sumo-site-id="a69a8738b4d6dd583b543aaf3aa2ca89fc3cdfe10dd50a13dbb796a5996e49e6" async defer></script>

<!-- end: Java Script -->
