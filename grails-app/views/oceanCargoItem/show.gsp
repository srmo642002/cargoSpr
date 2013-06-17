
<%@ page import="cargo.cargoItem.OceanCargoItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'oceanCargoItem.label', default: 'OceanCargoItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-oceanCargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-oceanCargoItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list oceanCargoItem">
			
				<g:if test="${oceanCargoItemInstance?.loadingDate}">
				<li class="fieldcontain">
					<span id="loadingDate-label" class="property-label"><g:message code="oceanCargoItem.loadingDate.label" default="Loading Date" /></span>
					
						<span class="property-value" aria-labelledby="loadingDate-label"><g:formatDate date="${oceanCargoItemInstance?.loadingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanCargoItemInstance?.etaDate}">
				<li class="fieldcontain">
					<span id="etaDate-label" class="property-label"><g:message code="oceanCargoItem.etaDate.label" default="Eta Date" /></span>
					
						<span class="property-value" aria-labelledby="etaDate-label"><g:formatDate date="${oceanCargoItemInstance?.etaDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanCargoItemInstance?.arrivalDate}">
				<li class="fieldcontain">
					<span id="arrivalDate-label" class="property-label"><g:message code="oceanCargoItem.arrivalDate.label" default="Arrival Date" /></span>
					
						<span class="property-value" aria-labelledby="arrivalDate-label"><g:formatDate date="${oceanCargoItemInstance?.arrivalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanCargoItemInstance?.deliveryOrderDate}">
				<li class="fieldcontain">
					<span id="deliveryOrderDate-label" class="property-label"><g:message code="oceanCargoItem.deliveryOrderDate.label" default="Delivery Order Date" /></span>
					
						<span class="property-value" aria-labelledby="deliveryOrderDate-label"><g:formatDate date="${oceanCargoItemInstance?.deliveryOrderDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanCargoItemInstance?.cargoItem}">
				<li class="fieldcontain">
					<span id="cargoItem-label" class="property-label"><g:message code="oceanCargoItem.cargoItem.label" default="Cargo Item" /></span>
					
						<span class="property-value" aria-labelledby="cargoItem-label"><g:link controller="cargoItem" action="show" id="${oceanCargoItemInstance?.cargoItem?.id}">${oceanCargoItemInstance?.cargoItem?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${oceanCargoItemInstance?.oceanFreight}">
				<li class="fieldcontain">
					<span id="oceanFreight-label" class="property-label"><g:message code="oceanCargoItem.oceanFreight.label" default="Ocean Freight" /></span>
					
						<span class="property-value" aria-labelledby="oceanFreight-label"><g:link controller="oceanFreight" action="show" id="${oceanCargoItemInstance?.oceanFreight?.id}">${oceanCargoItemInstance?.oceanFreight?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${oceanCargoItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${oceanCargoItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
