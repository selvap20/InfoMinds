
<%@ page import="com.infominds.item.ItemType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemType.label', default: 'ItemType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-itemType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-itemType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
					<g:sortableColumn property="itemTypeName" title="${message(code: 'itemType.itemTypeName.label', default: 'Item Type Name')}" />
					
					<g:sortableColumn property="itemTypeDesc" title="${message(code: 'itemType.itemTypeDesc.label', default: 'Item Type Desc')}" />
						
					<g:sortableColumn property="itemComments" title="${message(code: 'itemType.itemComments.label', default: 'Item Comments')}" />
					
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${itemTypeInstanceList}" status="i" var="itemTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					    <td>${fieldValue(bean: itemTypeInstance, field: "itemTypeName")}</td>
					    
					    <td>${fieldValue(bean: itemTypeInstance, field: "itemTypeDesc")}</td>
					
						<td><g:link action="show" id="${itemTypeInstance.id}">${fieldValue(bean: itemTypeInstance, field: "itemComments")}</g:link></td>
					
						
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemTypeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
