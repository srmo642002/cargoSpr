<%@ page import="cargo.insuranceCertificate.UsedInsuranceCert" %>



<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'assignedInsuranceCert', 'error')} required">
	<label for="assignedInsuranceCert">
		<g:message code="usedInsuranceCert.assignedInsuranceCert.label" default="Assigned Insurance Cert" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assignedInsuranceCert" name="assignedInsuranceCert.id" from="${cargo.insuranceCertificate.AssignedInsuranceCert.list()}" optionKey="id" required="" value="${usedInsuranceCertInstance?.assignedInsuranceCert?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'insuranceCert', 'error')} required">
	<label for="insuranceCert">
		<g:message code="usedInsuranceCert.insuranceCert.label" default="Insurance Cert" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insuranceCert" name="insuranceCert.id" from="${cargo.insuranceCertificate.InsuranceCert.list()}" optionKey="id" required="" value="${usedInsuranceCertInstance?.insuranceCert?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'usedDate', 'error')} required">
	<label for="usedDate">
		<g:message code="usedInsuranceCert.usedDate.label" default="Used Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="usedDate" precision="day"  value="${usedInsuranceCertInstance?.usedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="usedInsuranceCert.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${usedInsuranceCertInstance?.shipment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'transitFrom', 'error')} required">
	<label for="transitFrom">
		<g:message code="usedInsuranceCert.transitFrom.label" default="Transit From" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="transitFrom" name="transitFrom.id" from="${cargo.City.list()}" optionKey="id" required="" value="${usedInsuranceCertInstance?.transitFrom?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'transitTo', 'error')} required">
	<label for="transitTo">
		<g:message code="usedInsuranceCert.transitTo.label" default="Transit To" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="transitTo" name="transitTo.id" from="${cargo.City.list()}" optionKey="id" required="" value="${usedInsuranceCertInstance?.transitTo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'coupons', 'error')} ">
	<label for="coupons">
		<g:message code="usedInsuranceCert.coupons.label" default="Coupons" />
		
	</label>
	<g:select name="coupons" from="${cargo.insuranceCertificate.CouponContainer.list()}" multiple="multiple" optionKey="id" size="5" value="${usedInsuranceCertInstance?.coupons*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'total', 'error')} ">
	<label for="total">
		<g:message code="usedInsuranceCert.total.label" default="Total" />
		
	</label>
	<g:field type="number" name="total" value="${usedInsuranceCertInstance.total}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'totalCost', 'error')} ">
	<label for="totalCost">
		<g:message code="usedInsuranceCert.totalCost.label" default="Total Cost" />
		
	</label>
	<g:field type="number" name="totalCost" step="any" value="${usedInsuranceCertInstance.totalCost}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usedInsuranceCertInstance, field: 'customsOperations', 'error')} required">
	<label for="customsOperations">
		<g:message code="usedInsuranceCert.customsOperations.label" default="Customs Operations" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customsOperations" name="customsOperations.id" from="${cargo.insuranceCertificate.CustomsOperations.list()}" optionKey="id" required="" value="${usedInsuranceCertInstance?.customsOperations?.id}" class="many-to-one"/>
</div>

