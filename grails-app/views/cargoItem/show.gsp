
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
			
				<g:if test="${cargoItemInstance?.item}">
				<li class="fieldcontain">
					<span id="item-label" class="property-label"><g:message code="cargoItem.item.label" default="Item" /></span>
					
						<span class="property-value" aria-labelledby="item-label"><g:fieldValue bean="${cargoItemInstance}" field="item"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.nonContainerized}">
				<li class="fieldcontain">
					<span id="nonContainerized-label" class="property-label"><g:message code="cargoItem.nonContainerized.label" default="Non Containerized" /></span>
					
						<span class="property-value" aria-labelledby="nonContainerized-label"><g:formatBoolean boolean="${cargoItemInstance?.nonContainerized}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.containerized}">
				<li class="fieldcontain">
					<span id="containerized-label" class="property-label"><g:message code="cargoItem.containerized.label" default="Containerized" /></span>
					
						<span class="property-value" aria-labelledby="containerized-label"><g:formatBoolean boolean="${cargoItemInstance?.containerized}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.containerNo}">
				<li class="fieldcontain">
					<span id="containerNo-label" class="property-label"><g:message code="cargoItem.containerNo.label" default="Container No" /></span>
					
						<span class="property-value" aria-labelledby="containerNo-label"><g:fieldValue bean="${cargoItemInstance}" field="containerNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.size}">
				<li class="fieldcontain">
					<span id="size-label" class="property-label"><g:message code="cargoItem.size.label" default="Size" /></span>
					
						<span class="property-value" aria-labelledby="size-label"><g:fieldValue bean="${cargoItemInstance}" field="size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="cargoItem.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${cargoItemInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.commodity}">
				<li class="fieldcontain">
					<span id="commodity-label" class="property-label"><g:message code="cargoItem.commodity.label" default="Commodity" /></span>
					
						<span class="property-value" aria-labelledby="commodity-label"><g:fieldValue bean="${cargoItemInstance}" field="commodity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.typeOfPackage}">
				<li class="fieldcontain">
					<span id="typeOfPackage-label" class="property-label"><g:message code="cargoItem.typeOfPackage.label" default="Type Of Package" /></span>
					
						<span class="property-value" aria-labelledby="typeOfPackage-label"><g:fieldValue bean="${cargoItemInstance}" field="typeOfPackage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.noOfPackage}">
				<li class="fieldcontain">
					<span id="noOfPackage-label" class="property-label"><g:message code="cargoItem.noOfPackage.label" default="No Of Package" /></span>
					
						<span class="property-value" aria-labelledby="noOfPackage-label"><g:fieldValue bean="${cargoItemInstance}" field="noOfPackage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.grade}">
				<li class="fieldcontain">
					<span id="grade-label" class="property-label"><g:message code="cargoItem.grade.label" default="Grade" /></span>
					
						<span class="property-value" aria-labelledby="grade-label"><g:fieldValue bean="${cargoItemInstance}" field="grade"/></span>
					
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
			
				<g:if test="${cargoItemInstance?.volume}">
				<li class="fieldcontain">
					<span id="volume-label" class="property-label"><g:message code="cargoItem.volume.label" default="Volume" /></span>
					
						<span class="property-value" aria-labelledby="volume-label"><g:fieldValue bean="${cargoItemInstance}" field="volume"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cargoItemInstance?.dg}">
				<li class="fieldcontain">
					<span id="dg-label" class="property-label"><g:message code="cargoItem.dg.label" default="Dg" /></span>
					
						<span class="property-value" aria-labelledby="dg-label"><g:formatBoolean boolean="${cargoItemInstance?.dg}" /></span>
					
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
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
