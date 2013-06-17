
<%@ page import="cargo.cargoItem.RoadCargoItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'roadCargoItem.label', default: 'RoadCargoItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-roadCargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-roadCargoItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list roadCargoItem">
			
				<g:if test="${roadCargoItemInstance?.truck}">
				<li class="fieldcontain">
					<span id="truck-label" class="property-label"><g:message code="roadCargoItem.truck.label" default="Truck" /></span>
					
						<span class="property-value" aria-labelledby="truck-label"><g:link controller="truck" action="show" id="${roadCargoItemInstance?.truck?.id}">${roadCargoItemInstance?.truck?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.driver}">
				<li class="fieldcontain">
					<span id="driver-label" class="property-label"><g:message code="roadCargoItem.driver.label" default="Driver" /></span>
					
						<span class="property-value" aria-labelledby="driver-label"><g:link controller="driver" action="show" id="${roadCargoItemInstance?.driver?.id}">${roadCargoItemInstance?.driver?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.cntrNo}">
				<li class="fieldcontain">
					<span id="cntrNo-label" class="property-label"><g:message code="roadCargoItem.cntrNo.label" default="Cntr No" /></span>
					
						<span class="property-value" aria-labelledby="cntrNo-label"><g:fieldValue bean="${roadCargoItemInstance}" field="cntrNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.loadingDate}">
				<li class="fieldcontain">
					<span id="loadingDate-label" class="property-label"><g:message code="roadCargoItem.loadingDate.label" default="Loading Date" /></span>
					
						<span class="property-value" aria-labelledby="loadingDate-label"><g:formatDate date="${roadCargoItemInstance?.loadingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.etaDate}">
				<li class="fieldcontain">
					<span id="etaDate-label" class="property-label"><g:message code="roadCargoItem.etaDate.label" default="Eta Date" /></span>
					
						<span class="property-value" aria-labelledby="etaDate-label"><g:formatDate date="${roadCargoItemInstance?.etaDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.arrivalDate}">
				<li class="fieldcontain">
					<span id="arrivalDate-label" class="property-label"><g:message code="roadCargoItem.arrivalDate.label" default="Arrival Date" /></span>
					
						<span class="property-value" aria-labelledby="arrivalDate-label"><g:formatDate date="${roadCargoItemInstance?.arrivalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.deliveryOrderDate}">
				<li class="fieldcontain">
					<span id="deliveryOrderDate-label" class="property-label"><g:message code="roadCargoItem.deliveryOrderDate.label" default="Delivery Order Date" /></span>
					
						<span class="property-value" aria-labelledby="deliveryOrderDate-label"><g:formatDate date="${roadCargoItemInstance?.deliveryOrderDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.cargoItem}">
				<li class="fieldcontain">
					<span id="cargoItem-label" class="property-label"><g:message code="roadCargoItem.cargoItem.label" default="Cargo Item" /></span>
					
						<span class="property-value" aria-labelledby="cargoItem-label"><g:link controller="cargoItem" action="show" id="${roadCargoItemInstance?.cargoItem?.id}">${roadCargoItemInstance?.cargoItem?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.roadFreight}">
				<li class="fieldcontain">
					<span id="roadFreight-label" class="property-label"><g:message code="roadCargoItem.roadFreight.label" default="Road Freight" /></span>
					
						<span class="property-value" aria-labelledby="roadFreight-label"><g:link controller="roadFreight" action="show" id="${roadCargoItemInstance?.roadFreight?.id}">${roadCargoItemInstance?.roadFreight?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${roadCargoItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${roadCargoItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
