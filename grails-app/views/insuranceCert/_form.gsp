<%@ page import="cargo.insuranceCertificate.InsuranceCert" %>



<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'insuranceCo', 'error')} ">
	<label for="insuranceCo">
		<g:message code="insuranceCert.insuranceCo.label" default="Insurance Co" />
		
	</label>
	<g:textField name="insuranceCo" value="${insuranceCertInstance?.insuranceCo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'purchaseDate', 'error')} required">
	<label for="purchaseDate">
		<g:message code="insuranceCert.purchaseDate.label" default="Purchase Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="purchaseDate" precision="day"  value="${insuranceCertInstance?.purchaseDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'expireDate', 'error')} required">
	<label for="expireDate">
		<g:message code="insuranceCert.expireDate.label" default="Expire Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expireDate" precision="day"  value="${insuranceCertInstance?.expireDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="insuranceCert.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${insuranceCertInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'couponNumFrom', 'error')} required">
	<label for="couponNumFrom">
		<g:message code="insuranceCert.couponNumFrom.label" default="Coupon Num From" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="couponNumFrom" required="" value="${insuranceCertInstance.couponNumFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'couponNumTo', 'error')} required">
	<label for="couponNumTo">
		<g:message code="insuranceCert.couponNumTo.label" default="Coupon Num To" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="couponNumTo" required="" value="${insuranceCertInstance.couponNumTo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'serialNumFrom', 'error')} required">
	<label for="serialNumFrom">
		<g:message code="insuranceCert.serialNumFrom.label" default="Serial Num From" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="serialNumFrom" required="" value="${insuranceCertInstance.serialNumFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'serialNumTo', 'error')} required">
	<label for="serialNumTo">
		<g:message code="insuranceCert.serialNumTo.label" default="Serial Num To" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="serialNumTo" required="" value="${insuranceCertInstance.serialNumTo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'totalCount', 'error')} required">
	<label for="totalCount">
		<g:message code="insuranceCert.totalCount.label" default="Total Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalCount" required="" value="${insuranceCertInstance.totalCount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'remainedCount', 'error')} ">
	<label for="remainedCount">
		<g:message code="insuranceCert.remainedCount.label" default="Remained Count" />
		
	</label>
	<g:field type="number" name="remainedCount" value="${insuranceCertInstance.remainedCount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'assignedInsuranceCert', 'error')} ">
	<label for="assignedInsuranceCert">
		<g:message code="insuranceCert.assignedInsuranceCert.label" default="Assigned Insurance Cert" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${insuranceCertInstance?.assignedInsuranceCert?}" var="a">
    <li><g:link controller="assignedInsuranceCert" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="assignedInsuranceCert" action="create" params="['insuranceCert.id': insuranceCertInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'assignedInsuranceCert.label', default: 'AssignedInsuranceCert')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="insuranceCert.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${insuranceCertInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'usedInsuranceCert', 'error')} ">
	<label for="usedInsuranceCert">
		<g:message code="insuranceCert.usedInsuranceCert.label" default="Used Insurance Cert" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${insuranceCertInstance?.usedInsuranceCert?}" var="u">
    <li><g:link controller="usedInsuranceCert" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usedInsuranceCert" action="create" params="['insuranceCert.id': insuranceCertInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usedInsuranceCert.label', default: 'UsedInsuranceCert')])}</g:link>
</li>
</ul>

</div>

