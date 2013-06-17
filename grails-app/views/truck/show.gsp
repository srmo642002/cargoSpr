
<%@ page import="cargo.Truck" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'truck.label', default: 'Truck')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-truck" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-truck" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list truck">
			
				<g:if test="${truckInstance?.registrationNo}">
				<li class="fieldcontain">
					<span id="registrationNo-label" class="property-label"><g:message code="truck.registrationNo.label" default="Registration No" /></span>
					
						<span class="property-value" aria-labelledby="registrationNo-label"><g:fieldValue bean="${truckInstance}" field="registrationNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${truckInstance?.typeOfVehicle}">
				<li class="fieldcontain">
					<span id="typeOfVehicle-label" class="property-label"><g:message code="truck.typeOfVehicle.label" default="Type Of Vehicle" /></span>
					
						<span class="property-value" aria-labelledby="typeOfVehicle-label"><g:fieldValue bean="${truckInstance}" field="typeOfVehicle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${truckInstance?.chassisNo}">
				<li class="fieldcontain">
					<span id="chassisNo-label" class="property-label"><g:message code="truck.chassisNo.label" default="Chassis No" /></span>
					
						<span class="property-value" aria-labelledby="chassisNo-label"><g:fieldValue bean="${truckInstance}" field="chassisNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${truckInstance?.trademark}">
				<li class="fieldcontain">
					<span id="trademark-label" class="property-label"><g:message code="truck.trademark.label" default="Trademark" /></span>
					
						<span class="property-value" aria-labelledby="trademark-label"><g:fieldValue bean="${truckInstance}" field="trademark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${truckInstance?.trailerNumber}">
				<li class="fieldcontain">
					<span id="trailerNumber-label" class="property-label"><g:message code="truck.trailerNumber.label" default="Trailer Number" /></span>
					
						<span class="property-value" aria-labelledby="trailerNumber-label"><g:fieldValue bean="${truckInstance}" field="trailerNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${truckInstance?.otherParticulars}">
				<li class="fieldcontain">
					<span id="otherParticulars-label" class="property-label"><g:message code="truck.otherParticulars.label" default="Other Particulars" /></span>
					
						<span class="property-value" aria-labelledby="otherParticulars-label"><g:fieldValue bean="${truckInstance}" field="otherParticulars"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${truckInstance?.carrier}">
				<li class="fieldcontain">
					<span id="carrier-label" class="property-label"><g:message code="truck.carrier.label" default="Carrier" /></span>
					
						<span class="property-value" aria-labelledby="carrier-label"><g:link controller="forwardingReference" action="show" id="${truckInstance?.carrier?.id}">${truckInstance?.carrier?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${truckInstance?.id}" />
					<g:link class="edit" action="edit" id="${truckInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
