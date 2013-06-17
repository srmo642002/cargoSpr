
<%@ page import="cargo.insuranceCertificate.AssignedInsuranceCert" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-assignedInsuranceCert" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-assignedInsuranceCert" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list assignedInsuranceCert">
			
				<g:if test="${assignedInsuranceCertInstance?.agent}">
				<li class="fieldcontain">
					<span id="agent-label" class="property-label"><g:message code="assignedInsuranceCert.agent.label" default="Agent" /></span>
					
						<span class="property-value" aria-labelledby="agent-label"><g:link controller="localAgent" action="show" id="${assignedInsuranceCertInstance?.agent?.id}">${assignedInsuranceCertInstance?.agent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.sendingDate}">
				<li class="fieldcontain">
					<span id="sendingDate-label" class="property-label"><g:message code="assignedInsuranceCert.sendingDate.label" default="Sending Date" /></span>
					
						<span class="property-value" aria-labelledby="sendingDate-label"><g:formatDate date="${assignedInsuranceCertInstance?.sendingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.serialNumFrom}">
				<li class="fieldcontain">
					<span id="serialNumFrom-label" class="property-label"><g:message code="assignedInsuranceCert.serialNumFrom.label" default="Serial Num From" /></span>
					
						<span class="property-value" aria-labelledby="serialNumFrom-label"><g:fieldValue bean="${assignedInsuranceCertInstance}" field="serialNumFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.serialNumTo}">
				<li class="fieldcontain">
					<span id="serialNumTo-label" class="property-label"><g:message code="assignedInsuranceCert.serialNumTo.label" default="Serial Num To" /></span>
					
						<span class="property-value" aria-labelledby="serialNumTo-label"><g:fieldValue bean="${assignedInsuranceCertInstance}" field="serialNumTo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.totalCount}">
				<li class="fieldcontain">
					<span id="totalCount-label" class="property-label"><g:message code="assignedInsuranceCert.totalCount.label" default="Total Count" /></span>
					
						<span class="property-value" aria-labelledby="totalCount-label"><g:fieldValue bean="${assignedInsuranceCertInstance}" field="totalCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.insuranceCert}">
				<li class="fieldcontain">
					<span id="insuranceCert-label" class="property-label"><g:message code="assignedInsuranceCert.insuranceCert.label" default="Insurance Cert" /></span>
					
						<span class="property-value" aria-labelledby="insuranceCert-label"><g:link controller="insuranceCert" action="show" id="${assignedInsuranceCertInstance?.insuranceCert?.id}">${assignedInsuranceCertInstance?.insuranceCert?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${assignedInsuranceCertInstance?.id}" />
					<g:link class="edit" action="edit" id="${assignedInsuranceCertInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
