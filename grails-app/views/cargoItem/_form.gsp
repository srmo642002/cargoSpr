<%@ page import="cargo.cargoItem.CargoItem" %>



<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'noOfPackage', 'error')} required">
	<label for="noOfPackage">
		<g:message code="cargoItem.noOfPackage.label" default="No Of Package" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="noOfPackage" required="" value="${cargoItemInstance.noOfPackage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'kindOfPackage', 'error')} ">
	<label for="kindOfPackage">
		<g:message code="cargoItem.kindOfPackage.label" default="Kind Of Package" />
		
	</label>
	<g:textField name="kindOfPackage" value="${cargoItemInstance?.kindOfPackage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'commodity', 'error')} ">
	<label for="commodity">
		<g:message code="cargoItem.commodity.label" default="Commodity" />
		
	</label>
	<g:textField name="commodity" value="${cargoItemInstance?.commodity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'grossWeight', 'error')} required">
	<label for="grossWeight">
		<g:message code="cargoItem.grossWeight.label" default="Gross Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="grossWeight" step="any" required="" value="${cargoItemInstance.grossWeight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'unitOfMeasure', 'error')} ">
	<label for="unitOfMeasure">
		<g:message code="cargoItem.unitOfMeasure.label" default="Unit Of Measure" />
		
	</label>
	<g:textField name="unitOfMeasure" value="${cargoItemInstance?.unitOfMeasure}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'rateOrCharge', 'error')} required">
	<label for="rateOrCharge">
		<g:message code="cargoItem.rateOrCharge.label" default="Rate Or Charge" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rateOrCharge" step="any" required="" value="${cargoItemInstance.rateOrCharge}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'chargeableWeight', 'error')} required">
	<label for="chargeableWeight">
		<g:message code="cargoItem.chargeableWeight.label" default="Chargeable Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="chargeableWeight" step="any" required="" value="${cargoItemInstance.chargeableWeight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'width', 'error')} required">
	<label for="width">
		<g:message code="cargoItem.width.label" default="Width" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="width" step="any" required="" value="${cargoItemInstance.width}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'length', 'error')} required">
	<label for="length">
		<g:message code="cargoItem.length.label" default="Length" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="length" step="any" required="" value="${cargoItemInstance.length}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="cargoItem.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="height" step="any" required="" value="${cargoItemInstance.height}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'volume', 'error')} ">
	<label for="volume">
		<g:message code="cargoItem.volume.label" default="Volume" />
		
	</label>
	<g:textField name="volume" value="${cargoItemInstance?.volume}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'chargeableRate', 'error')} required">
	<label for="chargeableRate">
		<g:message code="cargoItem.chargeableRate.label" default="Chargeable Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="chargeableRate" step="any" required="" value="${cargoItemInstance.chargeableRate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'totalWeight', 'error')} required">
	<label for="totalWeight">
		<g:message code="cargoItem.totalWeight.label" default="Total Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalWeight" step="any" required="" value="${cargoItemInstance.totalWeight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'totalVolume', 'error')} required">
	<label for="totalVolume">
		<g:message code="cargoItem.totalVolume.label" default="Total Volume" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalVolume" step="any" required="" value="${cargoItemInstance.totalVolume}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="cargoItem.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${cargoItemInstance?.shipment?.id}" class="many-to-one"/>
</div>

