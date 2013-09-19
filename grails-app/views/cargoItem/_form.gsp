<%@ page import="cargo.cargoItem.CargoItem" %>



<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'item', 'error')} ">
	<label for="item">
		<g:message code="cargoItem.item.label" default="Item" />
		
	</label>
	<g:textField name="item" value="${cargoItemInstance?.item}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'commodity', 'error')} ">
	<label for="commodity">
		<g:message code="cargoItem.commodity.label" default="Commodity" />
		
	</label>
	<g:textField name="commodity" value="${cargoItemInstance?.commodity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'typeOfPackage', 'error')} ">
	<label for="typeOfPackage">
		<g:message code="cargoItem.typeOfPackage.label" default="Type Of Package" />
		
	</label>
	<g:textField name="typeOfPackage" value="${cargoItemInstance?.typeOfPackage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'noOfPackage', 'error')} required">
	<label for="noOfPackage">
		<g:message code="cargoItem.noOfPackage.label" default="No Of Package" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="noOfPackage" required="" value="${cargoItemInstance.noOfPackage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'unitOfMeasure', 'error')} ">
	<label for="unitOfMeasure">
		<g:message code="cargoItem.unitOfMeasure.label" default="Unit Of Measure" />
		
	</label>
	<g:select name="unitOfMeasure" from="${cargoItemInstance.constraints.unitOfMeasure.inList}" value="${cargoItemInstance?.unitOfMeasure}" valueMessagePrefix="cargoItem.unitOfMeasure" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'grade', 'error')} ">
	<label for="grade">
		<g:message code="cargoItem.grade.label" default="Grade" />
		
	</label>
	<g:textField name="grade" value="${cargoItemInstance?.grade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'grossWeight', 'error')} required">
	<label for="grossWeight">
		<g:message code="cargoItem.grossWeight.label" default="Gross Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="grossWeight" step="any" required="" value="${cargoItemInstance.grossWeight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'totalWeight', 'error')} required">
	<label for="totalWeight">
		<g:message code="cargoItem.totalWeight.label" default="Total Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="totalWeight" step="any" required="" value="${cargoItemInstance.totalWeight}"/>
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

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'width', 'error')} ">
	<label for="width">
		<g:message code="cargoItem.width.label" default="Width" />
		
	</label>
	<g:field type="number" name="width" step="any" value="${cargoItemInstance.width}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'length', 'error')} ">
	<label for="length">
		<g:message code="cargoItem.length.label" default="Length" />
		
	</label>
	<g:field type="number" name="length" step="any" value="${cargoItemInstance.length}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'height', 'error')} ">
	<label for="height">
		<g:message code="cargoItem.height.label" default="Height" />
		
	</label>
	<g:field type="number" name="height" step="any" value="${cargoItemInstance.height}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'volume', 'error')} ">
	<label for="volume">
		<g:message code="cargoItem.volume.label" default="Volume" />
		
	</label>
	<g:field type="number" name="volume" step="any" value="${cargoItemInstance.volume}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'totalVolume', 'error')} ">
	<label for="totalVolume">
		<g:message code="cargoItem.totalVolume.label" default="Total Volume" />
		
	</label>
	<g:field type="number" name="totalVolume" step="any" value="${cargoItemInstance.totalVolume}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'chargeableRate', 'error')} ">
	<label for="chargeableRate">
		<g:message code="cargoItem.chargeableRate.label" default="Chargeable Rate" />
		
	</label>
	<g:field type="number" name="chargeableRate" step="any" value="${cargoItemInstance.chargeableRate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="cargoItem.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${cargoItemInstance?.shipment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="cargoItem.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cargo.User.list()}" optionKey="id" required="" value="${cargoItemInstance?.user?.id}" class="many-to-one"/>
</div>

