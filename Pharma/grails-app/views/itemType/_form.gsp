<%@ page import="com.infominds.item.ItemType" %>



<div class="fieldcontain ${hasErrors(bean: itemTypeInstance, field: 'itemComments', 'error')} required">
	<label for="itemComments">
		<g:message code="itemType.itemComments.label" default="Item Comments" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemComments" required="" value="${itemTypeInstance?.itemComments}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemTypeInstance, field: 'itemTypeDesc', 'error')} required">
	<label for="itemTypeDesc">
		<g:message code="itemType.itemTypeDesc.label" default="Item Type Desc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemTypeDesc" required="" value="${itemTypeInstance?.itemTypeDesc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemTypeInstance, field: 'itemTypeName', 'error')} required">
	<label for="itemTypeName">
		<g:message code="itemType.itemTypeName.label" default="Item Type Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemTypeName" required="" value="${itemTypeInstance?.itemTypeName}"/>

</div>

