<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>

	<!-- start: Meta -->
	<meta charset="utf-8">
	<meta name="robots" content="index,all" />
	<meta name="revisit-after" content="1 days" />
	<meta name="lang" content="es" />
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	<c:choose>
	<c:when test="${!empty publicacion && publicacion.tipo eq 'EB'}">
		<title>${publicacion.titulo} en análisis y online en Comprar Móviles Hoy</title> 
		<meta name="description" content="${publicacion.descripcion} en Comprar Móviles Hoy"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Móviles Hoy" />
		<meta name="application-name" content="${publicacion.titulo} en Comprar Móviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="${publicacion.titulo} en análisis y online en Comprar Móviles Hoy"/>
		<meta property="og:description" content="${publicacion.descripcion} en Comprar Móviles Hoy"/>
		<meta property="og:type" content="movil"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com/${publicacion.url}"/>
		<meta property="og:image" content="${publicacion.lImages[0]}"/>
		<meta property="og:email" content="hola@comprarmovileshoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="${publicacion.titulo}">
		<meta name="twitter:description" content="${publicacion.descripcion}">
		<meta name="twitter:image" content="${publicacion.lImages[0]}">
		<meta name="twitter:domain" content="comprarmovileshoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com/${publicacion.url}“/>
	</c:when>
	<c:when test="${!empty publicacion && publicacion.tipo eq 'AR'}">
		<title>${publicacion.titulo} en Comprar Móviles Hoy</title> 
		<meta name="description" content="${publicacion.descripcion}"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Móviles Hoy" />
		<meta name="application-name" content="${publicacion.titulo} en Comprar Móviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="${publicacion.titulo}"/>
		<meta property="og:description" content="${publicacion.descripcion}"/>
		<meta property="og:type" content="articulos"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com/${publicacion.url}"/>
		<meta property="og:image" content="${publicacion.lImages[0]}"/>
		<meta property="og:email" content="hola@comprarmovileshoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="${publicacion.titulo}">
		<meta name="twitter:description" content="${publicacion.descripcion}">
		<meta name="twitter:image" content="${publicacion.lImages[0]}">
		<meta name="twitter:domain" content="comprarmovileshoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com/${publicacion.url}“/>
	</c:when>	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'extras')}">
		<title>Accesorios, fundas y protectores online para tu móvil en Comprar Móviles Hoy</title> 
		<meta name="description" content="Accede a accesorios online para tu móvil como fundas, carcasas, baterías, cargadores, protectores o soportes, para Smartphones libres, Android, Sony Ericsson, Blackberry, Motorola, Samsung, Sony, Alcatel, Huawei o Apple"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Móviles Hoy" />
		<meta name="application-name" content="Extras en Comprar Moviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Extras, accesorios, fundas y protectores online para tu móvil en Comprar Móviles Hoy"/>
		<meta property="og:description" content="Accede a accesorios online para tu móvil como fundas, carcasas, baterías, cargadores, protectores o soportes, para smartphones libres, Android, Sony Ericsson, Blackberry, Motorola, Samsung, Sony, Alcatel, Huawei o Apple"/>
		<meta property="og:type" content="extras"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com/extras"/>
		<c:if test="${!empty publicaciones}">
			<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
		</c:if>
		<meta property="og:email" content="hola@comprarmovileshoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@ComprarHoy2">
		<meta name="twitter:title" content="Accesorios, fundas y protectores online para tu móvil en Comprar Móviles Hoy">
		<meta name="twitter:description" content="Accede a accesorios online para tu móvil como fundas, carcasas, baterías, cargadores, protectores o soportes, para smartphones libres, Android, Sony Ericsson, Blackberry, Motorola, Samsung, Sony, Alcatel, Huawei o Apple">
		<c:if test="${!empty publicaciones}">
			<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
		</c:if>
		<meta name="twitter:domain" content="comprarmovileshoy.com">
		<!-- end: Twitter tags -->		
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com/extras“/>
	</c:when>
		<c:when test="${fn:contains(pageContext.request.requestURI, 'sobre')}">
		<title>Sobre Nosotros y Comprar Móviles Hoy</title> 
		<meta name="description" content="Toda la información sobre los que trabajamos en Comprar Móviles Hoy, su experiencia y valores profesionales"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Móviles Hoy" />
		<meta name="application-name" content="Sobre Nosotros en Comprar Móviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Sobre Nosotros en Comprar Móviles Hoy"/>
		<meta property="og:description" content="Toda la información sobre los que trabajamos en Comprar Móbil Hoy, su experiencia y valores profesionales"/>
		<meta property="og:type" content="sobre"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com/sobre"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hola@comprarmovileshoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="Sobre nosotros en Comprar Móviles Hoy">
		<meta name="twitter:description" content="Toda la información sobre los que trabajamos en Comprar Móviles Hoy, su experiencia y valores profesionales">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comprarmovileshoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com/sobre“/>	
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'contacta')}">
		<title>Contacta con Comprar Móviles Hoy</title> 
		<meta name="description" content="Contacta con los que trabajamos en Comprar Móviles Hoy"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Móviles Hoy" />
		<meta name="application-name" content="Contacto en Comprar Móviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Contacta en Comprar Móviles Hoy"/>
		<meta property="og:description" content="Contacta con los que trabajamos en Comprar Móviles Hoy"/>
		<meta property="og:type" content="contacto"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com/contacto"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hola@comprarmovileshoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="Contacta con nosotros en Comprar Móviles Hoy">
		<meta name="twitter:description" content="Contacta con los que trabajamos en Comprar Móviles Hoy">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comprarmovileshoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com/contacto“/>
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'ebooks')}">
		<title>Móviles, precios y comparativas online en Comprar Móviles Hoy</title> 
		<meta name="description" content="Análisis, precios y comparativas online de móviles para que puedas comparar online y móviles de distintos tipos, Smartphones libres, android, baratos, de marcas como Samsung, Sony, Alcatel, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson, Blackberry o iPhone"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Móviles Hoy" />
		<meta name="application-name" content="Móviles en Comprar Móviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Móviles, precios y comparativas online en Comprar Móviles Hoy"/>
		<meta property="og:description" content="Análisis, precios y comparativas online de móviles para que puedas comparar online y móviles de distintos tipos, smartphones, android, libres y baratos, de marcas como Samsung, Sony, Alcatel, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson, Blackberry o iPhone"/>
		<meta property="og:type" content="movil"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com/moviles"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hola@comprarmovileshoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@ComprarHoy2">
		<meta name="twitter:title" content="Móviles, precios y comparativas online en Comprar Móviles Hoy">
		<meta name="twitter:description" content="Análisis, precios y comparativas online de móviles para que puedas comparar online y móviles de distintos tipos, Smartphones libres, android, baratos, de marcas como Samsung, Sony, Alcatel, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson, Blackberry o iPhone">
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comprarmovileshoy.com">
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com/moviles“/>
		<!-- end: Twitter tags -->		
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'blog')}">
		<title>Artículos y opinión sobre móviles en Comprar Móviles Hoy</title> 
		<meta name="description" content="Opinión, artículos y comparativas en nuestro blog de los mejores móviles para que puedas comparar precios online y móviles de distintos tipos, smartphones, android, libres y baratos, de marcas como Samsung, Sony, Alcatel, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson, Blackberry o iPhone"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Móvil Hoy" />
		<meta name="application-name" content="Blog en Comprar Móviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Opinión y detalles sobre móviles para que puedas comparararlos y elegir tu móvil online"/>
		<meta property="og:description" content="Opinión, artículos y comparativas en nuestro blog de los mejores móviles para que puedas comparar precios online y móviles de distintos tipos, Smartphones libres, android, baratos, de marcas como Samsung, Sony, Alcatel, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson, Blackberry o iPhone"/>
		<meta property="og:type" content="articulo"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com/blog"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hola@comprarmovileshoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@ComprarHoy2">
		<meta name="twitter:title" content="Opinión y detalles sobre móviles para que puedas comparararlos y elegir tu móvil online">
		<meta name="twitter:description" content="Opinión, artículos y comparativas en nuestro blog de los mejores móviles para que puedas comparar precios online y móviles de distintos tipos, smartphones, android, libres y baratos, de marcas como Samsung, Sony, Alcatel, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson, Blackberry o iPhone">
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comprarmovileshoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com/blog“/>		
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'privacidad')}">
		<title>Política de privacidad de Comprar Móviles Hoy</title> 
		<meta name="description" content="Política de privacidad y condiciones de uso de Comprar Móviles Hoy"/>
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Móviles Hoy" />
		<meta name="application-name" content="Política privacidad Comprar Móviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Política de privacidad de Comprar Móviles Hoy"/>
		<meta property="og:description" content="Política de privacidad y condiciones de uso de Comprar Móviles Hoy"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com/politica-de-privacidad"/>
		<meta property="og:email" content="hola@comprarmovileshoy.com/"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@ComprarHoy2">
		<meta name="twitter:title" content="Política de privacidad de Comprar Móviles Hoy">
		<meta name="twitter:description" content="Política de privacidad y condiciones de uso de Comprar Móviles Hoy">
		<meta name="twitter:domain" content="comprarmovileshoy.com/">
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com/politica-de-privacidad“/>
		<!-- end: Twitter tags -->		
	</c:when>	
	<c:otherwise>
		<title>Bienvenido a Comprar Móviles Hoy - Análisis y opinión sobre móviles libres y smartphones para comprar un móvil barato y comparar precios online</title> 
		<meta name="description" content="Información para que puedas comprar online móviles libres y baratos para conseguir el móvil más adecuado a tus necesidades y comparar precios y móviles de distintos tipos, smartphones libres, android y baratos, de marcas como Samsung, Sony, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson o iPhone"/>
		<meta name="author" content="Comprar Móviles Hoy" />
		<meta name="copyright" content="Comprar Móviles Hoy" />
		<meta name="application-name" content="móviles en Comprar Móviles Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Comprar Móviles Hoy - Análisis y opinión sobre móviles libres y smartphones para comprar un smartphone libre, barato y comparar precios online"/>
		<meta property="og:description" content="Información para que puedas comprar online el móvil libre más adecuado a tus necesidades y comparar precios y móviles de distintos tipos, smartphones libres, android, baratos, de marcas como Samsung, Sony, Alcatel, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson, Blackberry o iPhone"/>
		<meta property="og:type" content="principal"/>
		<meta property="og:url" content="http://www.comprarmovileshoy.com"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hola@comprarmovileshoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy2">
		<meta name="twitter:creator" content="@ComprarHoy2">
		<meta name="twitter:title" content="Análisis y opinión sobre móviles y smartphones libres para comprar un móvil barato y comparar precios online">
		<meta name="twitter:description" content="Información para que puedas comprar online el móvil libre más adecuado a tus necesidades y comparar precios y móviles de distintos tipos, smartphones libres, android, libres y baratos, de marcas como Samsung, Sony, Alcatel, Huawei, HTC, LG, Nokia, Motorola, Sony Ericsson, Blackberry o iPhone">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comprarmovileshoy.com">
		<!-- end: Twitter tags -->				
		<link rel=”canonical” href=”http://www.comprarmovileshoy.com“/>
	</c:otherwise>		
	</c:choose>
	<link rel="alternate" type="application/rss+xml" title="Comprar Móviles Hoy RSS Feed" href="http://www.comprarmovileshoy.com/rssfeed" />
	<link rel="author" href="https://plus.google.com/109937898739836694401" />
	<link rel="publisher" href="https://www.google.com/+Comprarmovileshoy" />
	<style>
	@font-face {
	  font-family: 'Droid Sans';
	  font-style: normal;
	  font-weight: 400;
	  src: local('Droid Sans'), local('DroidSans'), url(http://themes.googleusercontent.com/static/fonts/droidsans/v3/s-BiyweUPV0v-yRb-cjciBsxEYwM7FgeyaSgU71cLG0.woff) format('woff');
	}
	@font-face {
	  font-family: 'Droid Sans';
	  font-style: normal;
	  font-weight: 700;
	  src: local('Droid Sans Bold'), local('DroidSans-Bold'), url(http://themes.googleusercontent.com/static/fonts/droidsans/v3/EFpQQyG9GqCrobXxL-KRMQFhaRv2pGgT5Kf0An0s4MM.woff) format('woff');
	}
	</style>
    <!-- start: CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/css/parallax-sliderv1.css" rel="stylesheet">   
	<%@ include file="/WEB-INF/jsp/includes/styles.jsp"%>
	<!-- end: CSS -->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-46821516-1', 'comprarmovileshoy.com');
	  ga('send', 'pageview');
</script>
</head>
<body>
	
	<!--start: Header -->
	<header>
		
		<!--start: Container -->
		<div class="container">
			<%-- <div>
				<script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- includes ch -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:970px;height:90px"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="2942822544"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>--%>
			<!--start: Navbar -->
			<div class="navbar navbar-inverse">
	    		<div class="navbar-inner">
	          		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	          		</a>
					<a class="brand" href="/"><i class="ico-phone circle"></i>Comprar Móviles <span>Hoy</span>.</a>
	          		<div class="nav-collapse collapse">
	            		<ul id="menuSuperior" class="nav" style="margin-right:-30px;">
							<li id="menuInicio">
	                			<a onClick="ga('send', 'event', 'Menu Superior', 'Menu Inicio', 'Inicio');" href="/">Inicio</a>
	              			</li>
	              			<li id="menuMoviles"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Moviles', 'Moviles');" title="Móviles" href="/moviles">Móviles</a></li>
							<li class="dropdown">
	                			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Destacados<b class="caret"></b></a>
	                			<ul class="dropdown-menu">
	                				<c:forEach var="publicacion" items="${publicacionesDestacadas}" varStatus="status" end="5">
										<li><a onClick="ga('send', 'event', 'Menu Superior', '${publicacion.titulo}', 'Destacados');" title="${publicacion.titulo}" href="/${publicacion.url}">${publicacion.titulo}</a></li>									
	                  				</c:forEach>	                					                  				
								</ul>
	              			</li>
	              			<li id="menuExtras"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Extras', 'Extras');" title="Extras" href="/extras">Extras</a></li>
	              			<li id="menuBlog"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Blog', 'Blog');" title="Blog" href="/blog">Blog</a></li>	              																			
	              			<li id="menuSobre"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Sobre', 'Sobre');" title="Sobre Nosotros" href="/sobre">Sobre nosotros</a></li>
	              			<li id="menuContacto"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu Contacto', 'Contacto');" title="Contacto" href="/contacto">Contacto</a></li>
	              			<li style="margin-top: -8px;"><a onClick="ga('send', 'event', 'Menu Superior', 'Menu RSS', 'RSS');" href="#newsletter" accesskey="r"><img src="/img/rssmenu.png" alt="RSS"></a></li>
	            		</ul>
	          		</div>
	        	</div>
	      	</div>
			<!--end: Navbar -->
						
		</div>
		<!--end: Container-->			
	<div id="banGooHeader" class="iframe_wrap" style="width: 74%; margin:0 auto;">
		<%--
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- superior 1 skyscraper cafetera -->
		<ins class="adsbygoogle"
		     style="display:inline-block;width:728px;height:90px"
		     data-ad-client="ca-pub-3168560600423825"
		     data-ad-slot="8273478147"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
		--%>
	</div>			
	</header>
	<!--end: Header-->