
<%@ page import="cargo.CostEstimation" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'costEstimation.label', default: 'CostEstimation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-costEstimation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-costEstimation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list costEstimation">
			
				<g:if test="${costEstimationInstance?.rateDate}">
				<li class="fieldcontain">
					<span id="rateDate-label" class="property-label"><g:message code="costEstimation.rateDate.label" default="Rate Date" /></span>
					
						<span class="property-value" aria-labelledby="rateDate-label"><g:formatDate date="${costEstimationInstance?.rateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.desCountry}">
				<li class="fieldcontain">
					<span id="desCountry-label" class="property-label"><g:message code="costEstimation.desCountry.label" default="Des Country" /></span>
					
						<span class="property-value" aria-labelledby="desCountry-label"><g:link controller="country" action="show" id="${costEstimationInstance?.desCountry?.id}">${costEstimationInstance?.desCountry?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.desCity}">
				<li class="fieldcontain">
					<span id="desCity-label" class="property-label"><g:message code="costEstimation.desCity.label" default="Des City" /></span>
					
						<span class="property-value" aria-labelledby="desCity-label"><g:link controller="city" action="show" id="${costEstimationInstance?.desCity?.id}">${costEstimationInstance?.desCity?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.containerType}">
				<li class="fieldcontain">
					<span id="containerType-label" class="property-label"><g:message code="costEstimation.containerType.label" default="Container Type" /></span>
					
						<span class="property-value" aria-labelledby="containerType-label"><g:fieldValue bean="${costEstimationInstance}" field="containerType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.rate}">
				<li class="fieldcontain">
					<span id="rate-label" class="property-label"><g:message code="costEstimation.rate.label" default="Rate" /></span>
					
						<span class="property-value" aria-labelledby="rate-label"><g:fieldValue bean="${costEstimationInstance}" field="rate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.remark}">
				<li class="fieldcontain">
					<span id="remark-label" class="property-label"><g:message code="costEstimation.remark.label" default="Remark" /></span>
					
						<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${costEstimationInstance}" field="remark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.deprecated}">
				<li class="fieldcontain">
					<span id="deprecated-label" class="property-label"><g:message code="costEstimation.deprecated.label" default="Deprecated" /></span>
					
						<span class="property-value" aria-labelledby="deprecated-label"><g:formatBoolean boolean="${costEstimationInstance?.deprecated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="costEstimation.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${costEstimationInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.overWeight}">
				<li class="fieldcontain">
					<span id="overWeight-label" class="property-label"><g:message code="costEstimation.overWeight.label" default="Over Weight" /></span>
					
						<span class="property-value" aria-labelledby="overWeight-label"><g:fieldValue bean="${costEstimationInstance}" field="overWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.route}">
				<li class="fieldcontain">
					<span id="route-label" class="property-label"><g:message code="costEstimation.route.label" default="Route" /></span>
					
						<span class="property-value" aria-labelledby="route-label"><g:fieldValue bean="${costEstimationInstance}" field="route"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="costEstimation.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:fieldValue bean="${costEstimationInstance}" field="day"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.week}">
				<li class="fieldcontain">
					<span id="week-label" class="property-label"><g:message code="costEstimation.week.label" default="Week" /></span>
					
						<span class="property-value" aria-labelledby="week-label"><g:fieldValue bean="${costEstimationInstance}" field="week"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.month}">
				<li class="fieldcontain">
					<span id="month-label" class="property-label"><g:message code="costEstimation.month.label" default="Month" /></span>
					
						<span class="property-value" aria-labelledby="month-label"><g:fieldValue bean="${costEstimationInstance}" field="month"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.hour}">
				<li class="fieldcontain">
					<span id="hour-label" class="property-label"><g:message code="costEstimation.hour.label" default="Hour" /></span>
					
						<span class="property-value" aria-labelledby="hour-label"><g:fieldValue bean="${costEstimationInstance}" field="hour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${costEstimationInstance?.observation}">
				<li class="fieldcontain">
					<span id="observation-label" class="property-label"><g:message code="costEstimation.observation.label" default="Observation" /></span>
					
						<span class="property-value" aria-labelledby="observation-label"><g:fieldValue bean="${costEstimationInstance}" field="observation"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${costEstimationInstance?.id}" />
					<g:link class="edit" action="edit" id="${costEstimationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
