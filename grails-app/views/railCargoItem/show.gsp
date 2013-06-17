
<%@ page import="cargo.cargoItem.RailCargoItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'railCargoItem.label', default: 'RailCargoItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-railCargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-railCargoItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list railCargoItem">
			
				<g:if test="${railCargoItemInstance?.wagonType}">
				<li class="fieldcontain">
					<span id="wagonType-label" class="property-label"><g:message code="railCargoItem.wagonType.label" default="Wagon Type" /></span>
					
						<span class="property-value" aria-labelledby="wagonType-label"><g:fieldValue bean="${railCargoItemInstance}" field="wagonType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railCargoItemInstance?.wagonNum}">
				<li class="fieldcontain">
					<span id="wagonNum-label" class="property-label"><g:message code="railCargoItem.wagonNum.label" default="Wagon Num" /></span>
					
						<span class="property-value" aria-labelledby="wagonNum-label"><g:fieldValue bean="${railCargoItemInstance}" field="wagonNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railCargoItemInstance?.wagonStatus}">
				<li class="fieldcontain">
					<span id="wagonStatus-label" class="property-label"><g:message code="railCargoItem.wagonStatus.label" default="Wagon Status" /></span>
					
						<span class="property-value" aria-labelledby="wagonStatus-label"><g:fieldValue bean="${railCargoItemInstance}" field="wagonStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${railCargoItemInstance?.loadingDate}">
				<li class="fieldcontain">
					<span id="loadingDate-label" class="property-label"><g:message code="railCargoItem.loadingDate.label" default="Loading Date" /></span>
					
						<span class="property-value" aria-labelledby="loadingDate-label"><g:formatDate date="${railCargoItemInstance?.loadingDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${railCargoItemInstance?.etaDate}">
				<li class="fieldcontain">
					<span id="etaDate-label" class="property-label"><g:message code="railCargoItem.etaDate.label" default="Eta Date" /></span>
					
						<span class="property-value" aria-labelledby="etaDate-label"><g:formatDate date="${railCargoItemInstance?.etaDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${railCargoItemInstance?.arrivalDate}">
				<li class="fieldcontain">
					<span id="arrivalDate-label" class="property-label"><g:message code="railCargoItem.arrivalDate.label" default="Arrival Date" /></span>
					
						<span class="property-value" aria-labelledby="arrivalDate-label"><g:formatDate date="${railCargoItemInstance?.arrivalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${railCargoItemInstance?.deliveryOrderDate}">
				<li class="fieldcontain">
					<span id="deliveryOrderDate-label" class="property-label"><g:message code="railCargoItem.deliveryOrderDate.label" default="Delivery Order Date" /></span>
					
						<span class="property-value" aria-labelledby="deliveryOrderDate-label"><g:formatDate date="${railCargoItemInstance?.deliveryOrderDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${railCargoItemInstance?.cargoItem}">
				<li class="fieldcontain">
					<span id="cargoItem-label" class="property-label"><g:message code="railCargoItem.cargoItem.label" default="Cargo Item" /></span>
					
						<span class="property-value" aria-labelledby="cargoItem-label"><g:link controller="cargoItem" action="show" id="${railCargoItemInstance?.cargoItem?.id}">${railCargoItemInstance?.cargoItem?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${railCargoItemInstance?.railFreight}">
				<li class="fieldcontain">
					<span id="railFreight-label" class="property-label"><g:message code="railCargoItem.railFreight.label" default="Rail Freight" /></span>
					
						<span class="property-value" aria-labelledby="railFreight-label"><g:link controller="railFreight" action="show" id="${railCargoItemInstance?.railFreight?.id}">${railCargoItemInstance?.railFreight?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${railCargoItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${railCargoItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
