<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">

<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>

	<div id="page-title">

		<div id="page-title-inner">

			<!-- start: Container -->
			<div class="container">

				<h1><i class="ico-suitcase ico-white"></i>Ofertas de hoteles recomendados en Madrid</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	<% pageContext.setAttribute("separadorClase", "-"); %>
	<!--start: Wrapper-->
	<div id="wrapper">
		<div id="banGoogleETop" class="iframe_wrap" style="width: 54%;margin: -16px auto;">
			<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- interior1r -->
			<ins class="adsbygoogle"
			     style="display:block"
			     data-ad-client="ca-pub-3168560600423825"
			     data-ad-slot="9603133345"
			     data-ad-format="auto"></ins>
			<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
		</div>		
		<!-- start: Container -->	
		<div class="container">

			<div id="filters" style="margin-top: 20px;">
				<ul id="optionSet1" class="option-set" data-option-key="filter">
					<li><a id="filter10" href="#filter" class="selected">Todos</a></li>
					<c:forEach var="categoria" items="${categorias}" varStatus="status" >
						<li><a id="filter1${status.count}" href="#filter" class='${fn:replace(categoria, " ", separadorClase)}'>${categoria}</a></li>
					</c:forEach>
				</ul>
				<br>
				<ul id="optionSet2" class="option-set" data-option-key="filter">
					<li><a id="filter20" href="#filter" class="selected">Cualquier precio</a></li>
					<c:forEach var="categoriaPrecio" items="${categoriasPrecio}" varStatus="status" >
						<li><a id="filter2${status.count}" href="#filter" class='${fn:replace(categoriaPrecio, " ", separadorClase)}'>${categoriaPrecio}</a></li>
					</c:forEach>
				</ul>
			</div>  
		</div>
		<!-- end: Container  -->
		
		<!--start: Container -->
    	<div class="container">
			<!-- start: -->
			<div id="portfolio-wrapper" class="row">
				<% pageContext.setAttribute("newLineChar", "\n"); %>
				<div class="span4 portfolio-item Seducción Trucos">
				<div>
				<div id="BuscadorHoteles" style="margin: 0 auto;">				
					<ins class="bookingaff" data-aid="820003" data-target_aid="819521" data-prod="nsb" data-width="325" data-height="370">
					    <!-- Anything inside will go away once widget is loaded. -->
					    <a href="//www.booking.com?aid=819521">Booking.com</a>
					</ins>
					<script type="text/javascript">
					    (function(d, sc, u) {
					      var s = d.createElement(sc), p = d.getElementsByTagName(sc)[0];
					      s.type = 'text/javascript';
					      s.async = true;
					      s.src = u + '?v=' + (+new Date());
					      p.parentNode.insertBefore(s,p);
					      })(document, 'script', '//aff.bstatic.com/static/affiliate_base/js/flexiproduct.js');
					</script>		
				</div>	
				</div>
				</div>
				<c:forEach var="publicacion" items="${publicaciones}" varStatus="status" >				
				<div class='span4 portfolio-item ${fn:replace(publicacion.clase1, " ", separadorClase)} ${fn:replace(publicacion.clase2, " ", separadorClase)} ${fn:replace(publicacion.clase3, " ", separadorClase)} ${fn:replace(publicacion.clase4, " ", separadorClase)} ${fn:replace(publicacion.clase5, " ", separadorClase)} ${fn:replace(publicacion.clase6, " ", separadorClase)} ${fn:replace(publicacion.clase7, " ", separadorClase)} ${fn:replace(publicacion.clase8, " ", separadorClase)} ${fn:replace(publicacion.clase10, " ", separadorClase)} ${fn:replace(publicacion.clase11, " ", separadorClase)} ${fn:replace(publicacion.clase12, " ", separadorClase)} ${fn:replace(publicacion.clase13, " ", separadorClase)} ${fn:replace(publicacion.clase14, " ", separadorClase)} ${fn:replace(publicacion.clase15, " ", separadorClase)}'>
					<div class="picture"><a target="_blank" href="/ofertas/${publicacion.url}" title="${publicacion.titulo}">
					
					<c:if test="${!empty publicacion.lImages }">
					<img src="${publicacion.lImages[0]}" alt="${publicacion.titulo}"/>
					</c:if>
					
					<div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a title="${publicacion.titulo}" target="_blank" href="/ofertas/${publicacion.url}">${publicacion.titulo}</a></h5>
							<c:if test="${!empty publicacion.estrellas}">
							<div class="rateit" data-rateit-value="${publicacion.estrellas}" data-rateit-ispreset="true" data-rateit-readonly="true" title="${publicacion.estrellas} Estrellas"></div>
							</c:if>
							<p>
								${fn:replace(publicacion.resumen, newLineChar, "</p><p>")}
							</p>
						</div>
						<div class="post-meta"><span><i class="mini-ico-calendar"></i><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="date" dateStyle="long" value="${publicacion.fechaCreacion}"/></span><%-- <span style=""><i class="mini-ico-user"></i>  <a href="#">Jorge Amat</a></span>--%> <%-- <span><i class="mini-ico-comment"></i><a href="/${publicacion.url}/#comments">${fn:length(publicacion.lComentarios)} comentarios</a></span>--%></div>
					</div>	
				</div>
				</c:forEach>
			</div>
			<!-- end:-->
			
			<div class="clear" style="padding-top: 25px;"></div>
			<div id="banGoogleMasVistos" style="margin-bottom: 25px;" class="iframe_wrap">
				<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- interior1r -->
				<ins class="adsbygoogle"
				     style="display:block"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="9603133345"
				     data-ad-format="auto"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>			
			<%@ include file="/WEB-INF/jsp/includes/masleidos.jsp"%>

       		<%@ include file="/WEB-INF/jsp/includes/carrusel.jsp"%>      	
		</div>
		<!--end: Container-->
	</div>
	<!-- end: Wrapper  -->

<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>

<script>
	jQuery(document).ready(function($){
	    
	    function getURLParameter(name) {
	        return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null;
	    }
	    
	    if (getURLParameter("filtro")!=null){
	    	$('#optionSet1 .selected').removeClass('selected');
	    	$('#optionSet1 .'+getURLParameter("filtro")).addClass('selected');
	    	$('#portfolio-wrapper').isotope({ filter: '.'+ getURLParameter("filtro")});
	    }
	    
	    if (getURLParameter("filtroPrecio")!=null){
	    	$('#optionSet2 .selected').removeClass('selected');
	    	$('#optionSet2 .'+getURLParameter("filtroPrecio")).addClass('selected');
	    	$('#portfolio-wrapper').isotope({ filter: '.'+ getURLParameter("filtroPrecio")});
	    }
	});
	
</script>

</body>
</html>				