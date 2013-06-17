
<%@ page import="cargo.cargoItem.AirCargoItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'airCargoItem.label', default: 'AirCargoItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-airCargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-airCargoItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list airCargoItem">
			
				<g:if test="${airCargoItemInstance?.aircraft}">
				<li class="fieldcontain">
					<span id="aircraft-label" class="property-label"><g:message code="airCargoItem.aircraft.label" default="Aircraft" /></span>
					
						<span class="property-value" aria-labelledby="aircraft-label"><g:fieldValue bean="${airCargoItemInstance}" field="aircraft"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airCargoItemInstance?.flightNum}">
				<li class="fieldcontain">
					<span id="flightNum-label" class="property-label"><g:message code="airCargoItem.flightNum.label" default="Flight Num" /></span>
					
						<span class="property-value" aria-labelledby="flightNum-label"><g:fieldValue bean="${airCargoItemInstance}" field="flightNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${airCargoItemInstance?.loadingDate}">
				<li class="fieldcontain">
					<span id="loadingDate-label" class="property-label"><g:message code="airCargoItem.loadingDate.label" default="Loading Date" /></span>
					
						<span class="property-value" aria-labelledby="loadingDate-label"><g:formatDate date="${airCargoItemInstance?.loadingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${airCargoItemInstance?.etaDate}">
				<li class="fieldcontain">
					<span id="etaDate-label" class="property-label"><g:message code="airCargoItem.etaDate.label" default="Eta Date" /></span>
					
						<span class="property-value" aria-labelledby="etaDate-label"><g:formatDate date="${airCargoItemInstance?.etaDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${airCargoItemInstance?.arrivalDate}">
				<li class="fieldcontain">
					<span id="arrivalDate-label" class="property-label"><g:message code="airCargoItem.arrivalDate.label" default="Arrival Date" /></span>
					
						<span class="property-value" aria-labelledby="arrivalDate-label"><g:formatDate date="${airCargoItemInstance?.arrivalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${airCargoItemInstance?.deliveryOrderDate}">
				<li class="fieldcontain">
					<span id="deliveryOrderDate-label" class="property-label"><g:message code="airCargoItem.deliveryOrderDate.label" default="Delivery Order Date" /></span>
					
						<span class="property-value" aria-labelledby="deliveryOrderDate-label"><g:formatDate date="${airCargoItemInstance?.deliveryOrderDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${airCargoItemInstance?.airFreight}">
				<li class="fieldcontain">
					<span id="airFreight-label" class="property-label"><g:message code="airCargoItem.airFreight.label" default="Air Freight" /></span>
					
						<span class="property-value" aria-labelledby="airFreight-label"><g:link controller="airFreight" action="show" id="${airCargoItemInstance?.airFreight?.id}">${airCargoItemInstance?.airFreight?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${airCargoItemInstance?.cargoItem}">
				<li class="fieldcontain">
					<span id="cargoItem-label" class="property-label"><g:message code="airCargoItem.cargoItem.label" default="Cargo Item" /></span>
					
						<span class="property-value" aria-labelledby="cargoItem-label"><g:link controller="cargoItem" action="show" id="${airCargoItemInstance?.cargoItem?.id}">${airCargoItemInstance?.cargoItem?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${airCargoItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${airCargoItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
