
<%@ page import="cargo.freight.AirFreight" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'airFreight.label', default: 'AirFreight')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-airFreight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-airFreight" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list airFreight">
			
				<g:if test="${airFreightInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="airFreight.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${airFreightInstance?.shipment?.id}">${airFreightInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.placeOfLoading}">
				<li class="fieldcontain">
					<span id="placeOfLoading-label" class="property-label"><g:message code="airFreight.placeOfLoading.label" default="Place Of Loading" /></span>
					
						<span class="property-value" aria-labelledby="placeOfLoading-label"><g:link controller="city" action="show" id="${airFreightInstance?.placeOfLoading?.id}">${airFreightInstance?.placeOfLoading?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.placeOfDischarge}">
				<li class="fieldcontain">
					<span id="placeOfDischarge-label" class="property-label"><g:message code="airFreight.placeOfDischarge.label" default="Place Of Discharge" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDischarge-label"><g:link controller="city" action="show" id="${airFreightInstance?.placeOfDischarge?.id}">${airFreightInstance?.placeOfDischarge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.placeOfDelivery}">
				<li class="fieldcontain">
					<span id="placeOfDelivery-label" class="property-label"><g:message code="airFreight.placeOfDelivery.label" default="Place Of Delivery" /></span>
					
						<span class="property-value" aria-labelledby="placeOfDelivery-label"><g:link controller="city" action="show" id="${airFreightInstance?.placeOfDelivery?.id}">${airFreightInstance?.placeOfDelivery?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.placeOfReceipt}">
				<li class="fieldcontain">
					<span id="placeOfReceipt-label" class="property-label"><g:message code="airFreight.placeOfReceipt.label" default="Place Of Receipt" /></span>
					
						<span class="property-value" aria-labelledby="placeOfReceipt-label"><g:link controller="city" action="show" id="${airFreightInstance?.placeOfReceipt?.id}">${airFreightInstance?.placeOfReceipt?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.freightPayableAt}">
				<li class="fieldcontain">
					<span id="freightPayableAt-label" class="property-label"><g:message code="airFreight.freightPayableAt.label" default="Freight Payable At" /></span>
					
						<span class="property-value" aria-labelledby="freightPayableAt-label"><g:fieldValue bean="${airFreightInstance}" field="freightPayableAt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.placeOfIssue}">
				<li class="fieldcontain">
					<span id="placeOfIssue-label" class="property-label"><g:message code="airFreight.placeOfIssue.label" default="Place Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="placeOfIssue-label"><g:link controller="city" action="show" id="${airFreightInstance?.placeOfIssue?.id}">${airFreightInstance?.placeOfIssue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.dateOfIssue}">
				<li class="fieldcontain">
					<span id="dateOfIssue-label" class="property-label"><g:message code="airFreight.dateOfIssue.label" default="Date Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="dateOfIssue-label"><g:formatDate date="${airFreightInstance?.dateOfIssue}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.numberOfBills}">
				<li class="fieldcontain">
					<span id="numberOfBills-label" class="property-label"><g:message code="airFreight.numberOfBills.label" default="Number Of Bills" /></span>
					
						<span class="property-value" aria-labelledby="numberOfBills-label"><g:fieldValue bean="${airFreightInstance}" field="numberOfBills"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.signedAs}">
				<li class="fieldcontain">
					<span id="signedAs-label" class="property-label"><g:message code="airFreight.signedAs.label" default="Signed As" /></span>
					
						<span class="property-value" aria-labelledby="signedAs-label"><g:fieldValue bean="${airFreightInstance}" field="signedAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.signature}">
				<li class="fieldcontain">
					<span id="signature-label" class="property-label"><g:message code="airFreight.signature.label" default="Signature" /></span>
					
						<span class="property-value" aria-labelledby="signature-label"><g:fieldValue bean="${airFreightInstance}" field="signature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.airportDeparture}">
				<li class="fieldcontain">
					<span id="airportDeparture-label" class="property-label"><g:message code="airFreight.airportDeparture.label" default="Airport Departure" /></span>
					
						<span class="property-value" aria-labelledby="airportDeparture-label"><g:link controller="airport" action="show" id="${airFreightInstance?.airportDeparture?.id}">${airFreightInstance?.airportDeparture?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.airportDestination}">
				<li class="fieldcontain">
					<span id="airportDestination-label" class="property-label"><g:message code="airFreight.airportDestination.label" default="Airport Destination" /></span>
					
						<span class="property-value" aria-labelledby="airportDestination-label"><g:link controller="airport" action="show" id="${airFreightInstance?.airportDestination?.id}">${airFreightInstance?.airportDestination?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.collectWeightCharge}">
				<li class="fieldcontain">
					<span id="collectWeightCharge-label" class="property-label"><g:message code="airFreight.collectWeightCharge.label" default="Collect Weight Charge" /></span>
					
						<span class="property-value" aria-labelledby="collectWeightCharge-label"><g:fieldValue bean="${airFreightInstance}" field="collectWeightCharge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.collectValuationCharges}">
				<li class="fieldcontain">
					<span id="collectValuationCharges-label" class="property-label"><g:message code="airFreight.collectValuationCharges.label" default="Collect Valuation Charges" /></span>
					
						<span class="property-value" aria-labelledby="collectValuationCharges-label"><g:fieldValue bean="${airFreightInstance}" field="collectValuationCharges"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.collectTax}">
				<li class="fieldcontain">
					<span id="collectTax-label" class="property-label"><g:message code="airFreight.collectTax.label" default="Collect Tax" /></span>
					
						<span class="property-value" aria-labelledby="collectTax-label"><g:fieldValue bean="${airFreightInstance}" field="collectTax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.collectTotalOtherChargesDueAgent}">
				<li class="fieldcontain">
					<span id="collectTotalOtherChargesDueAgent-label" class="property-label"><g:message code="airFreight.collectTotalOtherChargesDueAgent.label" default="Collect Total Other Charges Due Agent" /></span>
					
						<span class="property-value" aria-labelledby="collectTotalOtherChargesDueAgent-label"><g:fieldValue bean="${airFreightInstance}" field="collectTotalOtherChargesDueAgent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.collectTotalOtherChargesDueCarrier}">
				<li class="fieldcontain">
					<span id="collectTotalOtherChargesDueCarrier-label" class="property-label"><g:message code="airFreight.collectTotalOtherChargesDueCarrier.label" default="Collect Total Other Charges Due Carrier" /></span>
					
						<span class="property-value" aria-labelledby="collectTotalOtherChargesDueCarrier-label"><g:fieldValue bean="${airFreightInstance}" field="collectTotalOtherChargesDueCarrier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.totalCollect}">
				<li class="fieldcontain">
					<span id="totalCollect-label" class="property-label"><g:message code="airFreight.totalCollect.label" default="Total Collect" /></span>
					
						<span class="property-value" aria-labelledby="totalCollect-label"><g:fieldValue bean="${airFreightInstance}" field="totalCollect"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.prepaidWeightCharge}">
				<li class="fieldcontain">
					<span id="prepaidWeightCharge-label" class="property-label"><g:message code="airFreight.prepaidWeightCharge.label" default="Prepaid Weight Charge" /></span>
					
						<span class="property-value" aria-labelledby="prepaidWeightCharge-label"><g:fieldValue bean="${airFreightInstance}" field="prepaidWeightCharge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.prepaidValuationCharges}">
				<li class="fieldcontain">
					<span id="prepaidValuationCharges-label" class="property-label"><g:message code="airFreight.prepaidValuationCharges.label" default="Prepaid Valuation Charges" /></span>
					
						<span class="property-value" aria-labelledby="prepaidValuationCharges-label"><g:fieldValue bean="${airFreightInstance}" field="prepaidValuationCharges"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.prepaidTax}">
				<li class="fieldcontain">
					<span id="prepaidTax-label" class="property-label"><g:message code="airFreight.prepaidTax.label" default="Prepaid Tax" /></span>
					
						<span class="property-value" aria-labelledby="prepaidTax-label"><g:fieldValue bean="${airFreightInstance}" field="prepaidTax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.prepaidTotalOtherChargesDueAgent}">
				<li class="fieldcontain">
					<span id="prepaidTotalOtherChargesDueAgent-label" class="property-label"><g:message code="airFreight.prepaidTotalOtherChargesDueAgent.label" default="Prepaid Total Other Charges Due Agent" /></span>
					
						<span class="property-value" aria-labelledby="prepaidTotalOtherChargesDueAgent-label"><g:fieldValue bean="${airFreightInstance}" field="prepaidTotalOtherChargesDueAgent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.prepaidTotalOtherChargesDueCarrier}">
				<li class="fieldcontain">
					<span id="prepaidTotalOtherChargesDueCarrier-label" class="property-label"><g:message code="airFreight.prepaidTotalOtherChargesDueCarrier.label" default="Prepaid Total Other Charges Due Carrier" /></span>
					
						<span class="property-value" aria-labelledby="prepaidTotalOtherChargesDueCarrier-label"><g:fieldValue bean="${airFreightInstance}" field="prepaidTotalOtherChargesDueCarrier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.totalPrepaid}">
				<li class="fieldcontain">
					<span id="totalPrepaid-label" class="property-label"><g:message code="airFreight.totalPrepaid.label" default="Total Prepaid" /></span>
					
						<span class="property-value" aria-labelledby="totalPrepaid-label"><g:fieldValue bean="${airFreightInstance}" field="totalPrepaid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.otherCharges}">
				<li class="fieldcontain">
					<span id="otherCharges-label" class="property-label"><g:message code="airFreight.otherCharges.label" default="Other Charges" /></span>
					
						<span class="property-value" aria-labelledby="otherCharges-label"><g:fieldValue bean="${airFreightInstance}" field="otherCharges"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.insurancePremium}">
				<li class="fieldcontain">
					<span id="insurancePremium-label" class="property-label"><g:message code="airFreight.insurancePremium.label" default="Insurance Premium" /></span>
					
						<span class="property-value" aria-labelledby="insurancePremium-label"><g:fieldValue bean="${airFreightInstance}" field="insurancePremium"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.currencyConversionRates}">
				<li class="fieldcontain">
					<span id="currencyConversionRates-label" class="property-label"><g:message code="airFreight.currencyConversionRates.label" default="Currency Conversion Rates" /></span>
					
						<span class="property-value" aria-labelledby="currencyConversionRates-label"><g:fieldValue bean="${airFreightInstance}" field="currencyConversionRates"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.ccChargesInDestCurrency}">
				<li class="fieldcontain">
					<span id="ccChargesInDestCurrency-label" class="property-label"><g:message code="airFreight.ccChargesInDestCurrency.label" default="Cc Charges In Dest Currency" /></span>
					
						<span class="property-value" aria-labelledby="ccChargesInDestCurrency-label"><g:fieldValue bean="${airFreightInstance}" field="ccChargesInDestCurrency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.chargesAtDestination}">
				<li class="fieldcontain">
					<span id="chargesAtDestination-label" class="property-label"><g:message code="airFreight.chargesAtDestination.label" default="Charges At Destination" /></span>
					
						<span class="property-value" aria-labelledby="chargesAtDestination-label"><g:fieldValue bean="${airFreightInstance}" field="chargesAtDestination"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.totalCollectCharges}">
				<li class="fieldcontain">
					<span id="totalCollectCharges-label" class="property-label"><g:message code="airFreight.totalCollectCharges.label" default="Total Collect Charges" /></span>
					
						<span class="property-value" aria-labelledby="totalCollectCharges-label"><g:fieldValue bean="${airFreightInstance}" field="totalCollectCharges"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.signatureOfShipperOrHisAgent}">
				<li class="fieldcontain">
					<span id="signatureOfShipperOrHisAgent-label" class="property-label"><g:message code="airFreight.signatureOfShipperOrHisAgent.label" default="Signature Of Shipper Or His Agent" /></span>
					
						<span class="property-value" aria-labelledby="signatureOfShipperOrHisAgent-label"><g:fieldValue bean="${airFreightInstance}" field="signatureOfShipperOrHisAgent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.signatureOfIssuingCarrierOrItsAgent}">
				<li class="fieldcontain">
					<span id="signatureOfIssuingCarrierOrItsAgent-label" class="property-label"><g:message code="airFreight.signatureOfIssuingCarrierOrItsAgent.label" default="Signature Of Issuing Carrier Or Its Agent" /></span>
					
						<span class="property-value" aria-labelledby="signatureOfIssuingCarrierOrItsAgent-label"><g:fieldValue bean="${airFreightInstance}" field="signatureOfIssuingCarrierOrItsAgent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airFreightInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="airFreight.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${airFreightInstance?.user?.id}">${airFreightInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${airFreightInstance?.id}" />
					<g:link class="edit" action="edit" id="${airFreightInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
