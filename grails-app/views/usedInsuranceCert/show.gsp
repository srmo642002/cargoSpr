
<%@ page import="cargo.insuranceCertificate.UsedInsuranceCert" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usedInsuranceCert" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usedInsuranceCert" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usedInsuranceCert">
			
				<g:if test="${usedInsuranceCertInstance?.assignedInsuranceCert}">
				<li class="fieldcontain">
					<span id="assignedInsuranceCert-label" class="property-label"><g:message code="usedInsuranceCert.assignedInsuranceCert.label" default="Assigned Insurance Cert" /></span>
					
						<span class="property-value" aria-labelledby="assignedInsuranceCert-label"><g:link controller="assignedInsuranceCert" action="show" id="${usedInsuranceCertInstance?.assignedInsuranceCert?.id}">${usedInsuranceCertInstance?.assignedInsuranceCert?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usedInsuranceCertInstance?.insuranceCert}">
				<li class="fieldcontain">
					<span id="insuranceCert-label" class="property-label"><g:message code="usedInsuranceCert.insuranceCert.label" default="Insurance Cert" /></span>
					
						<span class="property-value" aria-labelledby="insuranceCert-label"><g:link controller="insuranceCert" action="show" id="${usedInsuranceCertInstance?.insuranceCert?.id}">${usedInsuranceCertInstance?.insuranceCert?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usedInsuranceCertInstance?.usedDate}">
				<li class="fieldcontain">
					<span id="usedDate-label" class="property-label"><g:message code="usedInsuranceCert.usedDate.label" default="Used Date" /></span>
					
						<span class="property-value" aria-labelledby="usedDate-label"><g:formatDate date="${usedInsuranceCertInstance?.usedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usedInsuranceCertInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="usedInsuranceCert.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${usedInsuranceCertInstance?.shipment?.id}">${usedInsuranceCertInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usedInsuranceCertInstance?.transitFrom}">
				<li class="fieldcontain">
					<span id="transitFrom-label" class="property-label"><g:message code="usedInsuranceCert.transitFrom.label" default="Transit From" /></span>
					
						<span class="property-value" aria-labelledby="transitFrom-label"><g:link controller="city" action="show" id="${usedInsuranceCertInstance?.transitFrom?.id}">${usedInsuranceCertInstance?.transitFrom?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usedInsuranceCertInstance?.transitTo}">
				<li class="fieldcontain">
					<span id="transitTo-label" class="property-label"><g:message code="usedInsuranceCert.transitTo.label" default="Transit To" /></span>
					
						<span class="property-value" aria-labelledby="transitTo-label"><g:link controller="city" action="show" id="${usedInsuranceCertInstance?.transitTo?.id}">${usedInsuranceCertInstance?.transitTo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usedInsuranceCertInstance?.coupons}">
				<li class="fieldcontain">
					<span id="coupons-label" class="property-label"><g:message code="usedInsuranceCert.coupons.label" default="Coupons" /></span>
					
						<g:each in="${usedInsuranceCertInstance.coupons}" var="c">
						<span class="property-value" aria-labelledby="coupons-label"><g:link controller="couponContainer" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usedInsuranceCertInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="usedInsuranceCert.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${usedInsuranceCertInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usedInsuranceCertInstance?.totalCost}">
				<li class="fieldcontain">
					<span id="totalCost-label" class="property-label"><g:message code="usedInsuranceCert.totalCost.label" default="Total Cost" /></span>
					
						<span class="property-value" aria-labelledby="totalCost-label"><g:fieldValue bean="${usedInsuranceCertInstance}" field="totalCost"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${usedInsuranceCertInstance?.id}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
