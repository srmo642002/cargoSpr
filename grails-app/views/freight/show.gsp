
<%@ page import="cargo.freight.Freight" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'freight.label', default: 'Freight')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-freight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-freight" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list freight">
			
				<g:if test="${freightInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="freight.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${freightInstance?.shipment?.id}">${freightInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.placeOfLoading}">
				<li class="fieldcontain">
					<span id="placeOfLoading-label" class="property-label"><g:message code="freight.placeOfLoading.label" default="Place Of Loading" /></span>
					
						<span class="property-value" aria-labelledby="placeOfLoading-label"><g:link controller="city" action="show" id="${freightInstance?.placeOfLoading?.id}">${freightInstance?.placeOfLoading?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.placeOfDischarge}">
				<li class="fieldcontain">
					<span id="placeOfDischarge-label" class="property-label"><g:message code="freight.placeOfDischarge.label" default="Place Of Discharge" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDischarge-label"><g:link controller="city" action="show" id="${freightInstance?.placeOfDischarge?.id}">${freightInstance?.placeOfDischarge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.placeOfDelivery}">
				<li class="fieldcontain">
					<span id="placeOfDelivery-label" class="property-label"><g:message code="freight.placeOfDelivery.label" default="Place Of Delivery" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDelivery-label"><g:link controller="city" action="show" id="${freightInstance?.placeOfDelivery?.id}">${freightInstance?.placeOfDelivery?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.placeOfReceipt}">
				<li class="fieldcontain">
					<span id="placeOfReceipt-label" class="property-label"><g:message code="freight.placeOfReceipt.label" default="Place Of Receipt" /></span>
					
						<span class="property-value" aria-labelledby="placeOfReceipt-label"><g:link controller="city" action="show" id="${freightInstance?.placeOfReceipt?.id}">${freightInstance?.placeOfReceipt?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.freightPayableAt}">
				<li class="fieldcontain">
					<span id="freightPayableAt-label" class="property-label"><g:message code="freight.freightPayableAt.label" default="Freight Payable At" /></span>
					
						<span class="property-value" aria-labelledby="freightPayableAt-label"><g:fieldValue bean="${freightInstance}" field="freightPayableAt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.placeOfIssue}">
				<li class="fieldcontain">
					<span id="placeOfIssue-label" class="property-label"><g:message code="freight.placeOfIssue.label" default="Place Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="placeOfIssue-label"><g:link controller="city" action="show" id="${freightInstance?.placeOfIssue?.id}">${freightInstance?.placeOfIssue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.dateOfIssue}">
				<li class="fieldcontain">
					<span id="dateOfIssue-label" class="property-label"><g:message code="freight.dateOfIssue.label" default="Date Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="dateOfIssue-label"><g:formatDate date="${freightInstance?.dateOfIssue}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.numberOfBills}">
				<li class="fieldcontain">
					<span id="numberOfBills-label" class="property-label"><g:message code="freight.numberOfBills.label" default="Number Of Bills" /></span>
					
						<span class="property-value" aria-labelledby="numberOfBills-label"><g:fieldValue bean="${freightInstance}" field="numberOfBills"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.signedAs}">
				<li class="fieldcontain">
					<span id="signedAs-label" class="property-label"><g:message code="freight.signedAs.label" default="Signed As" /></span>
					
						<span class="property-value" aria-labelledby="signedAs-label"><g:fieldValue bean="${freightInstance}" field="signedAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.freightAction}">
				<li class="fieldcontain">
					<span id="freightAction-label" class="property-label"><g:message code="freight.freightAction.label" default="Freight Action" /></span>
					
						<span class="property-value" aria-labelledby="freightAction-label"><g:fieldValue bean="${freightInstance}" field="freightAction"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.signature}">
				<li class="fieldcontain">
					<span id="signature-label" class="property-label"><g:message code="freight.signature.label" default="Signature" /></span>
					
						<span class="property-value" aria-labelledby="signature-label"><g:fieldValue bean="${freightInstance}" field="signature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${freightInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="freight.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${freightInstance?.user?.id}">${freightInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${freightInstance?.id}" />
					<g:link class="edit" action="edit" id="${freightInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
