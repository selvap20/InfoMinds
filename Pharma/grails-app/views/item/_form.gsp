<%@ page import="com.infominds.item.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemComments', 'error')} required">
	<label for="itemComments">
		<g:message code="item.itemComments.label" default="Item Comments" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemComments" required="" value="${itemInstance?.itemComments}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemDesc', 'error')} required">
	<label for="itemDesc">
		<g:message code="item.itemDesc.label" default="Item Desc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemDesc" required="" value="${itemInstance?.itemDesc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemName', 'error')} required">
	<label for="itemName">
		<g:message code="item.itemName.label" default="Item Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="itemName" required="" value="${itemInstance?.itemName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'itemType', 'error')} required">
	<label for="itemType">
		<g:message code="item.itemType.label" default="Item Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="itemType" name="itemType.id" from="${com.infominds.item.ItemType.list()}" optionKey="id" optionValue="itemTypeName" required="" value="${itemInstance?.itemType?.id}" class="many-to-one"/>

</div>

