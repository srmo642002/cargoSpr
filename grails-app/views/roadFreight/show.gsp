
<%@ page import="cargo.freight.RoadFreight" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'roadFreight.label', default: 'RoadFreight')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-roadFreight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-roadFreight" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list roadFreight">
			
				<g:if test="${roadFreightInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="roadFreight.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${roadFreightInstance?.shipment?.id}">${roadFreightInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.placeOfLoading}">
				<li class="fieldcontain">
					<span id="placeOfLoading-label" class="property-label"><g:message code="roadFreight.placeOfLoading.label" default="Place Of Loading" /></span>
					
						<span class="property-value" aria-labelledby="placeOfLoading-label"><g:link controller="city" action="show" id="${roadFreightInstance?.placeOfLoading?.id}">${roadFreightInstance?.placeOfLoading?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.placeOfDischarge}">
				<li class="fieldcontain">
					<span id="placeOfDischarge-label" class="property-label"><g:message code="roadFreight.placeOfDischarge.label" default="Place Of Discharge" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDischarge-label"><g:link controller="city" action="show" id="${roadFreightInstance?.placeOfDischarge?.id}">${roadFreightInstance?.placeOfDischarge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.placeOfDelivery}">
				<li class="fieldcontain">
					<span id="placeOfDelivery-label" class="property-label"><g:message code="roadFreight.placeOfDelivery.label" default="Place Of Delivery" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDelivery-label"><g:link controller="city" action="show" id="${roadFreightInstance?.placeOfDelivery?.id}">${roadFreightInstance?.placeOfDelivery?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.placeOfReceipt}">
				<li class="fieldcontain">
					<span id="placeOfReceipt-label" class="property-label"><g:message code="roadFreight.placeOfReceipt.label" default="Place Of Receipt" /></span>
					
						<span class="property-value" aria-labelledby="placeOfReceipt-label"><g:link controller="city" action="show" id="${roadFreightInstance?.placeOfReceipt?.id}">${roadFreightInstance?.placeOfReceipt?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.freightPayableAt}">
				<li class="fieldcontain">
					<span id="freightPayableAt-label" class="property-label"><g:message code="roadFreight.freightPayableAt.label" default="Freight Payable At" /></span>
					
						<span class="property-value" aria-labelledby="freightPayableAt-label"><g:fieldValue bean="${roadFreightInstance}" field="freightPayableAt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.placeOfIssue}">
				<li class="fieldcontain">
					<span id="placeOfIssue-label" class="property-label"><g:message code="roadFreight.placeOfIssue.label" default="Place Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="placeOfIssue-label"><g:link controller="city" action="show" id="${roadFreightInstance?.placeOfIssue?.id}">${roadFreightInstance?.placeOfIssue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.dateOfIssue}">
				<li class="fieldcontain">
					<span id="dateOfIssue-label" class="property-label"><g:message code="roadFreight.dateOfIssue.label" default="Date Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="dateOfIssue-label"><g:formatDate date="${roadFreightInstance?.dateOfIssue}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.numberOfBills}">
				<li class="fieldcontain">
					<span id="numberOfBills-label" class="property-label"><g:message code="roadFreight.numberOfBills.label" default="Number Of Bills" /></span>
					
						<span class="property-value" aria-labelledby="numberOfBills-label"><g:fieldValue bean="${roadFreightInstance}" field="numberOfBills"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.signedAs}">
				<li class="fieldcontain">
					<span id="signedAs-label" class="property-label"><g:message code="roadFreight.signedAs.label" default="Signed As" /></span>
					
						<span class="property-value" aria-labelledby="signedAs-label"><g:fieldValue bean="${roadFreightInstance}" field="signedAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.signature}">
				<li class="fieldcontain">
					<span id="signature-label" class="property-label"><g:message code="roadFreight.signature.label" default="Signature" /></span>
					
						<span class="property-value" aria-labelledby="signature-label"><g:fieldValue bean="${roadFreightInstance}" field="signature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.CMR}">
				<li class="fieldcontain">
					<span id="CMR-label" class="property-label"><g:message code="roadFreight.CMR.label" default="CMR" /></span>
					
						<span class="property-value" aria-labelledby="CMR-label"><g:fieldValue bean="${roadFreightInstance}" field="CMR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.totalCollect}">
				<li class="fieldcontain">
					<span id="totalCollect-label" class="property-label"><g:message code="roadFreight.totalCollect.label" default="Total Collect" /></span>
					
						<span class="property-value" aria-labelledby="totalCollect-label"><g:fieldValue bean="${roadFreightInstance}" field="totalCollect"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.totalPrepaid}">
				<li class="fieldcontain">
					<span id="totalPrepaid-label" class="property-label"><g:message code="roadFreight.totalPrepaid.label" default="Total Prepaid" /></span>
					
						<span class="property-value" aria-labelledby="totalPrepaid-label"><g:fieldValue bean="${roadFreightInstance}" field="totalPrepaid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadFreightInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="roadFreight.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${roadFreightInstance?.user?.id}">${roadFreightInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${roadFreightInstance?.id}" />
					<g:link class="edit" action="edit" id="${roadFreightInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
