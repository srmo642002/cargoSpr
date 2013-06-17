<%@ page import="cargo.Airport" %>



<div class="fieldcontain ${hasErrors(bean: airportInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="airport.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="city" name="city.id" from="${cargo.City.list()}" optionKey="id" required="" value="${airportInstance?.city?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airportInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="airport.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${airportInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airportInstance, field: 'abbreviation', 'error')} required">
	<label for="abbreviation">
		<g:message code="airport.abbreviation.label" default="Abbreviation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="abbreviation" required="" value="${airportInstance?.abbreviation}"/>
</div>

