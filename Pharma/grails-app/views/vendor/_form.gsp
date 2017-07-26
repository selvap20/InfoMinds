<%@ page import="com.infominds.admin.Vendor" %>



<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'cstNo', 'error')} required">
	<label for="cstNo">
		<g:message code="vendor.cstNo.label" default="Cst No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cstNo" required="" value="${vendorInstance?.cstNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="vendor.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${vendorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'fax', 'error')} required">
	<label for="fax">
		<g:message code="vendor.fax.label" default="Fax" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fax" required="" value="${vendorInstance?.fax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'phoneNo1', 'error')} required">
	<label for="phoneNo1">
		<g:message code="vendor.phoneNo1.label" default="Phone No1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNo1" required="" value="${vendorInstance?.phoneNo1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'phoneNo2', 'error')} required">
	<label for="phoneNo2">
		<g:message code="vendor.phoneNo2.label" default="Phone No2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNo2" required="" value="${vendorInstance?.phoneNo2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'tinNo', 'error')} required">
	<label for="tinNo">
		<g:message code="vendor.tinNo.label" default="Tin No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tinNo" required="" value="${vendorInstance?.tinNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'vendorAddress', 'error')} required">
	<label for="vendorAddress">
		<g:message code="vendor.vendorAddress.label" default="Vendor Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="vendorAddress" required="" value="${vendorInstance?.vendorAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'vendorName', 'error')} required">
	<label for="vendorName">
		<g:message code="vendor.vendorName.label" default="Vendor Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="vendorName" required="" value="${vendorInstance?.vendorName}"/>

</div>

