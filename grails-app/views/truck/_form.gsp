<%@ page import="cargo.Truck" %>



<div class="fieldcontain ${hasErrors(bean: truckInstance, field: 'registrationNo', 'error')} required">
	<label for="registrationNo">
		<g:message code="truck.registrationNo.label" default="Registration No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="registrationNo" required="" value="${truckInstance?.registrationNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: truckInstance, field: 'typeOfVehicle', 'error')} required">
	<label for="typeOfVehicle">
		<g:message code="truck.typeOfVehicle.label" default="Type Of Vehicle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="typeOfVehicle" required="" value="${truckInstance?.typeOfVehicle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: truckInstance, field: 'chassisNo', 'error')} required">
	<label for="chassisNo">
		<g:message code="truck.chassisNo.label" default="Chassis No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="chassisNo" required="" value="${truckInstance?.chassisNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: truckInstance, field: 'trademark', 'error')} required">
	<label for="trademark">
		<g:message code="truck.trademark.label" default="Trademark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="trademark" required="" value="${truckInstance?.trademark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: truckInstance, field: 'trailerNumber', 'error')} ">
	<label for="trailerNumber">
		<g:message code="truck.trailerNumber.label" default="Trailer Number" />
		
	</label>
	<g:textField name="trailerNumber" value="${truckInstance?.trailerNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: truckInstance, field: 'otherParticulars', 'error')} ">
	<label for="otherParticulars">
		<g:message code="truck.otherParticulars.label" default="Other Particulars" />
		
	</label>
	<g:textField name="otherParticulars" maxlength="128" value="${truckInstance?.otherParticulars}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: truckInstance, field: 'carrier', 'error')} required">
	<label for="carrier">
		<g:message code="truck.carrier.label" default="Carrier" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="carrier" name="carrier.id" from="${cargo.ForwardingReference.list()}" optionKey="id" required="" value="${truckInstance?.carrier?.id}" class="many-to-one"/>
</div>

