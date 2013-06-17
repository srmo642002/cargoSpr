<%@ page import="cargo.cargoItem.RoadCargoItem" %>



<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'truck', 'error')} required">
	<label for="truck">
		<g:message code="roadCargoItem.truck.label" default="Truck" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="truck" name="truck.id" from="${cargo.Truck.list()}" optionKey="id" required="" value="${roadCargoItemInstance?.truck?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'driver', 'error')} required">
	<label for="driver">
		<g:message code="roadCargoItem.driver.label" default="Driver" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="driver" name="driver.id" from="${cargo.Driver.list()}" optionKey="id" required="" value="${roadCargoItemInstance?.driver?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'cntrNo', 'error')} required">
	<label for="cntrNo">
		<g:message code="roadCargoItem.cntrNo.label" default="Cntr No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="cntrNo" step="any" required="" value="${roadCargoItemInstance.cntrNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'loadingDate', 'error')} required">
	<label for="loadingDate">
		<g:message code="roadCargoItem.loadingDate.label" default="Loading Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="loadingDate" precision="day"  value="${roadCargoItemInstance?.loadingDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'etaDate', 'error')} required">
	<label for="etaDate">
		<g:message code="roadCargoItem.etaDate.label" default="Eta Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="etaDate" precision="day"  value="${roadCargoItemInstance?.etaDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'arrivalDate', 'error')} required">
	<label for="arrivalDate">
		<g:message code="roadCargoItem.arrivalDate.label" default="Arrival Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="arrivalDate" precision="day"  value="${roadCargoItemInstance?.arrivalDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'deliveryOrderDate', 'error')} required">
	<label for="deliveryOrderDate">
		<g:message code="roadCargoItem.deliveryOrderDate.label" default="Delivery Order Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="deliveryOrderDate" precision="day"  value="${roadCargoItemInstance?.deliveryOrderDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'cargoItem', 'error')} required">
	<label for="cargoItem">
		<g:message code="roadCargoItem.cargoItem.label" default="Cargo Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cargoItem" name="cargoItem.id" from="${cargo.cargoItem.CargoItem.list()}" optionKey="id" required="" value="${roadCargoItemInstance?.cargoItem?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'roadFreight', 'error')} required">
	<label for="roadFreight">
		<g:message code="roadCargoItem.roadFreight.label" default="Road Freight" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roadFreight" name="roadFreight.id" from="${cargo.freight.RoadFreight.list()}" optionKey="id" required="" value="${roadCargoItemInstance?.roadFreight?.id}" class="many-to-one"/>
</div>

