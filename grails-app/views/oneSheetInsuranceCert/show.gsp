
<%@ page import="cargo.insuranceCertificate.OneSheetInsuranceCert" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'oneSheetInsuranceCert.label', default: 'OneSheetInsuranceCert')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-oneSheetInsuranceCert" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-oneSheetInsuranceCert" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list oneSheetInsuranceCert">
			
				<g:if test="${oneSheetInsuranceCertInstance?.agent}">
				<li class="fieldcontain">
					<span id="agent-label" class="property-label"><g:message code="oneSheetInsuranceCert.agent.label" default="Agent" /></span>
					
						<span class="property-value" aria-labelledby="agent-label"><g:link controller="localAgent" action="show" id="${oneSheetInsuranceCertInstance?.agent?.id}">${oneSheetInsuranceCertInstance?.agent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oneSheetInsuranceCertInstance?.insuranceNum}">
				<li class="fieldcontain">
					<span id="insuranceNum-label" class="property-label"><g:message code="oneSheetInsuranceCert.insuranceNum.label" default="Insurance Num" /></span>
					
						<span class="property-value" aria-labelledby="insuranceNum-label"><g:fieldValue bean="${oneSheetInsuranceCertInstance}" field="insuranceNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oneSheetInsuranceCertInstance?.issueDate}">
				<li class="fieldcontain">
					<span id="issueDate-label" class="property-label"><g:message code="oneSheetInsuranceCert.issueDate.label" default="Issue Date" /></span>
					
						<span class="property-value" aria-labelledby="issueDate-label"><g:formatDate date="${oneSheetInsuranceCertInstance?.issueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${oneSheetInsuranceCertInstance?.transitFrom}">
				<li class="fieldcontain">
					<span id="transitFrom-label" class="property-label"><g:message code="oneSheetInsuranceCert.transitFrom.label" default="Transit From" /></span>
					
						<span class="property-value" aria-labelledby="transitFrom-label"><g:link controller="city" action="show" id="${oneSheetInsuranceCertInstance?.transitFrom?.id}">${oneSheetInsuranceCertInstance?.transitFrom?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oneSheetInsuranceCertInstance?.transitTo}">
				<li class="fieldcontain">
					<span id="transitTo-label" class="property-label"><g:message code="oneSheetInsuranceCert.transitTo.label" default="Transit To" /></span>
					
						<span class="property-value" aria-labelledby="transitTo-label"><g:link controller="city" action="show" id="${oneSheetInsuranceCertInstance?.transitTo?.id}">${oneSheetInsuranceCertInstance?.transitTo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oneSheetInsuranceCertInstance?.totalCost}">
				<li class="fieldcontain">
					<span id="totalCost-label" class="property-label"><g:message code="oneSheetInsuranceCert.totalCost.label" default="Total Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalCost-label"><g:fieldValue bean="${oneSheetInsuranceCertInstance}" field="totalCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oneSheetInsuranceCertInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="oneSheetInsuranceCert.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${oneSheetInsuranceCertInstance?.shipment?.id}">${oneSheetInsuranceCertInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${oneSheetInsuranceCertInstance?.id}" />
					<g:link class="edit" action="edit" id="${oneSheetInsuranceCertInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
