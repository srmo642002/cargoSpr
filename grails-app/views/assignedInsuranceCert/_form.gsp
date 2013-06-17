<%@ page import="cargo.insuranceCertificate.AssignedInsuranceCert" %>



<div class="fieldcontain ${hasErrors(bean: assignedInsuranceCertInstance, field: 'agent', 'error')} required">
	<label for="agent">
		<g:message code="assignedInsuranceCert.agent.label" default="Agent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="agent" name="agent.id" from="${cargo.LocalAgent.list()}" optionKey="id" required="" value="${assignedInsuranceCertInstance?.agent?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: assignedInsuranceCertInstance, field: 'sendingDate', 'error')} required">
	<label for="sendingDate">
		<g:message code="assignedInsuranceCert.sendingDate.label" default="Sending Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="sendingDate" precision="day"  value="${assignedInsuranceCertInstance?.sendingDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: assignedInsuranceCertInstance, field: 'serialNumFrom', 'error')} required">
	<label for="serialNumFrom">
		<g:message code="assignedInsuranceCert.serialNumFrom.label" default="Serial Num From" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="serialNumFrom" required="" value="${assignedInsuranceCertInstance.serialNumFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: assignedInsuranceCertInstance, field: 'serialNumTo', 'error')} required">
	<label for="serialNumTo">
		<g:message code="assignedInsuranceCert.serialNumTo.label" default="Serial Num To" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="serialNumTo" required="" value="${assignedInsuranceCertInstance.serialNumTo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: assignedInsuranceCertInstance, field: 'totalCount', 'error')} required">
	<label for="totalCount">
		<g:message code="assignedInsuranceCert.totalCount.label" default="Total Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalCount" required="" value="${assignedInsuranceCertInstance.totalCount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: assignedInsuranceCertInstance, field: 'insuranceCert', 'error')} required">
	<label for="insuranceCert">
		<g:message code="assignedInsuranceCert.insuranceCert.label" default="Insurance Cert" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insuranceCert" name="insuranceCert.id" from="${cargo.insuranceCertificate.InsuranceCert.list()}" optionKey="id" required="" value="${assignedInsuranceCertInstance?.insuranceCert?.id}" class="many-to-one"/>
</div>

