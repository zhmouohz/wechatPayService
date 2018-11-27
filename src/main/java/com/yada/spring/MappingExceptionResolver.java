package com.yada.spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MappingExceptionResolver extends SimpleMappingExceptionResolver {

	private final static Logger log = LoggerFactory
			.getLogger(MappingExceptionResolver.class);

	@Override
	protected ModelAndView doResolveException(HttpServletRequest request,
                                              HttpServletResponse response, Object handler, Exception ex) {
		log.error("", ex);
		return super.doResolveException(request, response, handler, ex);
	}

}
