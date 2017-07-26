
<%@ page import="com.infominds.item.ItemType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemType.label', default: 'ItemType')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-itemType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-itemType" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list itemType">
			
				
				
				<g:if test="${itemTypeInstance?.itemTypeName}">
				<li class="fieldcontain">
					<span id="itemTypeName-label" class="property-label"><g:message code="itemType.itemTypeName.label" default="Item Type Name" /></span>
					
						<span class="property-value" aria-labelledby="itemTypeName-label"><g:fieldValue bean="${itemTypeInstance}" field="itemTypeName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemTypeInstance?.itemTypeDesc}">
				<li class="fieldcontain">
					<span id="itemTypeDesc-label" class="property-label"><g:message code="itemType.itemTypeDesc.label" default="Item Type Desc" /></span>
					
						<span class="property-value" aria-labelledby="itemTypeDesc-label"><g:fieldValue bean="${itemTypeInstance}" field="itemTypeDesc"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${itemTypeInstance?.itemComments}">
				<li class="fieldcontain">
					<span id="itemComments-label" class="property-label"><g:message code="itemType.itemComments.label" default="Item Comments" /></span>
					
						<span class="property-value" aria-labelledby="itemComments-label"><g:fieldValue bean="${itemTypeInstance}" field="itemComments"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemTypeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemTypeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
