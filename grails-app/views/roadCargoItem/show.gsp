
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
					
						<span class="property-value" aria-labelledby="truck-label"><g:fieldValue bean="${roadCargoItemInstance}" field="truck"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.plateNo}">
				<li class="fieldcontain">
					<span id="plateNo-label" class="property-label"><g:message code="roadCargoItem.plateNo.label" default="Plate No" /></span>
					
						<span class="property-value" aria-labelledby="plateNo-label"><g:fieldValue bean="${roadCargoItemInstance}" field="plateNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.containerType}">
				<li class="fieldcontain">
					<span id="containerType-label" class="property-label"><g:message code="roadCargoItem.containerType.label" default="Container Type" /></span>
					
						<span class="property-value" aria-labelledby="containerType-label"><g:fieldValue bean="${roadCargoItemInstance}" field="containerType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.containerNum}">
				<li class="fieldcontain">
					<span id="containerNum-label" class="property-label"><g:message code="roadCargoItem.containerNum.label" default="Container Num" /></span>
					
						<span class="property-value" aria-labelledby="containerNum-label"><g:fieldValue bean="${roadCargoItemInstance}" field="containerNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.ftl}">
				<li class="fieldcontain">
					<span id="ftl-label" class="property-label"><g:message code="roadCargoItem.ftl.label" default="Ftl" /></span>
					
						<span class="property-value" aria-labelledby="ftl-label"><g:formatBoolean boolean="${roadCargoItemInstance?.ftl}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.ltl}">
				<li class="fieldcontain">
					<span id="ltl-label" class="property-label"><g:message code="roadCargoItem.ltl.label" default="Ltl" /></span>
					
						<span class="property-value" aria-labelledby="ltl-label"><g:formatBoolean boolean="${roadCargoItemInstance?.ltl}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.border}">
				<li class="fieldcontain">
					<span id="border-label" class="property-label"><g:message code="roadCargoItem.border.label" default="Border" /></span>
					
						<span class="property-value" aria-labelledby="border-label"><g:fieldValue bean="${roadCargoItemInstance}" field="border"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.driver}">
				<li class="fieldcontain">
					<span id="driver-label" class="property-label"><g:message code="roadCargoItem.driver.label" default="Driver" /></span>
					
						<span class="property-value" aria-labelledby="driver-label"><g:fieldValue bean="${roadCargoItemInstance}" field="driver"/></span>
					
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
			
				<g:if test="${roadCargoItemInstance?.borderPass}">
				<li class="fieldcontain">
					<span id="borderPass-label" class="property-label"><g:message code="roadCargoItem.borderPass.label" default="Border Pass" /></span>
					
						<span class="property-value" aria-labelledby="borderPass-label"><g:formatDate date="${roadCargoItemInstance?.borderPass}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.arrivalDate}">
				<li class="fieldcontain">
					<span id="arrivalDate-label" class="property-label"><g:message code="roadCargoItem.arrivalDate.label" default="Arrival Date" /></span>
					
						<span class="property-value" aria-labelledby="arrivalDate-label"><g:formatDate date="${roadCargoItemInstance?.arrivalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roadCargoItemInstance?.deliveryDate}">
				<li class="fieldcontain">
					<span id="deliveryDate-label" class="property-label"><g:message code="roadCargoItem.deliveryDate.label" default="Delivery Date" /></span>
					
						<span class="property-value" aria-labelledby="deliveryDate-label"><g:formatDate date="${roadCargoItemInstance?.deliveryDate}" /></span>
					
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
			
				<g:if test="${roadCargoItemInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="roadCargoItem.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${roadCargoItemInstance?.user?.id}">${roadCargoItemInstance?.user?.encodeAsHTML()}</g:link></span>
					
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
