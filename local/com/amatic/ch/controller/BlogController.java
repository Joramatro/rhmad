package com.amatic.ch.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.cache.CacheException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amatic.ch.constants.WebConstants;
import com.amatic.ch.dto.Publicacion;
import com.amatic.ch.exception.UnknownResourceException;
import com.amatic.ch.utils.WebUtils;

@Controller
public class BlogController extends PublicacionAbstract {

    @RequestMapping(value = { "/{url}" }, method = RequestMethod.GET)
    public String cargarPublicacion(ModelMap model, @PathVariable String url,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException, NoSuchAlgorithmException, CacheException {

	return setPublicacionArticulo(url, request, model);
    }

    String setPublicacionArticulo(String url, HttpServletRequest request,
	    ModelMap model) throws NoSuchAlgorithmException,
	    UnsupportedEncodingException, CacheException {
	String keyNormalizada = WebUtils.SHA1(url.replaceAll("-", " ")
		.toLowerCase());
	Publicacion publicacion = publicacionService.getPublicacion(
		keyNormalizada, WebConstants.SessionConstants.ARTICULO);
	String view = "articulo";

	if (publicacion == null) {
	    String uri = request.getRequestURI();
	    throw new UnknownResourceException("No existe el recurso: " + uri);
	    // return "channelNotFound";
	}
	// incremeanting number viewers
	publicacion.setNumVisitas(publicacion.getNumVisitas() + 1);
	publicacionService.update(publicacion);

	model.addAttribute("publicacion", publicacion);

	List<Publicacion> publicaciones = publicacionService
		.getUltimasPublicaciones(publicacion.getTipo());

	List<Publicacion> publicacionesInteresantes = new ArrayList<Publicacion>();
	for (Publicacion publicacionNoRep : publicaciones) {
	    if (!publicacion.getKey().equals(publicacionNoRep.getKey())) {
		publicacionesInteresantes.add(publicacionNoRep);
	    }
	}

	// List<Publicacion> publicacionesMVE = publicacionService
	// .getPublicacionesMasVistas(WebConstants.SessionConstants.EBOOK);

	List<Publicacion> publicacionesMVA = publicacionService
		.getPublicacionesMasVistas(WebConstants.SessionConstants.ARTICULO);

	// model.addAttribute("publicacionesMVE", publicacionesMVE);

	model.addAttribute("publicacionesMVA", publicacionesMVA);

	model.addAttribute("publicaciones", publicacionesInteresantes);

	return view;
    }

    @RequestMapping(value = { "/{url}/nuevoComentario" }, method = { RequestMethod.POST })
    public void guardarComentario(ModelMap model,
	    @RequestParam("url") String url,
	    @RequestParam("nombre") String nombre,
	    @RequestParam("email") String email,
	    @RequestParam("puntos") String puntos,
	    @RequestParam("comentario") String comentario,
	    @RequestParam("web") String web,
	    @RequestParam("nbrComment") String nbrComment,
	    HttpServletRequest request, HttpServletResponse response)
	    throws Exception {

	guardarComentarioPub(request, url, nombre, email, puntos, comentario,
		web, nbrComment, response);

	response.sendRedirect("/" + url);

    }

    @RequestMapping(value = { "/blog" }, method = { RequestMethod.GET })
    public String getPublicaciones(ModelMap model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException, CacheException {

	setPublicaciones(model, WebConstants.SessionConstants.ARTICULO);

	return "blog";
    }

    @RequestMapping(value = { "/ofertas" }, method = { RequestMethod.GET })
    public String getPublicacionese(ModelMap model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException, CacheException {

	setPublicaciones(model, WebConstants.SessionConstants.EBOOK);

	return "ebooks";
    }

    // @RequestMapping(value = { "/extras" }, method = { RequestMethod.GET })
    // public String getAccesorios(ModelMap model, HttpServletRequest request,
    // HttpServletResponse response) throws IOException {
    //
    // setPublicaciones(model, WebConstants.SessionConstants.ACCESORIO);
    //
    // return "extras";
    // }

    @RequestMapping(value = { "/ofertas/{url}" }, method = { RequestMethod.GET })
    public String getVenta(ModelMap model, @PathVariable String url,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException, NoSuchAlgorithmException, CacheException {
	String originalUrl = url;
	String keybNormalizada = null;
	if (url.endsWith("-2")) {
	    originalUrl = originalUrl.replace("-2", "");
	} else if (url.endsWith("-3")) {
	    originalUrl = originalUrl.replace("-3", "");
	} else if (url.endsWith("-4")) {
	    originalUrl = originalUrl.replace("-4", "");
	} else if (url.endsWith("-5")) {
	    originalUrl = originalUrl.replace("-5", "");
	} else if (url.endsWith("-6")) {
	    originalUrl = originalUrl.replace("-6", "");
	} else if (url.endsWith("-7")) {
	    originalUrl = originalUrl.replace("-7", "");
	} else if (url.endsWith("-8")) {
	    originalUrl = originalUrl.replace("-8", "");
	} else if (url.endsWith("-9")) {
	    originalUrl = originalUrl.replace("-9", "");
	} else if (url.endsWith("-10")) {
	    originalUrl = originalUrl.replace("-10", "");
	} else if (url.endsWith("-11")) {
	    originalUrl = originalUrl.replace("-11", "");
	} else if (url.endsWith("-12")) {
	    originalUrl = originalUrl.replace("-12", "");
	}

	String keyNormalizada = WebUtils.SHA1(originalUrl.replaceAll("-", " ")
		.toLowerCase());
	Publicacion publicacion = null;

	publicacion = publicacionService.getPublicacion(keyNormalizada,
		WebConstants.SessionConstants.EBOOK);
	if (publicacion == null) {
	    publicacion = publicacionService.getPublicacion(keyNormalizada,
		    WebConstants.SessionConstants.ARTICULO);
	}

	if (publicacion == null && !originalUrl.equals(url)) {
	    keybNormalizada = new String(WebUtils.SHA1(url.replaceAll("-", " ")
		    .toLowerCase()));
	    publicacion = publicacionService.getPublicacion(keybNormalizada,
		    WebConstants.SessionConstants.EBOOK);
	    if (publicacion == null) {
		publicacion = publicacionService
			.getPublicacion(keybNormalizada,
				WebConstants.SessionConstants.ARTICULO);
	    }
	}

	if (publicacion == null) {
	    String uri = request.getRequestURI();
	    throw new UnknownResourceException("No existe la ruta: " + uri);
	    // return "channelNotFound";
	}

	StringBuffer mensaje = new StringBuffer();
	Enumeration<String> headerNames = request.getHeaderNames();
	boolean existsAccept = false;
	boolean existsCookie = false;
	boolean existsReferer = false;
	boolean condition1 = false;
	boolean condition2 = false;
	boolean condition3 = false;
	boolean condition4 = false;
	while (headerNames.hasMoreElements()) {
	    String headerName = headerNames.nextElement();
	    if (headerName.equals("Accept")) {
		existsAccept = true;
	    }
	    if (headerName.equals("Cookie")) {
		existsCookie = true;
	    }
	    if (headerName.equals("Referer")) {
		existsReferer = true;
	    }
	    mensaje.append(headerName);
	    String headerValue = request.getHeader(headerName);
	    if (headerName.equals("X-AppEngine-Country")
		    && headerValue.equals("US")) {
		condition1 = true;
	    }
	    if (headerName.equals("X-AppEngine-Region")
		    && headerValue.equals("?")) {
		condition2 = true;
	    }
	    if (headerName.equals("X-AppEngine-City")
		    && headerValue.equals("?")) {
		condition3 = true;
	    }
	    if (headerName.equals("X-AppEngine-Country")
		    && headerValue.equals("ZZ")) {
		condition4 = true;
	    }
	    if (headerName.equals("User-Agent")
		    && headerValue.contains("Zookabot")) {
		existsAccept = false;
	    }
	    mensaje.append(", " + headerValue);
	    mensaje.append("\n");
	}
	mensaje.append("ip: " + WebUtils.getClienAddress(request) + "\n");
	if (condition1 && condition2 && condition3 && !existsCookie) {
	    // mensaje.append("NO ENVIADO A VENTAS");
	    // Mail.sendMail(mensaje.toString(), "CEH " +
	    // request.getRequestURI());
	    return null;
	} else if (existsAccept && !existsCookie && !existsReferer
		&& condition4) {
	    // bot chungo
	    // mensaje.append("NO ENVIADO Blue Coat");
	    // Mail.sendMail(mensaje.toString(), "CCH " +
	    // request.getRequestURI());
	    return null;
	} else if (existsAccept) {
	    // Mail.sendMail(mensaje.toString(), "CCH " +
	    // request.getRequestURI());
	    model.addAttribute("publicacion", publicacion);
	    if (keybNormalizada != null) {
		String lastTwoChars = url.substring(url.length() - 2);
		if (url.endsWith(lastTwoChars + "-2")) {
		    return "venta/venta2";
		} else if (url.endsWith(lastTwoChars + "-3")) {
		    return "venta/venta3";
		} else if (url.endsWith(lastTwoChars + "-4")) {
		    return "venta/venta4";
		} else if (url.endsWith(lastTwoChars + "-5")) {
		    return "venta/venta5";
		} else if (url.endsWith(lastTwoChars + "-6")) {
		    return "venta/venta6";
		} else if (url.endsWith(lastTwoChars + "-7")) {
		    return "venta/venta7";
		} else if (url.endsWith(lastTwoChars + "-8")) {
		    return "venta/venta8";
		} else if (url.endsWith(lastTwoChars + "-9")) {
		    return "venta/venta9";
		} else if (url.endsWith(lastTwoChars + "-10")) {
		    return "venta/venta10";
		} else if (url.endsWith(lastTwoChars + "-11")) {
		    return "venta/venta11";
		} else if (url.endsWith(lastTwoChars + "-12")) {
		    return "venta/venta12";
		} else {
		    return "venta/venta";
		}
	    } else {

		if (url.endsWith("-2")) {
		    return "venta/venta2";
		} else if (url.endsWith("-3")) {
		    return "venta/venta3";
		} else if (url.endsWith("-4")) {
		    return "venta/venta4";
		} else if (url.endsWith("-5")) {
		    return "venta/venta5";
		} else if (url.endsWith("-6")) {
		    return "venta/venta6";
		} else if (url.endsWith("-7")) {
		    return "venta/venta7";
		} else if (url.endsWith("-8")) {
		    return "venta/venta8";
		} else if (url.endsWith("-9")) {
		    return "venta/venta9";
		} else if (url.endsWith("-10")) {
		    return "venta/venta10";
		} else if (url.endsWith("-11")) {
		    return "venta/venta11";
		} else if (url.endsWith("-12")) {
		    return "venta/venta12";
		} else {
		    return "venta/venta";
		}
	    }
	} else {
	    // mensaje.append("NO ENVIADO A VENTAS POR NO TENER ACCEPT");
	    // Mail.sendMail(mensaje.toString(), "CMH " +
	    // request.getRequestURI());

	    return null;
	}

    }

}
