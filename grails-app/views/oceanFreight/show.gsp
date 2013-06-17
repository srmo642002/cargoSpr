
<%@ page import="cargo.freight.OceanFreight" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'oceanFreight.label', default: 'OceanFreight')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-oceanFreight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-oceanFreight" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list oceanFreight">
			
				<g:if test="${oceanFreightInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="oceanFreight.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${oceanFreightInstance?.shipment?.id}">${oceanFreightInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.placeOfLoading}">
				<li class="fieldcontain">
					<span id="placeOfLoading-label" class="property-label"><g:message code="oceanFreight.placeOfLoading.label" default="Place Of Loading" /></span>
					
						<span class="property-value" aria-labelledby="placeOfLoading-label"><g:link controller="city" action="show" id="${oceanFreightInstance?.placeOfLoading?.id}">${oceanFreightInstance?.placeOfLoading?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.placeOfDischarge}">
				<li class="fieldcontain">
					<span id="placeOfDischarge-label" class="property-label"><g:message code="oceanFreight.placeOfDischarge.label" default="Place Of Discharge" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDischarge-label"><g:link controller="city" action="show" id="${oceanFreightInstance?.placeOfDischarge?.id}">${oceanFreightInstance?.placeOfDischarge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.placeOfDelivery}">
				<li class="fieldcontain">
					<span id="placeOfDelivery-label" class="property-label"><g:message code="oceanFreight.placeOfDelivery.label" default="Place Of Delivery" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDelivery-label"><g:link controller="city" action="show" id="${oceanFreightInstance?.placeOfDelivery?.id}">${oceanFreightInstance?.placeOfDelivery?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.placeOfReceipt}">
				<li class="fieldcontain">
					<span id="placeOfReceipt-label" class="property-label"><g:message code="oceanFreight.placeOfReceipt.label" default="Place Of Receipt" /></span>
					
						<span class="property-value" aria-labelledby="placeOfReceipt-label"><g:link controller="city" action="show" id="${oceanFreightInstance?.placeOfReceipt?.id}">${oceanFreightInstance?.placeOfReceipt?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.freightPayableAt}">
				<li class="fieldcontain">
					<span id="freightPayableAt-label" class="property-label"><g:message code="oceanFreight.freightPayableAt.label" default="Freight Payable At" /></span>
					
						<span class="property-value" aria-labelledby="freightPayableAt-label"><g:fieldValue bean="${oceanFreightInstance}" field="freightPayableAt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.placeOfIssue}">
				<li class="fieldcontain">
					<span id="placeOfIssue-label" class="property-label"><g:message code="oceanFreight.placeOfIssue.label" default="Place Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="placeOfIssue-label"><g:link controller="city" action="show" id="${oceanFreightInstance?.placeOfIssue?.id}">${oceanFreightInstance?.placeOfIssue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.dateOfIssue}">
				<li class="fieldcontain">
					<span id="dateOfIssue-label" class="property-label"><g:message code="oceanFreight.dateOfIssue.label" default="Date Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="dateOfIssue-label"><g:formatDate date="${oceanFreightInstance?.dateOfIssue}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.numberOfBills}">
				<li class="fieldcontain">
					<span id="numberOfBills-label" class="property-label"><g:message code="oceanFreight.numberOfBills.label" default="Number Of Bills" /></span>
					
						<span class="property-value" aria-labelledby="numberOfBills-label"><g:fieldValue bean="${oceanFreightInstance}" field="numberOfBills"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.signedAs}">
				<li class="fieldcontain">
					<span id="signedAs-label" class="property-label"><g:message code="oceanFreight.signedAs.label" default="Signed As" /></span>
					
						<span class="property-value" aria-labelledby="signedAs-label"><g:fieldValue bean="${oceanFreightInstance}" field="signedAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.signature}">
				<li class="fieldcontain">
					<span id="signature-label" class="property-label"><g:message code="oceanFreight.signature.label" default="Signature" /></span>
					
						<span class="property-value" aria-labelledby="signature-label"><g:fieldValue bean="${oceanFreightInstance}" field="signature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.shippingCo}">
				<li class="fieldcontain">
					<span id="shippingCo-label" class="property-label"><g:message code="oceanFreight.shippingCo.label" default="Shipping Co" /></span>
					
						<span class="property-value" aria-labelledby="shippingCo-label"><g:fieldValue bean="${oceanFreightInstance}" field="shippingCo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.MBL}">
				<li class="fieldcontain">
					<span id="MBL-label" class="property-label"><g:message code="oceanFreight.MBL.label" default="MBL" /></span>
					
						<span class="property-value" aria-labelledby="MBL-label"><g:fieldValue bean="${oceanFreightInstance}" field="MBL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.vesselName}">
				<li class="fieldcontain">
					<span id="vesselName-label" class="property-label"><g:message code="oceanFreight.vesselName.label" default="Vessel Name" /></span>
					
						<span class="property-value" aria-labelledby="vesselName-label"><g:fieldValue bean="${oceanFreightInstance}" field="vesselName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.vesselVoyNo}">
				<li class="fieldcontain">
					<span id="vesselVoyNo-label" class="property-label"><g:message code="oceanFreight.vesselVoyNo.label" default="Vessel Voy No" /></span>
					
						<span class="property-value" aria-labelledby="vesselVoyNo-label"><g:fieldValue bean="${oceanFreightInstance}" field="vesselVoyNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.totalCollect}">
				<li class="fieldcontain">
					<span id="totalCollect-label" class="property-label"><g:message code="oceanFreight.totalCollect.label" default="Total Collect" /></span>
					
						<span class="property-value" aria-labelledby="totalCollect-label"><g:fieldValue bean="${oceanFreightInstance}" field="totalCollect"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.totalPrepaid}">
				<li class="fieldcontain">
					<span id="totalPrepaid-label" class="property-label"><g:message code="oceanFreight.totalPrepaid.label" default="Total Prepaid" /></span>
					
						<span class="property-value" aria-labelledby="totalPrepaid-label"><g:fieldValue bean="${oceanFreightInstance}" field="totalPrepaid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanFreightInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="oceanFreight.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${oceanFreightInstance?.user?.id}">${oceanFreightInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${oceanFreightInstance?.id}" />
					<g:link class="edit" action="edit" id="${oceanFreightInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
