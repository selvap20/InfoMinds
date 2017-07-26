
<%@ page import="com.infominds.item.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.itemComments}">
				<li class="fieldcontain">
					<span id="itemComments-label" class="property-label"><g:message code="item.itemComments.label" default="Item Comments" /></span>
					
						<span class="property-value" aria-labelledby="itemComments-label"><g:fieldValue bean="${itemInstance}" field="itemComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.itemDesc}">
				<li class="fieldcontain">
					<span id="itemDesc-label" class="property-label"><g:message code="item.itemDesc.label" default="Item Desc" /></span>
					
						<span class="property-value" aria-labelledby="itemDesc-label"><g:fieldValue bean="${itemInstance}" field="itemDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.itemName}">
				<li class="fieldcontain">
					<span id="itemName-label" class="property-label"><g:message code="item.itemName.label" default="Item Name" /></span>
					
						<span class="property-value" aria-labelledby="itemName-label"><g:fieldValue bean="${itemInstance}" field="itemName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.itemType}">
				<li class="fieldcontain">
					<span id="itemType-label" class="property-label"><g:message code="item.itemType.label" default="Item Type" /></span>
					
						<span class="property-value" aria-labelledby="itemType-label"><g:link controller="itemType" action="show" id="${itemInstance?.itemType?.id}">${itemInstance?.itemType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
