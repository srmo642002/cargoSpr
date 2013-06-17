<%@ page import="cargo.Driver" %>



<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="driver.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${driverInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'family', 'error')} required">
	<label for="family">
		<g:message code="driver.family.label" default="Family" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="family" required="" value="${driverInstance?.family}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'fatherName', 'error')} required">
	<label for="fatherName">
		<g:message code="driver.fatherName.label" default="Father Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fatherName" required="" value="${driverInstance?.fatherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'idNumber', 'error')} required">
	<label for="idNumber">
		<g:message code="driver.idNumber.label" default="Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idNumber" required="" value="${driverInstance?.idNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="driver.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${driverInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'placeOfBirth', 'error')} required">
	<label for="placeOfBirth">
		<g:message code="driver.placeOfBirth.label" default="Place Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placeOfBirth" required="" value="${driverInstance?.placeOfBirth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'mobile', 'error')} required">
	<label for="mobile">
		<g:message code="driver.mobile.label" default="Mobile" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobile" required="" value="${driverInstance?.mobile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'homeTel', 'error')} required">
	<label for="homeTel">
		<g:message code="driver.homeTel.label" default="Home Tel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homeTel" required="" value="${driverInstance?.homeTel}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="driver.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="1024" required="" value="${driverInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'passportNumber', 'error')} ">
	<label for="passportNumber">
		<g:message code="driver.passportNumber.label" default="Passport Number" />
		
	</label>
	<g:textField name="passportNumber" value="${driverInstance?.passportNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'passportDateOfIssure', 'error')} required">
	<label for="passportDateOfIssure">
		<g:message code="driver.passportDateOfIssure.label" default="Passport Date Of Issure" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="passportDateOfIssure" precision="day"  value="${driverInstance?.passportDateOfIssure}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'passportValidity', 'error')} required">
	<label for="passportValidity">
		<g:message code="driver.passportValidity.label" default="Passport Validity" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="passportValidity" precision="day"  value="${driverInstance?.passportValidity}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'exitPermissionNumber', 'error')} ">
	<label for="exitPermissionNumber">
		<g:message code="driver.exitPermissionNumber.label" default="Exit Permission Number" />
		
	</label>
	<g:textField name="exitPermissionNumber" value="${driverInstance?.exitPermissionNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'exitPermissionDateOfIssue', 'error')} required">
	<label for="exitPermissionDateOfIssue">
		<g:message code="driver.exitPermissionDateOfIssue.label" default="Exit Permission Date Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="exitPermissionDateOfIssue" precision="day"  value="${driverInstance?.exitPermissionDateOfIssue}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: driverInstance, field: 'exitPermissionValidity', 'error')} required">
	<label for="exitPermissionValidity">
		<g:message code="driver.exitPermissionValidity.label" default="Exit Permission Validity" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="exitPermissionValidity" precision="day"  value="${driverInstance?.exitPermissionValidity}"  />
</div>

