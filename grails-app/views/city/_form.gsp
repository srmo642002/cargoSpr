<%@ page import="cargo.City" %>


<rg:dialog id="city" title="City Dialog">
</rg:dialog>
<rg:fields bean="${cityInstance}"></rg:fields>



%{--<f:input bean="cityInstance" property="airports[0].title"/>--}%
%{--<f:input bean="cityInstance" property="airports[0].abbreviation"/>--}%

%{--<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'title', 'error')} required">--}%
	%{--<label for="title">--}%
		%{--<g:message code="city.title.label" default="Title" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="title" maxlength="50" required="" value="${cityInstance?.title}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'persianTitle', 'error')} required">--}%
	%{--<label for="persianTitle">--}%
		%{--<g:message code="city.persianTitle.label" default="Persian Title" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="persianTitle" maxlength="50" required="" value="${cityInstance?.persianTitle}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'port', 'error')} ">--}%
	%{--<label for="port">--}%
		%{--<g:message code="city.port.label" default="Port" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:checkBox name="port" value="${cityInstance?.port}" />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'abbreviation', 'error')} required">--}%
	%{--<label for="abbreviation">--}%
		%{--<g:message code="city.abbreviation.label" default="Abbreviation" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="abbreviation" required="" value="${cityInstance?.abbreviation}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'airports', 'error')} ">--}%
	%{--<label for="airports">--}%
		%{--<g:message code="city.airports.label" default="Airports" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:select name="airports" from="${cargo.Airport.list()}" multiple="multiple" optionKey="id" size="5" value="${cityInstance?.airports*.id}" class="many-to-many"/>--}%
%{--</div>--}%

