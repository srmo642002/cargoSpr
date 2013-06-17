<%@ page import="cargo.cargoItem.AirCargoItem" %>



<div class="fieldcontain ${hasErrors(bean: airCargoItemInstance, field: 'aircraft', 'error')} ">
	<label for="aircraft">
		<g:message code="airCargoItem.aircraft.label" default="Aircraft" />
		
	</label>
	<g:textField name="aircraft" value="${airCargoItemInstance?.aircraft}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airCargoItemInstance, field: 'flightNum', 'error')} required">
	<label for="flightNum">
		<g:message code="airCargoItem.flightNum.label" default="Flight Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="flightNum" step="any" required="" value="${airCargoItemInstance.flightNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airCargoItemInstance, field: 'loadingDate', 'error')} required">
	<label for="loadingDate">
		<g:message code="airCargoItem.loadingDate.label" default="Loading Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="loadingDate" precision="day"  value="${airCargoItemInstance?.loadingDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: airCargoItemInstance, field: 'etaDate', 'error')} required">
	<label for="etaDate">
		<g:message code="airCargoItem.etaDate.label" default="Eta Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="etaDate" precision="day"  value="${airCargoItemInstance?.etaDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: airCargoItemInstance, field: 'arrivalDate', 'error')} required">
	<label for="arrivalDate">
		<g:message code="airCargoItem.arrivalDate.label" default="Arrival Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="arrivalDate" precision="day"  value="${airCargoItemInstance?.arrivalDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: airCargoItemInstance, field: 'deliveryOrderDate', 'error')} required">
	<label for="deliveryOrderDate">
		<g:message code="airCargoItem.deliveryOrderDate.label" default="Delivery Order Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="deliveryOrderDate" precision="day"  value="${airCargoItemInstance?.deliveryOrderDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: airCargoItemInstance, field: 'airFreight', 'error')} required">
	<label for="airFreight">
		<g:message code="airCargoItem.airFreight.label" default="Air Freight" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="airFreight" name="airFreight.id" from="${cargo.freight.AirFreight.list()}" optionKey="id" required="" value="${airCargoItemInstance?.airFreight?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airCargoItemInstance, field: 'cargoItem', 'error')} required">
	<label for="cargoItem">
		<g:message code="airCargoItem.cargoItem.label" default="Cargo Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cargoItem" name="cargoItem.id" from="${cargo.cargoItem.CargoItem.list()}" optionKey="id" required="" value="${airCargoItemInstance?.cargoItem?.id}" class="many-to-one"/>
</div>

