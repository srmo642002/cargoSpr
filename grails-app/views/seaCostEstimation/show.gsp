
<%@ page import="cargo.SeaCostEstimation" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'seaCostEstimation.label', default: 'SeaCostEstimation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-seaCostEstimation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-seaCostEstimation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list seaCostEstimation">
			
				<g:if test="${seaCostEstimationInstance?.rateDate}">
				<li class="fieldcontain">
					<span id="rateDate-label" class="property-label"><g:message code="seaCostEstimation.rateDate.label" default="Rate Date" /></span>
					
						<span class="property-value" aria-labelledby="rateDate-label"><g:formatDate date="${seaCostEstimationInstance?.rateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.portOfLoading}">
				<li class="fieldcontain">
					<span id="portOfLoading-label" class="property-label"><g:message code="seaCostEstimation.portOfLoading.label" default="Port Of Loading" /></span>
					
						<span class="property-value" aria-labelledby="portOfLoading-label"><g:link controller="city" action="show" id="${seaCostEstimationInstance?.portOfLoading?.id}">${seaCostEstimationInstance?.portOfLoading?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.portOfDischarge}">
				<li class="fieldcontain">
					<span id="portOfDischarge-label" class="property-label"><g:message code="seaCostEstimation.portOfDischarge.label" default="Port Of Discharge" /></span>
					
						<span class="property-value" aria-labelledby="portOfDischarge-label"><g:link controller="city" action="show" id="${seaCostEstimationInstance?.portOfDischarge?.id}">${seaCostEstimationInstance?.portOfDischarge?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.container}">
				<li class="fieldcontain">
					<span id="container-label" class="property-label"><g:message code="seaCostEstimation.container.label" default="Container" /></span>
					
						<span class="property-value" aria-labelledby="container-label"><g:formatBoolean boolean="${seaCostEstimationInstance?.container}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.containers}">
				<li class="fieldcontain">
					<span id="containers-label" class="property-label"><g:message code="seaCostEstimation.containers.label" default="Containers" /></span>
					
						<g:each in="${seaCostEstimationInstance.containers}" var="c">
						<span class="property-value" aria-labelledby="containers-label"><g:link controller="containerSeaBulkEstimation" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.bulk}">
				<li class="fieldcontain">
					<span id="bulk-label" class="property-label"><g:message code="seaCostEstimation.bulk.label" default="Bulk" /></span>
					
						<span class="property-value" aria-labelledby="bulk-label"><g:formatBoolean boolean="${seaCostEstimationInstance?.bulk}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="seaCostEstimation.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.measurment}">
				<li class="fieldcontain">
					<span id="measurment-label" class="property-label"><g:message code="seaCostEstimation.measurment.label" default="Measurment" /></span>
					
						<span class="property-value" aria-labelledby="measurment-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="measurment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.freightTon}">
				<li class="fieldcontain">
					<span id="freightTon-label" class="property-label"><g:message code="seaCostEstimation.freightTon.label" default="Freight Ton" /></span>
					
						<span class="property-value" aria-labelledby="freightTon-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="freightTon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.rate}">
				<li class="fieldcontain">
					<span id="rate-label" class="property-label"><g:message code="seaCostEstimation.rate.label" default="Rate" /></span>
					
						<span class="property-value" aria-labelledby="rate-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="rate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.currency}">
				<li class="fieldcontain">
					<span id="currency-label" class="property-label"><g:message code="seaCostEstimation.currency.label" default="Currency" /></span>
					
						<span class="property-value" aria-labelledby="currency-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="currency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="seaCostEstimation.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="day"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.route}">
				<li class="fieldcontain">
					<span id="route-label" class="property-label"><g:message code="seaCostEstimation.route.label" default="Route" /></span>
					
						<span class="property-value" aria-labelledby="route-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="route"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.remark}">
				<li class="fieldcontain">
					<span id="remark-label" class="property-label"><g:message code="seaCostEstimation.remark.label" default="Remark" /></span>
					
						<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="remark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.additionals}">
				<li class="fieldcontain">
					<span id="additionals-label" class="property-label"><g:message code="seaCostEstimation.additionals.label" default="additionals" /></span>
					
						<span class="property-value" aria-labelledby="additionals-label"><g:fieldValue bean="${seaCostEstimationInstance}" field="additionals"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seaCostEstimationInstance?.deprecated}">
				<li class="fieldcontain">
					<span id="deprecated-label" class="property-label"><g:message code="seaCostEstimation.deprecated.label" default="Deprecated" /></span>
					
						<span class="property-value" aria-labelledby="deprecated-label"><g:formatBoolean boolean="${seaCostEstimationInstance?.deprecated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${seaCostEstimationInstance?.id}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
