<%@ page import="cargo.cargoItem.OceanCargoItem" %>



<div class="fieldcontain ${hasErrors(bean: oceanCargoItemInstance, field: 'loadingDate', 'error')} required">
	<label for="loadingDate">
		<g:message code="oceanCargoItem.loadingDate.label" default="Loading Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="loadingDate" precision="day"  value="${oceanCargoItemInstance?.loadingDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: oceanCargoItemInstance, field: 'etaDate', 'error')} required">
	<label for="etaDate">
		<g:message code="oceanCargoItem.etaDate.label" default="Eta Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="etaDate" precision="day"  value="${oceanCargoItemInstance?.etaDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: oceanCargoItemInstance, field: 'arrivalDate', 'error')} required">
	<label for="arrivalDate">
		<g:message code="oceanCargoItem.arrivalDate.label" default="Arrival Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="arrivalDate" precision="day"  value="${oceanCargoItemInstance?.arrivalDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: oceanCargoItemInstance, field: 'deliveryOrderDate', 'error')} required">
	<label for="deliveryOrderDate">
		<g:message code="oceanCargoItem.deliveryOrderDate.label" default="Delivery Order Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="deliveryOrderDate" precision="day"  value="${oceanCargoItemInstance?.deliveryOrderDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: oceanCargoItemInstance, field: 'cargoItem', 'error')} required">
	<label for="cargoItem">
		<g:message code="oceanCargoItem.cargoItem.label" default="Cargo Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cargoItem" name="cargoItem.id" from="${cargo.cargoItem.CargoItem.list()}" optionKey="id" required="" value="${oceanCargoItemInstance?.cargoItem?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanCargoItemInstance, field: 'oceanFreight', 'error')} required">
	<label for="oceanFreight">
		<g:message code="oceanCargoItem.oceanFreight.label" default="Ocean Freight" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="oceanFreight" name="oceanFreight.id" from="${cargo.freight.OceanFreight.list()}" optionKey="id" required="" value="${oceanCargoItemInstance?.oceanFreight?.id}" class="many-to-one"/>
</div>

