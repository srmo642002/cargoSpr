<%@ page import="cargo.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="country.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="50" required="" value="${countryInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'persianTitle', 'error')} required">
	<label for="persianTitle">
		<g:message code="country.persianTitle.label" default="Persian Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="persianTitle" maxlength="50" required="" value="${countryInstance?.persianTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'abbreviation', 'error')} required">
	<label for="abbreviation">
		<g:message code="country.abbreviation.label" default="Abbreviation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="abbreviation" required="" value="${countryInstance?.abbreviation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'cities', 'error')} ">
	<label for="cities">
		<g:message code="country.cities.label" default="Cities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${countryInstance?.cities?}" var="c">
    <li><g:link controller="city" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="city" action="create" params="['country.id': countryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'city.label', default: 'City')])}</g:link>
</li>
</ul>

</div>

