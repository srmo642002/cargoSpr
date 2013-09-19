
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
			
				<g:if test="${assignedInsuranceCertInstance?.insuranceCert}">
				<li class="fieldcontain">
					<span id="insuranceCert-label" class="property-label"><g:message code="assignedInsuranceCert.insuranceCert.label" default="Insurance Cert" /></span>
					
						<span class="property-value" aria-labelledby="insuranceCert-label"><g:link controller="insuranceCert" action="show" id="${assignedInsuranceCertInstance?.insuranceCert?.id}">${assignedInsuranceCertInstance?.insuranceCert?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.couponNumFrom}">
				<li class="fieldcontain">
					<span id="couponNumFrom-label" class="property-label"><g:message code="assignedInsuranceCert.couponNumFrom.label" default="Coupon Num From" /></span>
					
						<span class="property-value" aria-labelledby="couponNumFrom-label"><g:fieldValue bean="${assignedInsuranceCertInstance}" field="couponNumFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.couponNumTo}">
				<li class="fieldcontain">
					<span id="couponNumTo-label" class="property-label"><g:message code="assignedInsuranceCert.couponNumTo.label" default="Coupon Num To" /></span>
					
						<span class="property-value" aria-labelledby="couponNumTo-label"><g:fieldValue bean="${assignedInsuranceCertInstance}" field="couponNumTo"/></span>
					
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
			
				<g:if test="${assignedInsuranceCertInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="assignedInsuranceCert.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${assignedInsuranceCertInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.remainedCount}">
				<li class="fieldcontain">
					<span id="remainedCount-label" class="property-label"><g:message code="assignedInsuranceCert.remainedCount.label" default="Remained Count" /></span>
					
						<span class="property-value" aria-labelledby="remainedCount-label"><g:fieldValue bean="${assignedInsuranceCertInstance}" field="remainedCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${assignedInsuranceCertInstance?.usedInsuranceCert}">
				<li class="fieldcontain">
					<span id="usedInsuranceCert-label" class="property-label"><g:message code="assignedInsuranceCert.usedInsuranceCert.label" default="Used Insurance Cert" /></span>
					
						<g:each in="${assignedInsuranceCertInstance.usedInsuranceCert}" var="u">
						<span class="property-value" aria-labelledby="usedInsuranceCert-label"><g:link controller="usedInsuranceCert" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${assignedInsuranceCertInstance?.id}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
