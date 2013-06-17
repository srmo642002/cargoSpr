
<%@ page import="cargo.cargoItem.CargoItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cargoItem.label', default: 'CargoItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cargoItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cargoItem">
			
				<g:if test="${cargoItemInstance?.serialNumber}">
				<li class="fieldcontain">
					<span id="serialNumber-label" class="property-label"><g:message code="cargoItem.serialNumber.label" default="Serial Number" /></span>
					
						<span class="property-value" aria-labelledby="serialNumber-label"><g:fieldValue bean="${cargoItemInstance}" field="serialNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.kindOfPackage}">
				<li class="fieldcontain">
					<span id="kindOfPackage-label" class="property-label"><g:message code="cargoItem.kindOfPackage.label" default="Kind Of Package" /></span>
					
						<span class="property-value" aria-labelledby="kindOfPackage-label"><g:fieldValue bean="${cargoItemInstance}" field="kindOfPackage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.commodity}">
				<li class="fieldcontain">
					<span id="commodity-label" class="property-label"><g:message code="cargoItem.commodity.label" default="Commodity" /></span>
					
						<span class="property-value" aria-labelledby="commodity-label"><g:fieldValue bean="${cargoItemInstance}" field="commodity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.unitOfMeasure}">
				<li class="fieldcontain">
					<span id="unitOfMeasure-label" class="property-label"><g:message code="cargoItem.unitOfMeasure.label" default="Unit Of Measure" /></span>
					
						<span class="property-value" aria-labelledby="unitOfMeasure-label"><g:fieldValue bean="${cargoItemInstance}" field="unitOfMeasure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.noOfPackage}">
				<li class="fieldcontain">
					<span id="noOfPackage-label" class="property-label"><g:message code="cargoItem.noOfPackage.label" default="No Of Package" /></span>
					
						<span class="property-value" aria-labelledby="noOfPackage-label"><g:fieldValue bean="${cargoItemInstance}" field="noOfPackage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.grossWeight}">
				<li class="fieldcontain">
					<span id="grossWeight-label" class="property-label"><g:message code="cargoItem.grossWeight.label" default="Gross Weight" /></span>
					
						<span class="property-value" aria-labelledby="grossWeight-label"><g:fieldValue bean="${cargoItemInstance}" field="grossWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.totalWeight}">
				<li class="fieldcontain">
					<span id="totalWeight-label" class="property-label"><g:message code="cargoItem.totalWeight.label" default="Total Weight" /></span>
					
						<span class="property-value" aria-labelledby="totalWeight-label"><g:fieldValue bean="${cargoItemInstance}" field="totalWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.rateOrCharge}">
				<li class="fieldcontain">
					<span id="rateOrCharge-label" class="property-label"><g:message code="cargoItem.rateOrCharge.label" default="Rate Or Charge" /></span>
					
						<span class="property-value" aria-labelledby="rateOrCharge-label"><g:fieldValue bean="${cargoItemInstance}" field="rateOrCharge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.chargeableWeight}">
				<li class="fieldcontain">
					<span id="chargeableWeight-label" class="property-label"><g:message code="cargoItem.chargeableWeight.label" default="Chargeable Weight" /></span>
					
						<span class="property-value" aria-labelledby="chargeableWeight-label"><g:fieldValue bean="${cargoItemInstance}" field="chargeableWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.width}">
				<li class="fieldcontain">
					<span id="width-label" class="property-label"><g:message code="cargoItem.width.label" default="Width" /></span>
					
						<span class="property-value" aria-labelledby="width-label"><g:fieldValue bean="${cargoItemInstance}" field="width"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.length}">
				<li class="fieldcontain">
					<span id="length-label" class="property-label"><g:message code="cargoItem.length.label" default="Length" /></span>
					
						<span class="property-value" aria-labelledby="length-label"><g:fieldValue bean="${cargoItemInstance}" field="length"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="cargoItem.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${cargoItemInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.volume}">
				<li class="fieldcontain">
					<span id="volume-label" class="property-label"><g:message code="cargoItem.volume.label" default="Volume" /></span>
					
						<span class="property-value" aria-labelledby="volume-label"><g:fieldValue bean="${cargoItemInstance}" field="volume"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.totalVolume}">
				<li class="fieldcontain">
					<span id="totalVolume-label" class="property-label"><g:message code="cargoItem.totalVolume.label" default="Total Volume" /></span>
					
						<span class="property-value" aria-labelledby="totalVolume-label"><g:fieldValue bean="${cargoItemInstance}" field="totalVolume"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.chargeableRate}">
				<li class="fieldcontain">
					<span id="chargeableRate-label" class="property-label"><g:message code="cargoItem.chargeableRate.label" default="Chargeable Rate" /></span>
					
						<span class="property-value" aria-labelledby="chargeableRate-label"><g:fieldValue bean="${cargoItemInstance}" field="chargeableRate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="cargoItem.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${cargoItemInstance?.shipment?.id}">${cargoItemInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="cargoItem.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${cargoItemInstance?.user?.id}">${cargoItemInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cargoItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${cargoItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
