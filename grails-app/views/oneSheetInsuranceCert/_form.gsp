<%@ page import="cargo.insuranceCertificate.OneSheetInsuranceCert" %>



<div class="fieldcontain ${hasErrors(bean: oneSheetInsuranceCertInstance, field: 'agent', 'error')} required">
	<label for="agent">
		<g:message code="oneSheetInsuranceCert.agent.label" default="Agent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="agent" name="agent.id" from="${cargo.LocalAgent.list()}" optionKey="id" required="" value="${oneSheetInsuranceCertInstance?.agent?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oneSheetInsuranceCertInstance, field: 'insuranceNum', 'error')} required">
	<label for="insuranceNum">
		<g:message code="oneSheetInsuranceCert.insuranceNum.label" default="Insurance Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="insuranceNum" required="" value="${oneSheetInsuranceCertInstance.insuranceNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oneSheetInsuranceCertInstance, field: 'issueDate', 'error')} required">
	<label for="issueDate">
		<g:message code="oneSheetInsuranceCert.issueDate.label" default="Issue Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="issueDate" precision="day"  value="${oneSheetInsuranceCertInstance?.issueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: oneSheetInsuranceCertInstance, field: 'transitFrom', 'error')} required">
	<label for="transitFrom">
		<g:message code="oneSheetInsuranceCert.transitFrom.label" default="Transit From" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="transitFrom" name="transitFrom.id" from="${cargo.City.list()}" optionKey="id" required="" value="${oneSheetInsuranceCertInstance?.transitFrom?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oneSheetInsuranceCertInstance, field: 'transitTo', 'error')} required">
	<label for="transitTo">
		<g:message code="oneSheetInsuranceCert.transitTo.label" default="Transit To" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="transitTo" name="transitTo.id" from="${cargo.City.list()}" optionKey="id" required="" value="${oneSheetInsuranceCertInstance?.transitTo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oneSheetInsuranceCertInstance, field: 'totalCost', 'error')} required">
	<label for="totalCost">
		<g:message code="oneSheetInsuranceCert.totalCost.label" default="Total Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalCost" step="any" required="" value="${oneSheetInsuranceCertInstance.totalCost}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oneSheetInsuranceCertInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="oneSheetInsuranceCert.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${oneSheetInsuranceCertInstance?.shipment?.id}" class="many-to-one"/>
</div>

