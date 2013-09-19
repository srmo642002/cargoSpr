
<%@ page import="cargo.insuranceCertificate.InsuranceCert" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'insuranceCert.label', default: 'InsuranceCert')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-insuranceCert" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-insuranceCert" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list insuranceCert">
			
				<g:if test="${insuranceCertInstance?.insuranceCo}">
				<li class="fieldcontain">
					<span id="insuranceCo-label" class="property-label"><g:message code="insuranceCert.insuranceCo.label" default="Insurance Co" /></span>
					
						<span class="property-value" aria-labelledby="insuranceCo-label"><g:fieldValue bean="${insuranceCertInstance}" field="insuranceCo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.purchaseDate}">
				<li class="fieldcontain">
					<span id="purchaseDate-label" class="property-label"><g:message code="insuranceCert.purchaseDate.label" default="Purchase Date" /></span>
					
						<span class="property-value" aria-labelledby="purchaseDate-label"><g:formatDate date="${insuranceCertInstance?.purchaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.expireDate}">
				<li class="fieldcontain">
					<span id="expireDate-label" class="property-label"><g:message code="insuranceCert.expireDate.label" default="Expire Date" /></span>
					
						<span class="property-value" aria-labelledby="expireDate-label"><g:formatDate date="${insuranceCertInstance?.expireDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="insuranceCert.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${insuranceCertInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.couponNumFrom}">
				<li class="fieldcontain">
					<span id="couponNumFrom-label" class="property-label"><g:message code="insuranceCert.couponNumFrom.label" default="Coupon Num From" /></span>
					
						<span class="property-value" aria-labelledby="couponNumFrom-label"><g:fieldValue bean="${insuranceCertInstance}" field="couponNumFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.couponNumTo}">
				<li class="fieldcontain">
					<span id="couponNumTo-label" class="property-label"><g:message code="insuranceCert.couponNumTo.label" default="Coupon Num To" /></span>
					
						<span class="property-value" aria-labelledby="couponNumTo-label"><g:fieldValue bean="${insuranceCertInstance}" field="couponNumTo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.serialNumFrom}">
				<li class="fieldcontain">
					<span id="serialNumFrom-label" class="property-label"><g:message code="insuranceCert.serialNumFrom.label" default="Serial Num From" /></span>
					
						<span class="property-value" aria-labelledby="serialNumFrom-label"><g:fieldValue bean="${insuranceCertInstance}" field="serialNumFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.serialNumTo}">
				<li class="fieldcontain">
					<span id="serialNumTo-label" class="property-label"><g:message code="insuranceCert.serialNumTo.label" default="Serial Num To" /></span>
					
						<span class="property-value" aria-labelledby="serialNumTo-label"><g:fieldValue bean="${insuranceCertInstance}" field="serialNumTo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.totalCount}">
				<li class="fieldcontain">
					<span id="totalCount-label" class="property-label"><g:message code="insuranceCert.totalCount.label" default="Total Count" /></span>
					
						<span class="property-value" aria-labelledby="totalCount-label"><g:fieldValue bean="${insuranceCertInstance}" field="totalCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.remainedCount}">
				<li class="fieldcontain">
					<span id="remainedCount-label" class="property-label"><g:message code="insuranceCert.remainedCount.label" default="Remained Count" /></span>
					
						<span class="property-value" aria-labelledby="remainedCount-label"><g:fieldValue bean="${insuranceCertInstance}" field="remainedCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.assignedInsuranceCert}">
				<li class="fieldcontain">
					<span id="assignedInsuranceCert-label" class="property-label"><g:message code="insuranceCert.assignedInsuranceCert.label" default="Assigned Insurance Cert" /></span>
					
						<g:each in="${insuranceCertInstance.assignedInsuranceCert}" var="a">
						<span class="property-value" aria-labelledby="assignedInsuranceCert-label"><g:link controller="assignedInsuranceCert" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>

				<g:if test="${insuranceCertInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="insuranceCert.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${insuranceCertInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${insuranceCertInstance?.usedInsuranceCert}">
				<li class="fieldcontain">
					<span id="usedInsuranceCert-label" class="property-label"><g:message code="insuranceCert.usedInsuranceCert.label" default="Used Insurance Cert" /></span>
					
						<g:each in="${insuranceCertInstance.usedInsuranceCert}" var="u">
						<span class="property-value" aria-labelledby="usedInsuranceCert-label"><g:link controller="usedInsuranceCert" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${insuranceCertInstance?.id}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
