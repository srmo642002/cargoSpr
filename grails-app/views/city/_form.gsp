<%@ page import="cargo.City" %>



<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="city.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${cargo.Country.list()}" optionKey="id" required="" value="${cityInstance?.country?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="city.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="50" required="" value="${cityInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'persianTitle', 'error')} ">
	<label for="persianTitle">
		<g:message code="city.persianTitle.label" default="Persian Title" />
		
	</label>
	<g:textField name="persianTitle" maxlength="50" value="${cityInstance?.persianTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'port', 'error')} ">
	<label for="port">
		<g:message code="city.port.label" default="Port" />
		
	</label>
	<g:checkBox name="port" value="${cityInstance?.port}" />
</div>

<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'abbreviation', 'error')} required">
	<label for="abbreviation">
		<g:message code="city.abbreviation.label" default="Abbreviation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="abbreviation" required="" value="${cityInstance?.abbreviation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'airports', 'error')} ">
	<label for="airports">
		<g:message code="city.airports.label" default="Airports" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cityInstance?.airports?}" var="a">
    <li><g:link controller="airport" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="airport" action="create" params="['city.id': cityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'airport.label', default: 'Airport')])}</g:link>
</li>
</ul>

</div>

