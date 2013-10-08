<%@ page import="cargo.cargoItem.CargoItem" %>



<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'item', 'error')} ">
	<label for="item">
		<g:message code="cargoItem.item.label" default="Item" />
		
	</label>
	<g:textField name="item" value="${cargoItemInstance?.item}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'nonContainerized', 'error')} ">
	<label for="nonContainerized">
		<g:message code="cargoItem.nonContainerized.label" default="Non Containerized" />
		
	</label>
	<g:checkBox name="nonContainerized" value="${cargoItemInstance?.nonContainerized}" />
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'containerized', 'error')} ">
	<label for="containerized">
		<g:message code="cargoItem.containerized.label" default="Containerized" />
		
	</label>
	<g:checkBox name="containerized" value="${cargoItemInstance?.containerized}" />
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'containerNo', 'error')} ">
	<label for="containerNo">
		<g:message code="cargoItem.containerNo.label" default="Container No" />
		
	</label>
	<g:textField name="containerNo" value="${cargoItemInstance?.containerNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'size', 'error')} ">
	<label for="size">
		<g:message code="cargoItem.size.label" default="Size" />
		
	</label>
	<g:select name="size" from="${cargoItemInstance.constraints.size.inList}" value="${cargoItemInstance?.size}" valueMessagePrefix="cargoItem.size" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="cargoItem.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${cargoItemInstance.constraints.type.inList}" value="${cargoItemInstance?.type}" valueMessagePrefix="cargoItem.type" noSelection="['': '']"/>
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

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'volume', 'error')} ">
	<label for="volume">
		<g:message code="cargoItem.volume.label" default="Volume" />
		
	</label>
	<g:field type="number" name="volume" step="any" value="${cargoItemInstance.volume}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cargoItemInstance, field: 'dg', 'error')} ">
	<label for="dg">
		<g:message code="cargoItem.dg.label" default="Dg" />
		
	</label>
	<g:checkBox name="dg" value="${cargoItemInstance?.dg}" />
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

