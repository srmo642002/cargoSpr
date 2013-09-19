<%@ page import="cargo.insuranceCertificate.CustomsOperations" %>



<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'transitType', 'error')} ">
	<label for="transitType">
		<g:message code="customsOperations.transitType.label" default="Transit Type" />
		
	</label>
	<g:select name="transitType" from="${customsOperationsInstance.constraints.transitType.inList}" value="${customsOperationsInstance?.transitType}" valueMessagePrefix="customsOperations.transitType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'customsDate', 'error')} required">
	<label for="customsDate">
		<g:message code="customsOperations.customsDate.label" default="Customs Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="customsDate" precision="day"  value="${customsOperationsInstance?.customsDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="customsOperations.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${customsOperationsInstance?.shipment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'transitMode', 'error')} ">
	<label for="transitMode">
		<g:message code="customsOperations.transitMode.label" default="Transit Mode" />
		
	</label>
	<g:select name="transitMode" from="${customsOperationsInstance.constraints.transitMode.inList}" value="${customsOperationsInstance?.transitMode}" valueMessagePrefix="customsOperations.transitMode" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'permitsNum', 'error')} required">
	<label for="permitsNum">
		<g:message code="customsOperations.permitsNum.label" default="Permits Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="permitsNum" required="" value="${customsOperationsInstance.permitsNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'kutazhNum', 'error')} required">
	<label for="kutazhNum">
		<g:message code="customsOperations.kutazhNum.label" default="Kutazh Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="kutazhNum" required="" value="${customsOperationsInstance.kutazhNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'rowNum', 'error')} required">
	<label for="rowNum">
		<g:message code="customsOperations.rowNum.label" default="Row Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rowNum" required="" value="${customsOperationsInstance.rowNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'origin', 'error')} required">
	<label for="origin">
		<g:message code="customsOperations.origin.label" default="Origin" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="origin" name="origin.id" from="${cargo.City.list()}" optionKey="id" required="" value="${customsOperationsInstance?.origin?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'destination', 'error')} required">
	<label for="destination">
		<g:message code="customsOperations.destination.label" default="Destination" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destination" name="destination.id" from="${cargo.City.list()}" optionKey="id" required="" value="${customsOperationsInstance?.destination?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="customsOperations.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="weight" step="any" required="" value="${customsOperationsInstance.weight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'tariff', 'error')} required">
	<label for="tariff">
		<g:message code="customsOperations.tariff.label" default="Tariff" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tariff" step="any" required="" value="${customsOperationsInstance.tariff}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'commodity', 'error')} ">
	<label for="commodity">
		<g:message code="customsOperations.commodity.label" default="Commodity" />
		
	</label>
	<g:textField name="commodity" value="${customsOperationsInstance?.commodity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'oneSheetInsurance', 'error')} ">
	<label for="oneSheetInsurance">
		<g:message code="customsOperations.oneSheetInsurance.label" default="One Sheet Insurance" />
		
	</label>
	<g:checkBox name="oneSheetInsurance" value="${customsOperationsInstance?.oneSheetInsurance}" />
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'multiSheetInsurance', 'error')} ">
	<label for="multiSheetInsurance">
		<g:message code="customsOperations.multiSheetInsurance.label" default="Multi Sheet Insurance" />
		
	</label>
	<g:checkBox name="multiSheetInsurance" value="${customsOperationsInstance?.multiSheetInsurance}" />
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'receipt', 'error')} ">
	<label for="receipt">
		<g:message code="customsOperations.receipt.label" default="Receipt" />
		
	</label>
	<g:checkBox name="receipt" value="${customsOperationsInstance?.receipt}" />
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'receiptDate', 'error')} ">
	<label for="receiptDate">
		<g:message code="customsOperations.receiptDate.label" default="Receipt Date" />
		
	</label>
	<g:datePicker name="receiptDate" precision="day"  value="${customsOperationsInstance?.receiptDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'receiptNum', 'error')} ">
	<label for="receiptNum">
		<g:message code="customsOperations.receiptNum.label" default="Receipt Num" />
		
	</label>
	<g:field type="number" name="receiptNum" value="${customsOperationsInstance.receiptNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'insuranceCert', 'error')} required">
	<label for="insuranceCert">
		<g:message code="customsOperations.insuranceCert.label" default="Insurance Cert" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insuranceCert" name="insuranceCert.id" from="${cargo.insuranceCertificate.InsuranceCert.list()}" optionKey="id" required="" value="${customsOperationsInstance?.insuranceCert?.id}" class="many-to-one"/>
</div>

