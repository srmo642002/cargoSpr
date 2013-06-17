<%@ page import="cargo.LocalAgent" %>



<div class="fieldcontain ${hasErrors(bean: localAgentInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="localAgent.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="city" name="city.id" from="${cargo.City.list()}" optionKey="id" required="" value="${localAgentInstance?.city?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: localAgentInstance, field: 'agent', 'error')} required">
	<label for="agent">
		<g:message code="localAgent.agent.label" default="Agent" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="agent" required="" value="${localAgentInstance?.agent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: localAgentInstance, field: 'telephone', 'error')} required">
	<label for="telephone">
		<g:message code="localAgent.telephone.label" default="Telephone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telephone" required="" value="${localAgentInstance?.telephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: localAgentInstance, field: 'fax', 'error')} required">
	<label for="fax">
		<g:message code="localAgent.fax.label" default="Fax" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fax" required="" value="${localAgentInstance?.fax}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: localAgentInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="localAgent.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="1024" required="" value="${localAgentInstance?.address}"/>
</div>

