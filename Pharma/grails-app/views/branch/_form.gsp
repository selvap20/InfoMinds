<%@ page import="com.infominds.admin.Branch" %>



<div class="fieldcontain ${hasErrors(bean: branchInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="branch.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${branchInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: branchInstance, field: 'branchName', 'error')} required">
	<label for="branchName">
		<g:message code="branch.branchName.label" default="Branch Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="branchName" required="" value="${branchInstance?.branchName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: branchInstance, field: 'mobile', 'error')} required">
	<label for="mobile">
		<g:message code="branch.mobile.label" default="Mobile" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobile" required="" value="${branchInstance?.mobile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: branchInstance, field: 'phoneNo1', 'error')} required">
	<label for="phoneNo1">
		<g:message code="branch.phoneNo1.label" default="Phone No1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNo1" required="" value="${branchInstance?.phoneNo1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: branchInstance, field: 'phoneNo2', 'error')} required">
	<label for="phoneNo2">
		<g:message code="branch.phoneNo2.label" default="Phone No2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNo2" required="" value="${branchInstance?.phoneNo2}"/>

</div>

