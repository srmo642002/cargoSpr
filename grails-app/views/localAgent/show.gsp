
<%@ page import="cargo.LocalAgent" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'localAgent.label', default: 'LocalAgent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-localAgent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-localAgent" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list localAgent">
			
				<g:if test="${localAgentInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="localAgent.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:link controller="city" action="show" id="${localAgentInstance?.city?.id}">${localAgentInstance?.city?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${localAgentInstance?.agent}">
				<li class="fieldcontain">
					<span id="agent-label" class="property-label"><g:message code="localAgent.agent.label" default="Agent" /></span>
					
						<span class="property-value" aria-labelledby="agent-label"><g:fieldValue bean="${localAgentInstance}" field="agent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${localAgentInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="localAgent.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${localAgentInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${localAgentInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="localAgent.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${localAgentInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${localAgentInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="localAgent.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${localAgentInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${localAgentInstance?.id}" />
					<g:link class="edit" action="edit" id="${localAgentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
