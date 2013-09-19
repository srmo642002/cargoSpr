
<%@ page import="cargo.insuranceCertificate.CustomsOperations" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customsOperations.label', default: 'CustomsOperations')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customsOperations" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customsOperations" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customsOperations">
			
				<g:if test="${customsOperationsInstance?.transitType}">
				<li class="fieldcontain">
					<span id="transitType-label" class="property-label"><g:message code="customsOperations.transitType.label" default="Transit Type" /></span>
					
						<span class="property-value" aria-labelledby="transitType-label"><g:fieldValue bean="${customsOperationsInstance}" field="transitType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.customsDate}">
				<li class="fieldcontain">
					<span id="customsDate-label" class="property-label"><g:message code="customsOperations.customsDate.label" default="Customs Date" /></span>
					
						<span class="property-value" aria-labelledby="customsDate-label"><g:formatDate date="${customsOperationsInstance?.customsDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="customsOperations.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${customsOperationsInstance?.shipment?.id}">${customsOperationsInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.transitMode}">
				<li class="fieldcontain">
					<span id="transitMode-label" class="property-label"><g:message code="customsOperations.transitMode.label" default="Transit Mode" /></span>
					
						<span class="property-value" aria-labelledby="transitMode-label"><g:fieldValue bean="${customsOperationsInstance}" field="transitMode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.permitsNum}">
				<li class="fieldcontain">
					<span id="permitsNum-label" class="property-label"><g:message code="customsOperations.permitsNum.label" default="Permits Num" /></span>
					
						<span class="property-value" aria-labelledby="permitsNum-label"><g:fieldValue bean="${customsOperationsInstance}" field="permitsNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.kutazhNum}">
				<li class="fieldcontain">
					<span id="kutazhNum-label" class="property-label"><g:message code="customsOperations.kutazhNum.label" default="Kutazh Num" /></span>
					
						<span class="property-value" aria-labelledby="kutazhNum-label"><g:fieldValue bean="${customsOperationsInstance}" field="kutazhNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.rowNum}">
				<li class="fieldcontain">
					<span id="rowNum-label" class="property-label"><g:message code="customsOperations.rowNum.label" default="Row Num" /></span>
					
						<span class="property-value" aria-labelledby="rowNum-label"><g:fieldValue bean="${customsOperationsInstance}" field="rowNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.origin}">
				<li class="fieldcontain">
					<span id="origin-label" class="property-label"><g:message code="customsOperations.origin.label" default="Origin" /></span>
					
						<span class="property-value" aria-labelledby="origin-label"><g:link controller="city" action="show" id="${customsOperationsInstance?.origin?.id}">${customsOperationsInstance?.origin?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.destination}">
				<li class="fieldcontain">
					<span id="destination-label" class="property-label"><g:message code="customsOperations.destination.label" default="Destination" /></span>
					
						<span class="property-value" aria-labelledby="destination-label"><g:link controller="city" action="show" id="${customsOperationsInstance?.destination?.id}">${customsOperationsInstance?.destination?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="customsOperations.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${customsOperationsInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.tariff}">
				<li class="fieldcontain">
					<span id="tariff-label" class="property-label"><g:message code="customsOperations.tariff.label" default="Tariff" /></span>
					
						<span class="property-value" aria-labelledby="tariff-label"><g:fieldValue bean="${customsOperationsInstance}" field="tariff"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.commodity}">
				<li class="fieldcontain">
					<span id="commodity-label" class="property-label"><g:message code="customsOperations.commodity.label" default="Commodity" /></span>
					
						<span class="property-value" aria-labelledby="commodity-label"><g:fieldValue bean="${customsOperationsInstance}" field="commodity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.oneSheetInsurance}">
				<li class="fieldcontain">
					<span id="oneSheetInsurance-label" class="property-label"><g:message code="customsOperations.oneSheetInsurance.label" default="One Sheet Insurance" /></span>
					
						<span class="property-value" aria-labelledby="oneSheetInsurance-label"><g:formatBoolean boolean="${customsOperationsInstance?.oneSheetInsurance}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.multiSheetInsurance}">
				<li class="fieldcontain">
					<span id="multiSheetInsurance-label" class="property-label"><g:message code="customsOperations.multiSheetInsurance.label" default="Multi Sheet Insurance" /></span>
					
						<span class="property-value" aria-labelledby="multiSheetInsurance-label"><g:formatBoolean boolean="${customsOperationsInstance?.multiSheetInsurance}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.receipt}">
				<li class="fieldcontain">
					<span id="receipt-label" class="property-label"><g:message code="customsOperations.receipt.label" default="Receipt" /></span>
					
						<span class="property-value" aria-labelledby="receipt-label"><g:formatBoolean boolean="${customsOperationsInstance?.receipt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.receiptDate}">
				<li class="fieldcontain">
					<span id="receiptDate-label" class="property-label"><g:message code="customsOperations.receiptDate.label" default="Receipt Date" /></span>
					
						<span class="property-value" aria-labelledby="receiptDate-label"><g:formatDate date="${customsOperationsInstance?.receiptDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.receiptNum}">
				<li class="fieldcontain">
					<span id="receiptNum-label" class="property-label"><g:message code="customsOperations.receiptNum.label" default="Receipt Num" /></span>
					
						<span class="property-value" aria-labelledby="receiptNum-label"><g:fieldValue bean="${customsOperationsInstance}" field="receiptNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customsOperationsInstance?.insuranceCert}">
				<li class="fieldcontain">
					<span id="insuranceCert-label" class="property-label"><g:message code="customsOperations.insuranceCert.label" default="Insurance Cert" /></span>
					
						<span class="property-value" aria-labelledby="insuranceCert-label"><g:link controller="insuranceCert" action="show" id="${customsOperationsInstance?.insuranceCert?.id}">${customsOperationsInstance?.insuranceCert?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customsOperationsInstance?.id}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
