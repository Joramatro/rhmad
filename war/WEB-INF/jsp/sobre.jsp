<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">

	<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>
	
	<!-- start: Page Title -->
	<div id="page-title">

		<div id="page-title-inner">

			<!-- start: Container -->
			<div class="container">

				<h1><i class="ico-keynote ico-white"></i>Sobre Nosotros</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	
	<!--start: Wrapper-->
	<div id="wrapper">
				
		<!--start: Container -->
    	<div class="container" style=" padding-bottom: 100px; ">
	
			<!--start: Row -->
	    	<div class="row">
		
				<div class="span8">
					
					<!-- start: About Us -->
					<div id="about">
						<div class="title"><h3>Sobre nosotros</h3></div>
						<p>
							Somos un equipo de personas con pasión por viajar y en especial por la ciudad de Madrid, que además quiere ofrecerte la mejor información y los mejores artículos sobre reserva de hoteles y destinos a visitar en la capital española, pues está repleta de rincones maravillosos que explorar.
						</p>
						<p>
							Además de nuestros artículos y opiniones, te ofrecemos información detallada sobre los mejores hoteles que puedes reservar en Madrid. Estamos aquí para ayudarte en todo lo posible y darte la mejor información al respecto que puedas encontrar en Internet.
						</p>
						<p>
							Por favor, contacta con nosotros para consultarnos cualquier duda que te surja ó darnos tu opinión sobre nuestra web, puedes usar también la sección de comentarios de cada artículo para preguntar o aportar más información o incluso valorarlo puntuándolo.
						</p>
					</div>	
					<!-- end: About Us -->

					<!-- start: History -->
					<div id="history">
						<div class="title"><h3>Historia</h3></div>
						<p>
							<span class="dropcap">1</span>Somos un grupo de personas cuya profesión y pasión es la tecnología y los viajes, por eso hemos decidido publicar a través de esta y otras webs nuestros conocimientos con objeto de ayudar a más gente.
						</p>
						<p>
							<span class="dropcap color">2</span>Desde hace ya unos años, el turismo y los viajes de ocio se han convertido en algo imprescindible para nuestro tiempo de ocio y conocer nuevos lugares y ciudades como Madrid.
						</p>
						<p>
							<span class="dropcap dark">3</span>Nosotros venimos de una formación relacionada con la tecnología y somos apasionados por los viajes y el turismo, por lo que hemos decidido reunir aquí todos nuestros conocimientos para intentar crear la mejor web en español sobre viajes y reservas de hoteles en Madrid. Nuestro objetivo es ser honestos y aportar valor a nuestros lectores. 
						</p>
						<p>
							Por fin hemos hemos lanzado nuestra propia empresa, dónde intentamos ofreceros la mejor información y las mejores opiniones sobre lugares que visitar en madrid y mejores a hoteles a reservar. Estamos aquí para ayudarte, por eso <a title="Contacto" href="/contacto">contacta</a> con nosotros cuando así lo requieras.
						</p>
					</div>	
					<!-- end: History -->				
				</div>	
				
				<div class="span4">
					
					<!-- start: Sidebar -->
					<div id="sidebar" style="padding-bottom: 50px;">

						<!-- start: Skills -->
				       	<div class="title"><h3>Nuestras habilidades</h3></div>
				       	<ul class="progress-bar">
				        	<li>
				            	<h5>Desarrollo turístico ( 95% )</h5>
				            	<div class="meter"><span style="width: 90%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Reserva de hoteles( 100% )</h5>
				            	<div class="meter"><span style="width: 100%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Posicionamiento web ( 90% )</h5>
				            	<div class="meter"><span style="width: 90%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Hostelería en Madrid ( 100% )</h5>
				            	<div class="meter"><span style="width: 100%"></span></div><!-- Edite width here -->
				          	</li>
				      	</ul>
				      	<!-- end: Skills -->



					</div>
					<!-- end: Sidebar -->					
				</div>
				
			</div>
			<!--end: Row-->
		</div>
		<div>
			<%@ include file="/WEB-INF/jsp/includes/carrusel.jsp"%>
		</div> 
		<!--end: Container-->		
	</div>
	<!-- end: Wrapper  -->		
	
	<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>

</body>
</html>	