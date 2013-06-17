<%@ page import="cargo.ForwardingReference" %>



<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="forwardingReference.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="50" required="" value="${forwardingReferenceInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="forwardingReference.address.label" default="Address" />
		
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="512" value="${forwardingReferenceInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'telephone', 'error')} ">
	<label for="telephone">
		<g:message code="forwardingReference.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" maxlength="12" value="${forwardingReferenceInstance?.telephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="forwardingReference.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" maxlength="12" value="${forwardingReferenceInstance?.fax}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'webSite', 'error')} ">
	<label for="webSite">
		<g:message code="forwardingReference.webSite.label" default="Web Site" />
		
	</label>
	<g:textField name="webSite" maxlength="50" value="${forwardingReferenceInstance?.webSite}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'contactPerson', 'error')} ">
	<label for="contactPerson">
		<g:message code="forwardingReference.contactPerson.label" default="Contact Person" />
		
	</label>
	<g:textField name="contactPerson" maxlength="50" value="${forwardingReferenceInstance?.contactPerson}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'asAShipper', 'error')} ">
	<label for="asAShipper">
		<g:message code="forwardingReference.asAShipper.label" default="As AS hipper" />
		
	</label>
	<g:checkBox name="asAShipper" value="${forwardingReferenceInstance?.asAShipper}" />
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'asAConsignee', 'error')} ">
	<label for="asAConsignee">
		<g:message code="forwardingReference.asAConsignee.label" default="As AC onsignee" />
		
	</label>
	<g:checkBox name="asAConsignee" value="${forwardingReferenceInstance?.asAConsignee}" />
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'asANotifyParty', 'error')} ">
	<label for="asANotifyParty">
		<g:message code="forwardingReference.asANotifyParty.label" default="As AN otify Party" />
		
	</label>
	<g:checkBox name="asANotifyParty" value="${forwardingReferenceInstance?.asANotifyParty}" />
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'asAnAgent', 'error')} ">
	<label for="asAnAgent">
		<g:message code="forwardingReference.asAnAgent.label" default="As An Agent" />
		
	</label>
	<g:checkBox name="asAnAgent" value="${forwardingReferenceInstance?.asAnAgent}" />
</div>

<div class="fieldcontain ${hasErrors(bean: forwardingReferenceInstance, field: 'asACarrier', 'error')} ">
	<label for="asACarrier">
		<g:message code="forwardingReference.asACarrier.label" default="As AC arrier" />
		
	</label>
	<g:checkBox name="asACarrier" value="${forwardingReferenceInstance?.asACarrier}" />
</div>

