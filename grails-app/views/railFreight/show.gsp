
<%@ page import="cargo.freight.RailFreight" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'railFreight.label', default: 'RailFreight')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-railFreight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-railFreight" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list railFreight">
			
				<g:if test="${railFreightInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="railFreight.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${railFreightInstance?.shipment?.id}">${railFreightInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.placeOfLoading}">
				<li class="fieldcontain">
					<span id="placeOfLoading-label" class="property-label"><g:message code="railFreight.placeOfLoading.label" default="Place Of Loading" /></span>
					
						<span class="property-value" aria-labelledby="placeOfLoading-label"><g:link controller="city" action="show" id="${railFreightInstance?.placeOfLoading?.id}">${railFreightInstance?.placeOfLoading?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.placeOfDischarge}">
				<li class="fieldcontain">
					<span id="placeOfDischarge-label" class="property-label"><g:message code="railFreight.placeOfDischarge.label" default="Place Of Discharge" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDischarge-label"><g:link controller="city" action="show" id="${railFreightInstance?.placeOfDischarge?.id}">${railFreightInstance?.placeOfDischarge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.placeOfDelivery}">
				<li class="fieldcontain">
					<span id="placeOfDelivery-label" class="property-label"><g:message code="railFreight.placeOfDelivery.label" default="Place Of Delivery" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDelivery-label"><g:link controller="city" action="show" id="${railFreightInstance?.placeOfDelivery?.id}">${railFreightInstance?.placeOfDelivery?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.placeOfReceipt}">
				<li class="fieldcontain">
					<span id="placeOfReceipt-label" class="property-label"><g:message code="railFreight.placeOfReceipt.label" default="Place Of Receipt" /></span>
					
						<span class="property-value" aria-labelledby="placeOfReceipt-label"><g:link controller="city" action="show" id="${railFreightInstance?.placeOfReceipt?.id}">${railFreightInstance?.placeOfReceipt?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.freightPayableAt}">
				<li class="fieldcontain">
					<span id="freightPayableAt-label" class="property-label"><g:message code="railFreight.freightPayableAt.label" default="Freight Payable At" /></span>
					
						<span class="property-value" aria-labelledby="freightPayableAt-label"><g:fieldValue bean="${railFreightInstance}" field="freightPayableAt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.placeOfIssue}">
				<li class="fieldcontain">
					<span id="placeOfIssue-label" class="property-label"><g:message code="railFreight.placeOfIssue.label" default="Place Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="placeOfIssue-label"><g:link controller="city" action="show" id="${railFreightInstance?.placeOfIssue?.id}">${railFreightInstance?.placeOfIssue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.dateOfIssue}">
				<li class="fieldcontain">
					<span id="dateOfIssue-label" class="property-label"><g:message code="railFreight.dateOfIssue.label" default="Date Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="dateOfIssue-label"><g:formatDate date="${railFreightInstance?.dateOfIssue}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.numberOfBills}">
				<li class="fieldcontain">
					<span id="numberOfBills-label" class="property-label"><g:message code="railFreight.numberOfBills.label" default="Number Of Bills" /></span>
					
						<span class="property-value" aria-labelledby="numberOfBills-label"><g:fieldValue bean="${railFreightInstance}" field="numberOfBills"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.signedAs}">
				<li class="fieldcontain">
					<span id="signedAs-label" class="property-label"><g:message code="railFreight.signedAs.label" default="Signed As" /></span>
					
						<span class="property-value" aria-labelledby="signedAs-label"><g:fieldValue bean="${railFreightInstance}" field="signedAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.signature}">
				<li class="fieldcontain">
					<span id="signature-label" class="property-label"><g:message code="railFreight.signature.label" default="Signature" /></span>
					
						<span class="property-value" aria-labelledby="signature-label"><g:fieldValue bean="${railFreightInstance}" field="signature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.railWayCo}">
				<li class="fieldcontain">
					<span id="railWayCo-label" class="property-label"><g:message code="railFreight.railWayCo.label" default="Rail Way Co" /></span>
					
						<span class="property-value" aria-labelledby="railWayCo-label"><g:fieldValue bean="${railFreightInstance}" field="railWayCo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.SMGSNO}">
				<li class="fieldcontain">
					<span id="SMGSNO-label" class="property-label"><g:message code="railFreight.SMGSNO.label" default="SMGSNO" /></span>
					
						<span class="property-value" aria-labelledby="SMGSNO-label"><g:fieldValue bean="${railFreightInstance}" field="SMGSNO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.stationCode}">
				<li class="fieldcontain">
					<span id="stationCode-label" class="property-label"><g:message code="railFreight.stationCode.label" default="Station Code" /></span>
					
						<span class="property-value" aria-labelledby="stationCode-label"><g:fieldValue bean="${railFreightInstance}" field="stationCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.totalCollect}">
				<li class="fieldcontain">
					<span id="totalCollect-label" class="property-label"><g:message code="railFreight.totalCollect.label" default="Total Collect" /></span>
					
						<span class="property-value" aria-labelledby="totalCollect-label"><g:fieldValue bean="${railFreightInstance}" field="totalCollect"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.totalPrepaid}">
				<li class="fieldcontain">
					<span id="totalPrepaid-label" class="property-label"><g:message code="railFreight.totalPrepaid.label" default="Total Prepaid" /></span>
					
						<span class="property-value" aria-labelledby="totalPrepaid-label"><g:fieldValue bean="${railFreightInstance}" field="totalPrepaid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railFreightInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="railFreight.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${railFreightInstance?.user?.id}">${railFreightInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${railFreightInstance?.id}" />
					<g:link class="edit" action="edit" id="${railFreightInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
